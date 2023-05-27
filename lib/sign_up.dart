import 'package:flutter/material.dart';
import 'package:st/Sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Align(
                widthFactor: 20,
                child: Image(image: AssetImage('assets/images/SignUp.png'))),
            Padding(
              padding: EdgeInsets.only(right: 160),
              child: Container(
                child: Text(
                  'Registration',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: 290),
              child: Container(
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                height: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Email...',
                    labelText: 'Email',
                    suffixIcon: Icon(Icons.alternate_email),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    hintStyle: TextStyle(fontWeight: FontWeight.normal),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue, width: 2))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(right: 260),
              child: Container(
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                height: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    hintStyle: TextStyle(fontWeight: FontWeight.normal),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue, width: 2))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(right: 200),
              child: Container(
                child: Text(
                  'Re-enter Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                height: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                obscureText: true,
                maxLength: 6,
                decoration: InputDecoration(

                    hintText: 'Re-enter Password',
                    labelText: 'Re-enter Password',
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    hintStyle: TextStyle(fontWeight: FontWeight.normal),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue, width: 2))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print('button click');
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              },
              child: Container(
                width: 330,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
