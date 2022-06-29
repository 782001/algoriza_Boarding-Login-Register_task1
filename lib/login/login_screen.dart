import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../onbording/onbording_screen.dart';
import '../regester/regester_screen.dart';
import '../shared/components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(image: AssetImage('images/login.png')),
                const Text(
                  'Welcome to Fashion Daily',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Help',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      child: Icon(
                        Icons.question_mark_outlined,
                        color: Colors.white,
                        size: 13,
                      ),
                      backgroundColor: Colors.teal,
                      radius: 13,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.phone,
                  onTap: () {},
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return ' Phone Numper is Not Registered';
                    }
                  },
                  decoration: InputDecoration(
                      prefixIcon: CountryCodePicker(
                        flagWidth: 5,
                        onChanged: print,
                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: 'EG',
                        showFlagMain: false,
                        showFlag: false,
                        // favorite: ['+20', 'EG'],
                        // // optional. Shows only country name and flag
                        // showCountryOnly: false,
                        // // optional. Shows only country name and flag when popup is closed.
                        // showOnlyCountryWhenClosed: false,
                        // // optional. aligns the flag and the Text left
                        alignLeft: false,
                      ),
                      labelText: 'Your Phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                BigButton(context, text: 'Sign In', widget: BordingScreen()),
                const SizedBox(
                  height: 15,
                ),
                OrDevider(),
                const SizedBox(
                  height: 15,
                ),
                OutLineButton(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Doesn\'t have an account?',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                      ),
                    ),
                    SmallButton(context,
                        text: 'Register here', widget: RegesterScreen())
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Use the application according to policy rules.'
                  ' Any Kinds of violations will be subject to sancations.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
