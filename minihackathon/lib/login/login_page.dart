import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:minihackathon/login/signup.dart';
import 'package:minihackathon/screens/splash+pages/bottom_navigation.dart';

class Login extends StatefulWidget {
const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   bool emailValid = true;
  FirebaseFirestore db = FirebaseFirestore.instance;
  loginWithEmail() async {
    emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(emailController.text.toLowerCase());
    if (emailValid) {
      try {
        final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.toLowerCase(),
          password: passwordController.text,
        );
        Navigator.pushReplacementNamed(context, '/dashboard');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text(
                'Error',
                style: TextStyle(color: Colors.red),
              ),
              content: const Text(
                'User not found',
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
        } else if (e.code == 'wrong-password') {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text(
                'Error',
                style: TextStyle(color: Colors.red),
              ),
              content: const Text(
                'Wrong password provided for that user.',
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
  }

  Future<void> LogInWithGoogle(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              backgroundColor: Colors.transparent,
              content: SizedBox(
                  width: 50,
                  height: 50,
                  child: Center(child: CircularProgressIndicator())),
            );
          });
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      // Getting users credential
      UserCredential result =
          await FirebaseAuth.instance.signInWithCredential(authCredential);
      User? user = result.user;

      if (user != null) {
        db.collection('users').doc(user.uid).set({
          'userName': user.displayName,
          'email': user.email,
          'photoUrl': user.photoURL,
        });
        Navigator.pushReplacementNamed(context, '/MyNavigationBar');
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child: Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
              height: 15,
            ),
              Image.asset("assets/images/loginvector1.png"),
            const SizedBox(height: 25,),
            Container(
              height: MediaQuery.of(context).size.height*0.7,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 7,
                    spreadRadius: 5,
                    blurStyle: BlurStyle.outer,
                    offset: Offset(0, 7),
                  )
                ]
              ),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                children: [
                  TextField(
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
                  ),
                  const SizedBox(height: 15,),
                   TextField(
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
                  ),const SizedBox(height: 18,),
                  ElevatedButton(style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  maximumSize: const Size(200, 50),
                   ),
                    onPressed: () async{
                        signInWithGoogle();
                        Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyNavigationBar()));
                    }, child: const Text("Login",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,))),
                 const SizedBox(height: 10),
                   Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Image.asset("assets/images/linelogin.png"),
               const Text("  OR  ", style: TextStyle(fontSize: 16, color: Colors.grey),),
                Image.asset("assets/images/linelogin.png")
              ],
            ),const SizedBox(height: 10,),
            ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  maximumSize: const Size(200, 50),
                   ),
                 onPressed: () async{
                   signInWithGoogle();
                        Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyNavigationBar()));
                 }, child: const Text("Login with Google")),
                 const SizedBox(height: 5,),
                  TextButton(onPressed: (){
                    Navigator.push(
                         context,
                      MaterialPageRoute(builder: (context) => const Signup()));
                  }, child: const Text("Create your account",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),)),
                 const SizedBox(height: 5,),
                 Image.asset("assets/images/linelogin2.png"),
                ],
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


Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;
  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );
  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}


 // ), Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //   Image.asset("assets/images/linelogin.png"),
            //    const Text("  OR  ", style: TextStyle(fontSize: 16, color: Colors.grey),),
            //     Image.asset("assets/images/linelogin.png")
            //   ],
            // ),const SizedBox(height: 15,),
            // ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //       minimumSize: const Size(200, 50),
            //       maximumSize: const Size(200, 50),
            //        ),
            //   onPressed: (){}, child: Text("Login with Phone")),
            //   SizedBox(height: 15,),
            //   Text("Create account", 
            //   style: TextStyle(
            //     fontSize: 18,
            //     fontWeight: FontWeight.w500,
            //     color: Colors.black,
            //   ),),
            //   const SizedBox(height: 10,),
            //   Image.asset("assets/images/linelogin2.png"),