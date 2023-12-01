import 'package:flutter/material.dart';
import 'package:x_whatsapp/screens/usermodel.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  static User? userModel = User.jackSparrow();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 120,
                  height: 180,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/jack.jpeg'),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    //border: Border.all(width: 2, color: Colors.amber),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userModel!.name.toString(),
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: .05,
                            color: Color.fromARGB(255, 97, 56, 56),
                          ),
                        ),
                        InfoText(
                          data: userModel!.mobile.toString(),
                          iconData: Icons.phone_iphone,
                        ),
                        InfoText(
                          data: userModel!.email.toString(),
                          iconData: Icons.email_rounded,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  final String? data;
  final IconData? iconData;

  const InfoText({super.key, required this.data, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Icon(
              iconData!,
              size: 14,
            ),
          ),
          Text(
            data!,
            style: const TextStyle(
              fontSize: 13,
              letterSpacing: .05,
            ),
          ),
        ],
      ),
    );
  }
}
