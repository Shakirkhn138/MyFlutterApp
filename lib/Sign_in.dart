import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:st/bottom_bar.dart';
import 'package:st/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
           const  Padding(
                padding: EdgeInsets.all(16),
                child: Image(image: AssetImage('assets/images/SignIn.png'))),
            Padding(
              padding:const  EdgeInsets.only(right: 240, bottom: 20),
              child: Container(
                child: const Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: Container(
                child: const Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // height: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Email...',
                    labelText: 'Email',
                    suffixIcon: Icon(Icons.alternate_email),
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    hintStyle: const TextStyle(fontWeight: FontWeight.normal),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue, width: 2))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: Container(
                child:const  Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // height: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(

                    hintText: 'Password',
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    hintStyle: const TextStyle(fontWeight: FontWeight.normal),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:const  BorderSide(color: Colors.blue, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue, width: 2))),
              ),
            ),
           const  SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                print('object click');
                Navigator.push(context, MaterialPageRoute(builder: (contex) => BottomBar()));
              },
              child: Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(15)),
                child:const  Center(
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
            ),
           const  SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Container(
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Center(
                    child: ElevatedButton(
                      child: const Text('SignUp'),
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp())),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
