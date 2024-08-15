import 'package:flutter/material.dart';
import 'package:pertemuan4/models/profile_model.dart';
import 'package:provider/provider.dart';

class EditProfilePage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  
  EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final profile = Provider.of<ProfileModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: "Enter your new name",
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: (){
                profile.updateName(_controller.text);
                Navigator.pop(context);
              }, 
              child: const Text('Save'),
            )
          ],
        ),
      )
    );
  }
}