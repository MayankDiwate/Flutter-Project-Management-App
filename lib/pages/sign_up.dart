import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_management_app/pages/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  void initState() {
    _namecontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
    _emailcontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _namecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: const Icon(Icons.arrow_back)),
          elevation: 0,
          title: const Text('Sign up'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: FutureBuilder(
              future: Firebase.initializeApp(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.done:
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Center(
                          child: Image(
                            height: MediaQuery.of(context).size.height * 0.35,
                            image: const AssetImage(
                              'assets/gifs/user-login.gif',
                            ),
                          ),
                        ),
                        const Text('Name', style: TextStyle(fontSize: 16)),
                        const SizedBox(height: 5),
                        TextFormField(
                          controller: _namecontroller,
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Name',
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text('Email', style: TextStyle(fontSize: 16)),
                        const SizedBox(height: 5),
                        TextFormField(
                          controller: _emailcontroller,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Email',
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text('Password', style: TextStyle(fontSize: 18)),
                        const SizedBox(height: 5),
                        TextFormField(
                          controller: _passwordcontroller,
                          obscureText: true,
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const SignIn()));
                          },
                          child: Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.height * 0.3,
                              child: const Center(
                                  child: Text(
                                'Sign Up',
                                style: TextStyle(color: Colors.white),
                              )),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color.fromARGB(255, 33, 82, 243),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  default:
                    return const Text('Loading...');
                }
              },
            ),
          ),
        ));
  }
}
