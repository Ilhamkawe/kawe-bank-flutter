import 'package:bank_kawe/shared/theme.dart';
import 'package:bank_kawe/views/widgets/custom_filled_button.dart';
import 'package:bank_kawe/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController fullNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        children: [
          Container(
            width: 150,
            height: 50,
            margin: const EdgeInsets.only(top: 100, bottom: 100),
            child: Image.asset("assets/logo/img_logo_light.png"),
          ),
          Text(
            "Join Us to unlock \nYour Growth",
            style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 330,
            height: 410,
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  label: "Full Name",
                  textEditingController: fullNameController,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  label: "Email Address",
                  textEditingController: emailController,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  label: "Password",
                  obscure: true,
                  textEditingController: passwordController,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFilledButton(
                  text: "Continue",
                  onPressed: () {},
                  height: 50,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: double.infinity,
            height: 24,
            child: TextButton(
                style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                onPressed: () {
                  Navigator.pushNamed(context, "/sign_in");
                },
                child: Text(
                  "Sign in",
                  style: darkGreyTextStyle.copyWith(
                      fontWeight: regular, fontSize: 16),
                )),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
