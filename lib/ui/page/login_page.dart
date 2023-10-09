import 'package:flutter/material.dart';
import '../util/util.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
        color: PrimaryColor,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 25),
              Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              
              Container(
                padding: EdgeInsets.symmetric(horizontal: 41),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        alignLabelWithHint: true,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintStyle: const TextStyle()
                      ),
                    ),
                    SizedBox(height: 24),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 19),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/homePage');
                        // Logika untuk proses login
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          fixedSize: Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),),),
                    ),
                    SizedBox(height: 22),
                    Text("Don't have an account yet?"),
                    InkWell(
                      onTap: () {
                         Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        "Register Now!",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                   // SizedBox(height: 10,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
