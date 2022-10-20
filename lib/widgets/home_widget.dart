import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        child: LayoutBuilder(builder: (context, size) {
          if (size.maxHeight <= 594) {
            print(size.maxHeight);
            return Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage:
                              AssetImage('assets/images/playbutton.webp'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Study',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 280,
                  ),
                  const Text(
                    '''    Hello and \nwelcome here!''',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 29,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    '''Get an overview of how you are performing \nand motivate yourself achieve even meow''',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ]);
          } else {
            return Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage:
                              AssetImage('assets/images/playbutton.webp'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Study',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 440,
                  ),
                  const Text(
                    '''    Hello and \nwelcome here!''',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 29,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    '''Get an overview of how you are performing \nand motivate yourself achieve even meow''',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ]);
          }
        }),
      ),
    );
  }
}
