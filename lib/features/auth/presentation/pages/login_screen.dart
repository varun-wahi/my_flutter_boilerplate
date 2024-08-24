import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../config/theme/text_styles.dart';
import '../../../../core/util/constants/color_grid.dart';
import '../../../../core/util/constants/sizes.dart';
import '../../../../core/util/widgets/d_divider.dart';
import '../../../../core/util/widgets/d_elevated_button.dart';
import '../../../../core/util/widgets/d_gap.dart';
import '../../../../core/util/widgets/d_text_field.dart';
import '../../../main screen/presentation/pages/main_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(color: tWhite
                // gradient: RadialGradient(
                //   colors: [Colors.orangeAccent, tOrange],
                //   radius: 0.9,
                //   center: Alignment.center,
                // ),
                ),
          ),
          // Login content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      
                        // Brand name
                        Text(
                          "Enter your phone number",
                          style: boldHeading(size: 32)
                          ),
                      ],
                    ),

                  ],
                ),
                const DGap(gap: dGap * 2),
                const DTextField(
                  fillColor: tBackground,
                  hasBorder: true,
                  
                  icon: Icons.phone,
                  hintText: "Phone number",
                  borderRadius: dBorderRadius,
                ),
                const DGap(gap: dGap * 2),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DDivider(),
                    Text("OR"),
                    DDivider(),

                  ],
                ),
                const DGap(gap: dGap * 2),

                SizedBox(
                  width: double.infinity,
                  child: DElevatedButton(
                    padding: const EdgeInsets.all(dPadding*2),
                    icon: const FaIcon(
                      FontAwesomeIcons.google,
                      size: 20,
                    ),
                    buttonColor: tBlack,
                    textColor: tWhite,
                    onPressed: () {
                      // Navigate to MainApp after login
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MainApp()),
                      );
                    },
                    child: const Text(
                      "Login with Google",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
