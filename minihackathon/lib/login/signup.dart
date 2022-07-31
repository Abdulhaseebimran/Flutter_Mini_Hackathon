import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minihackathon/login/login_page.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   TextEditingController nameController = TextEditingController();
   TextEditingController confirmPasswordController = TextEditingController();
  bool emailValid = true;
  FirebaseFirestore db = FirebaseFirestore.instance;

   signup() async {
    emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(emailController.text.toLowerCase());
    if (nameController.text != '') {
      if (emailValid) {
        if (passwordController.text.length >= 8) {
          if (passwordController.text != '' &&
              confirmPasswordController.text != '' &&
              passwordController.text == confirmPasswordController.text) {
            // create account
            try {
              final user =
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: emailController.text.toLowerCase(),
                password: passwordController.text,
              );
              db.collection('users').doc(user.user!.uid).set({
                'userName': nameController.text.trim(),
                'email': emailController.text.toLowerCase().trim(),
                'photoUrl': 'https://icons.veryicon.com/png/o/internet--web/prejudice/user-128.png',
              });
              Navigator.pushReplacementNamed(context, '/MyNavigationBar');
            } on FirebaseAuthException catch (e) {
              if (e.code == 'email-already-in-use') {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text(
                      'Error',
                      style: TextStyle(color: Colors.red),
                    ),
                    content: Text(
                      e.code,
                      style: const TextStyle(fontSize: 15),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              }
            } catch (e) {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text(
                    'Error',
                    style: TextStyle(color: Colors.red),
                  ),
                  content: Text(
                    e.toString(),
                    style: const TextStyle(fontSize: 15),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            }
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text(
                  'Congragulations',
                  style: TextStyle(color: Colors.red),
                ),
                content: const Text(
                  'You have been signed up!',
                  style: TextStyle(fontSize: 15),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          } else {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text(
                  'Error',
                  style: TextStyle(color: Colors.red),
                ),
                content: const Text(
                  'Confirm password is not same as Password',
                  style: TextStyle(fontSize: 15),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          }
        } else {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text(
                'Error',
                style: TextStyle(color: Colors.red),
              ),
              content: const Text(
                'Password must be 8 craracters long',
                style: TextStyle(fontSize: 15),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        }
      } else {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text(
              'Error',
              style: TextStyle(color: Colors.red),
            ),
            content: const Text(
              'Invalid Email',
              style: TextStyle(fontSize: 15),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } else {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text(
            'Error',
            style: TextStyle(color: Colors.red),
          ),
          content: const Text(
            'Name can\'t be empty',
            style: TextStyle(fontSize: 15),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Padding(
             padding: const EdgeInsets.all(10.0),
             child: Column(
              children: [
               const  Center(
                  child: Image(image: AssetImage("assets/images/loginvector1.png")),
                ),const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                      blurRadius: 7,
                      spreadRadius: 5,
                      blurStyle: BlurStyle.outer,
                      offset: Offset(0, 7),
                    )
                      ],
                       border: Border.all(
                          width: 3,
                          color: Colors.white),
                          borderRadius: BorderRadius.circular(30.0)),
                           width: MediaQuery.of(context).size.width * 0.8,
                           height: MediaQuery.of(context).size.height * 0.6,
                           child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(24) ,
                                child: Text("REGISTERATION",
                                style: GoogleFonts.raleway(
                                  fontSize: 20, fontWeight: FontWeight.bold,
                                  color: Colors.pink
                                )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: TextField(
                                  controller: emailController,
                                   textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                 width: 0, 
                                  style: BorderStyle.none,
                         ),
                         ),
                                 filled: true,
                               hintText: "Your Email",
                               prefixIcon: const Icon(Icons.person),
                                iconColor: Colors.grey,
                               fillColor: const Color(0XFFE5E5E5)
                      ),
                                ),),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: TextField(
                                    controller: passwordController,
                                     textAlign: TextAlign.center,
                                       obscureText: true,
                                     decoration: InputDecoration(
                                     border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                    width: 0, 
                                     style: BorderStyle.none,
                         ),
                         ),
                                    fillColor: const Color(0XFFE5E5E5),
                                    filled: true,
                                   hintText: "Your Password",
                                   prefixIcon: const Icon(Icons.lock),
                                  iconColor: Colors.grey
                      ),
                                  ),
                                  ),const SizedBox(height: 20,),
                                   ElevatedButton(style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(200, 50),
                                        maximumSize: const Size(200, 50),
                                     ),
                                      onPressed: () {
                                          Navigator.push(
                                     context, MaterialPageRoute(builder: (context) => const Login()));
                                      },
                                      child: const Text("Signup",
                                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,))),
                            ],
                           ),
                          ),
                     ),
              ],
             ),
           ),
        ) 
      ),
    );
  }
}