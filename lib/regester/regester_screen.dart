import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../login/login_screen.dart';
import '../shared/components.dart';

class RegesterScreen extends StatefulWidget {
  RegesterScreen({Key? key}) : super(key: key);

  @override
  State<RegesterScreen> createState() => _RegesterScreenState();
}

class _RegesterScreenState extends State<RegesterScreen> {
  var emailController = TextEditingController();

  var PhoneController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: () {
                  NavAndFinish(context, LoginScreen());
                },
                child: const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            expandedHeight: 250,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/login.png'),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Image(image: AssetImage('images/login.png')),
                    const Text(
                      'Welcome to Fashion Daily',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Register',
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
                      height: 20,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      onTap: () {},
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'please enter your email';
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Eg.example@gmail.com',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: PhoneController,
                      keyboardType: TextInputType.phone,
                      onTap: () {},
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return ' Phone Numper is Not Registered';
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Eg.1281859862',
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      obscureText: isShow,
                      onTap: () {},
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'please enter your Password';
                        }
                      },
                      decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            child: isShow
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                            onTap: () {
                              setState(() {
                                isShow = !isShow;
                              });
                            },
                          ),
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BigButton(context, text: 'Register', widget: LoginScreen()),
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
                          'Has an account?',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                          ),
                        ),
                        SmallButton(context,
                            text: 'Sign in here', widget: LoginScreen())
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'By regestring your account,you are agree to our  ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    Center(
                      child: SmallButton(context,
                          text: 'terms and condition', widget: LoginScreen()),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
