import 'package:flutter/material.dart';
import 'package:pertemuan4/models/profile_model.dart';
import 'package:pertemuan4/pages/edit_profile_page.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final profile = Provider.of<ProfileModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Name: ${profile.name}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
              )
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) =>  EditProfilePage())
                );
              },
              child: const Text("Edit Profile"),
            )
          ],
        )
      )
    );
  }
}