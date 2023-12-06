import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lakshya_app/ui/auth/verify_code.dart';
import 'package:lakshya_app/utils/utils.dart';
import 'package:lakshya_app/widgets/round_button_green.dart';

class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({super.key});

  @override
  State<LoginWithPhone> createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  bool loading = false;
  // ignore: non_constant_identifier_names
  final PhoneNumberController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login With Phone Number'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: PhoneNumberController,
              decoration: const InputDecoration(hintText: '+1 2345 546 456'),
            ),
            const SizedBox(
              height: 80,
            ),
            RoundButtonGreen(
                title: 'Login',
                onTap: () {
                  auth.verifyPhoneNumber(
                      phoneNumber: PhoneNumberController.text,
                      verificationCompleted: (_) {},
                      verificationFailed: (e) {
                        utils().toastMessage(e.toString());
                      },
                      codeSent: (String verificationId, int? token) {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const VerifyCodeScreen(
                        //               verificationId: verificationId,
                        //             )));
                      },
                      codeAutoRetrievalTimeout: (e) {
                        utils().toastMessage(e.toString());
                      });
                })
          ],
        ),
      ),
    );
  }
}
