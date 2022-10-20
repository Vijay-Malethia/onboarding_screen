import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboard/screens/home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        showBackButton: true,
        back: buttonDesignBack(),
        showDoneButton: true,
        done: const Text('Sign In'),
        doneStyle: TextButton.styleFrom(
          padding: const EdgeInsets.only(right: 10),
          primary: Colors.blue,
          // backgroundColor: Colors.amber,
        ),
        onDone: () {
          Navigator.of(context).pushNamed('/homeScreen');
        },
        showNextButton: true,
        next: buttonDesign(),
        pages: [
          PageViewModel(
              title: 'Find your Favorite class',
              body: 'there is nothing ',
              image: buildImage('assets/images/favorite.jpg'),
              useRowInLandscape: true),
          PageViewModel(
            title: 'Explore more skills',
            body: 'there is nothin2g ',
            image: buildImage('assets/images/skill.jpg'),
          ),
          PageViewModel(
            title: '''Get the best class,with\n  the best2 teacher''',
            body: 'there is nothing ',
            image: buildImage('assets/images/meeting.jpg'),

            // decoration: getPageDecoration(),
          )
        ],
        showSkipButton: true,
        skip: const Text('Skip'),
      ),
    );
  }

  buildImage(String path) => Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              path,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(255, 118, 182, 235).withOpacity(0.4),
                  const Color.fromARGB(255, 29, 142, 235).withOpacity(0.9)
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 30),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/playbutton.webp'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Study',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      );

  getPageDecoration() =>
      const PageDecoration(titleTextStyle: TextStyle(fontSize: 22));
  buttonDesign() => Container(
        width: 60,
        height: 55,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(60),
          ),
          color: Colors.blue,
        ),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      );
  buttonDesignBack() => Container(
        width: 60,
        height: 55,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(60),
          ),
          color: Color.fromARGB(255, 189, 222, 238),
        ),
        child: const Icon(
          Icons.arrow_back,
          color: Colors.blue,
        ),
      );
  signIn() => Container(
        // margin: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: const Text('Sign Up'),
            ),
            GestureDetector(
              child: const Text('Sign In'),
            ),
          ],
        ),
      );
}
