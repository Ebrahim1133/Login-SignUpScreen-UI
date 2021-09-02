import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_challenge1/moduls/SignInAndSignUp/signup_screen.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class SignInScreen extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#f6f6f6'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 800,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/241009019_3152304001718618_8838525499020375654_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=dbeb18&_nc_eui2=AeE2gVNnQ3auFL0n9FbZJboUEpFVQszWU6gSkVVCzNZTqHAPUCyv0yX-vONskm9qpzPcbaPDQMeo8cqgOT5ojOCs&_nc_ohc=c14Z7PKMKMcAX-4shfu&_nc_ht=scontent.fcai20-4.fna&oh=80923f3e7583ebfce18a17642f5bc859&oe=615547ED',
                      height: 180,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Welcome back!',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#1c1c1c')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Log in to your existant account of Q Allure',
                    style: TextStyle(fontSize: 15, color: HexColor('#8b8b8b')),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 375,
                    child: TextFormField(
                      controller: emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                        prefixIcon: Icon(Icons.email),
                        hintStyle: TextStyle(color: HexColor('#1848fd')),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(
                                color: HexColor('#9fcdfc'), width: 2)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 375,
                    child: TextFormField(
                      controller: passwordcontroller,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.lock),
                        hintStyle: TextStyle(color: HexColor('#1848fd')),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(
                                color: HexColor('#9fcdfc'), width: 2)),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: TextButton(
                        child: Text(
                          'Forget password ?',
                          style: TextStyle(
                              color: HexColor('#304a59'),
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        color: HexColor('#0148a4'),
                        borderRadius: BorderRadius.circular(35)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: MaterialButton(
                        minWidth: 250,
                        onPressed: () {},
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Or connect using',
                    style: TextStyle(fontSize: 17, color: HexColor('#c9c9ca')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 200,
                        height: 75,
                        child: SignInButton(
                          Buttons.Facebook,
                          text: "Facebook",
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 200,
                        height: 75,
                        child: SignInButton(
                          Buttons.Google,
                          text: "Google",
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont have an account?',
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => SignUpScreen()));
                        },
                        child: Text('SignUp'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
