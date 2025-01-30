import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lab8_032/pages/home.dart';
import 'package:lab8_032/pages/mainfoodpage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  // Sign out method
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut(); // Sign out from FirebaseAuth
    await _googleSignIn.signOut(); // Sign out from Google Sign-In
    print("User signed out");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Homepage()), // Redirect to login page after sign-out
    );
  }

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      // Handle the case where the user is not authenticated
      return Scaffold(
        body: Center(
          child: Text("No user is currently signed in."),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: _signOut, // Call the sign-out method when pressed
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(user.photoURL ?? 'https://via.placeholder.com/150'), // Use a placeholder if no photo
              ),
              SizedBox(height: 16),
              Text(
                user.displayName ?? 'No name available', // Display 'No name available' if no name is provided
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                user.email ?? 'No email available', // Display 'No email available' if no email is provided
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 8),
              Text(
                'Last sign-in: ${user.metadata.lastSignInTime?.toLocal().toString() ?? 'N/A'}', // Handle null for last sign-in time
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mainfoodpage()), // Navigate to the food menu
                  );
                },
                child: Text("Go to Food Menu"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
