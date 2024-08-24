import 'package:flutter/material.dart';

import '../../../../core/util/constants/color_grid.dart';
import '../../../../core/util/widgets/d_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile', style: TextStyle(color: tBlack)),
        backgroundColor: tWhite,
        iconTheme: const IconThemeData(color: tBlack), // Back button color
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                            // Stack to overlay pencil icon on rounded image
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/user_dp.jpeg'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: InkWell(
                      onTap: () {
                        //Implement editing new photo here
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: tWhite),
                          shape: BoxShape.circle,
                          color: tBlack,
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: tWhite,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Username Field
              const DTextField(
                fillColor: tGreyLight,
                hintText: 'Enter your username',
                icon: Icons.person,
              ),
              const SizedBox(height: 16),
              // Email Field
              const DTextField(
                fillColor: tGreyLight,
                hintText: 'Enter your email',
                icon: Icons.email,
              ),
              const SizedBox(height: 16),
              // Phone Number Field
              const DTextField(
                fillColor: tGreyLight,
                icon: Icons.phone,
                hintText: 'Enter your phone number',
              ),
              const SizedBox(height: 16),
              const DTextField(
                fillColor: tGreyLight,
                icon: Icons.key,
                hintText: 'New password',
                obscureText: true,
              ),

              const SizedBox(height: 16),
              // Confirm New Password Field
              const DTextField(
                fillColor: tGreyLight,
                icon: Icons.key,
                hintText: 'Confirm new password',
                obscureText: true,
              ),

              const SizedBox(height: 32),
              // Save Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: tWhite,
                  backgroundColor: tBlack,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Handle save action
                },
                child: const Text('Save Changes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
