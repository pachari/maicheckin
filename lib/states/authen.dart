import 'package:flutter/material.dart';
import 'package:maicheckin/utility/app_snackbar.dart';
import 'package:maicheckin/widgets/widget_button.dart';
import 'package:maicheckin/widgets/widget_form.dart';

class Authen extends StatefulWidget {
  const Authen({super.key});

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetForm(
                marginTop: 64,
                hint: 'Email :',
                textEditingController: emailController,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetForm(
                hint: 'Password :',
                textEditingController: passwordController,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                margin: const EdgeInsets.only(top: 16),
                child: WidgetButton(
                  label: 'Login',
                  pressFunc: () {
                    if ((emailController.text.isEmpty) ||
                        (passwordController.text.isEmpty)) {
                      AppSnackBar(
                              title: 'Have Space', massage: 'Please Fill in')
                          .errorSnackBar();
                    } else {}
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
