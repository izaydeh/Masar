import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masar/my_widgets/my_font.dart';
import 'package:masar/pages/login_page.dart';
import 'package:masar/pages/registeration_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/back-ground.jpeg')),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 90,
              ),
              Center(
                child: MyText(
                  text: 'Welcome to ',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'MASAR',
                style: GoogleFonts.libreBaskerville(
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  color: Colors.white,
                  fontSize: 60,
                ),
              ),
              Text(
                'where you can find your path',
                style: GoogleFonts.cairo(
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  color: const Color.fromARGB(123, 255, 255, 255),
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 400,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(150, 255, 255, 255),
                    foregroundColor: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text('Sign-In'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RegistrationPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(210, 66, 65, 65),
                    foregroundColor: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Text('Sign-Up'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
