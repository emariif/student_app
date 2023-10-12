import 'package:flutter/material.dart';
import 'package:student_app/bottom_tab_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFEB564B), Color(0xFFCC382D)],
          ),
        ),
        child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/logo.png'),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Username or Email',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                        autocorrect: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'example@mail.com',
                          fillColor: const Color(0xFFFCFCFC),
                          contentPadding: const EdgeInsets.all(20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Password',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                        autocorrect: false,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Your password',
                          fillColor: const Color(0xFFFCFCFC),
                          contentPadding: const EdgeInsets.all(20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const BottomTabBar();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 77, 65),
                      minimumSize: const Size.fromHeight(50),
                      padding: const EdgeInsets.all(18),
                      elevation: 4,
                      shadowColor: Colors.black,
                    ),
                    child: const Text('Sign In', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text.rich(TextSpan(
                      text: 'Don’t have an account? ',
                      style: TextStyle(color: Colors.white, letterSpacing: 0.4),
                      children: [
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ])),
                ],
              ),
            )),
      ),
    );
  }
}
