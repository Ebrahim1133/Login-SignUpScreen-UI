import 'package:flutter/material.dart';
import 'package:flutter_challenge1/moduls/SignInAndSignUp/signIn_screen.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  TextEditingController usercontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#f6f6f6'),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 100,
              alignment: Alignment.centerLeft,
             child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
                Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) => SignInScreen()));
             },),
            ),
          ),
            Container(
              alignment: Alignment.topCenter,
              height: 750,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lets Get Started!',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#1c1c1c')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Create an account to Q Allure to get all features',
                    style: TextStyle(fontSize: 15, color: HexColor('#8b8b8b')),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 375,
                    child: TextFormField(
                      controller: usercontroller,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'User Name',
                        prefixIcon: Icon(Icons.person),
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
                  ),SizedBox(
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
                  ),SizedBox(
                    width: 375,
                    child: TextFormField(
                      controller: phonecontroller,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Phone',
                        prefixIcon: Icon(Icons.phone),
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
                  ),SizedBox(
                    width: 375,
                    child: TextFormField(
                      controller: passwordcontroller,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock),
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
                  ),SizedBox(
                    width: 375,
                    child: TextFormField(
                      controller: confirmpasswordcontroller,
                     keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        prefixIcon: Icon(Icons.check),
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
                    height:50,
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        color: HexColor('#0051ce'),
                        borderRadius: BorderRadius.circular(35)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: MaterialButton(
                        minWidth: 250,
                        onPressed: () {},
                        child: Text(
                          'CREATE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height:65,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => SignInScreen()));
                        },
                        child: Text('Login here'),
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
