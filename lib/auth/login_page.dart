import 'package:flutter/material.dart';
import 'package:mobileproject/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final globalKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.check, color: Colors.white),
              ),

              SizedBox(height: 15),

              Text(
                "Task Flow",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.indigoAccent,
                  fontWeight: FontWeight(600),
                ),
              ),

              SizedBox(height: 20),

              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome Back👋"),
                    Text("Login untuk melanjutkan ke akun anda"),
                  ],
                ),
              ),

              SizedBox(height: 40),

              //form
              Form(
                key: globalKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username tidak boleh kosong';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password tidak boleh kosong';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  if (globalKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }
                },
                child: Text("Login", style: TextStyle(color: Colors.white)),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum punya akun"),
                  TextButton(onPressed: () {}, child: Text("Register")),
                ],
              ),

              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                    child: Text("Atau"),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/Google.jpeg',
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(width: 10),
                        Text("google"),
                      ],
                    ),
                  ),

                  SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/facebook.jpeg',
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(width: 10),
                        Text("facebook"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
