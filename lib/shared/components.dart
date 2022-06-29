import 'package:flutter/material.dart';

import '../onbording/onbording_screen.dart';

void NavAndFinish(context, Widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => Widget), (route) => false);

void NavTo(context, Widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (contex) => Widget));

Widget Build_Bording_Item(BordingModel model) => Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('${model.image}'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '${model.title1}',
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              '${model.title2}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );

Widget SmallButton(
  context, {
  @required String? text,
  @required Widget? widget,
}) =>
    MaterialButton(
      onPressed: () {
        NavAndFinish(context, widget);
      },
      child: Text(
        text!,
        style: const TextStyle(
          color: Colors.teal,
          fontSize: 16,
        ),
      ),
    );

Widget BigButton(
  context, {
  @required String? text,
  required Widget widget,
}) =>
    Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.cyan[700],
      ),
      child: MaterialButton(
        onPressed: () {
          NavAndFinish(context, widget);
        },
        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

Widget OutLineButton() => Container(
      width: double.infinity,
      height: 60,
      child: OutlineButton(
        onPressed: () {},
        borderSide: BorderSide(color: Colors.teal),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 30,
              child: const Image(
                image: AssetImage(
                  'images/Google Icon.png',
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Sign With Google',
              style: TextStyle(color: Colors.teal),
            ),
          ],
        ),
      ),
    );
Widget OrDevider() => Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.grey[200],
            height: 1,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          'Or',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Container(
            color: Colors.grey[200],
            height: 1,
          ),
        ),
      ],
    );
