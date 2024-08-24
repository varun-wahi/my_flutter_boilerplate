import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../config/theme/text_styles.dart';
import '../../../../core/util/constants/color_grid.dart';
import '../../../../core/util/constants/sizes.dart';
import '../../../../core/util/widgets/d_elevated_button.dart';
import '../../../../core/util/widgets/d_gap.dart';
import 'edit_profile_screen.dart';


class MoreOptionsPage extends StatelessWidget {
  const MoreOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: tWhite,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'More Options',
          style: TextStyle(color: tBlack), // Use tBlack for the text color
        ),
        actions: [IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.arrowRightFromBracket, size: 20,))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildUserProfileSection(context),
            const DGap(gap: dGap * 2),

                    
           
            const DGap(gap: dGap*2),
            ListTile(
              leading: const Icon(Icons.local_offer, color: tBlack),
              title: const Text('Offers', style: TextStyle(color: tBlack)),
              subtitle:
                  const Text('Amazing offers for your next trip', style: TextStyle(color: tBlack)),
              trailing: const Icon(Icons.chevron_right, color: tBlack),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.location_on, color: tBlack),
              title: const Text('Change City', style: TextStyle(color: tBlack)),
              subtitle: const Text('Pune', style: TextStyle(color: tBlack)),
              trailing: const Icon(Icons.chevron_right, color: tBlack),
              onTap: () {},
            ),
            const DGap(gap: dGap*2),
            const Text('More', style: TextStyle(color: tBlack, fontWeight: FontWeight.bold)),
            ListTile(
              leading: const Icon(Icons.policy, color: tBlack),
              title: const Text('Policies', style: TextStyle(color: tBlack)),
              trailing: const Icon(Icons.chevron_right, color: tBlack),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.support, color: tBlack),
              title: const Text('Help & Support', style: TextStyle(color: tBlack)),
              trailing: const Icon(Icons.chevron_right, color: tBlack),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.thumb_up, color: tBlack),
              title: const Text('Rate Us', style: TextStyle(color: tBlack)),
              trailing: const Icon(Icons.chevron_right, color: tBlack),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: tBlack),
              title: const Text('Settings', style: TextStyle(color: tBlack)),
              trailing: const Icon(Icons.chevron_right, color: tBlack),
              onTap: () {},
            ),
                        const DGap(gap: dGap*2),

          ],
        ),
      ),
    );
  }

  Widget _buildUserProfileSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage('assets/images/user_dp.jpeg'),
          ),
          const SizedBox(height: dGap),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Varun",
                style: headline(),
              ),
              const DGap(),
              DElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EditProfileScreen()), 
                  );
                },
                buttonColor: tBlack,
                child: Text(
                  'Edit Profile',
                  style: body(color: tWhite),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
