import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoardingWidget extends StatelessWidget {
  final int index;
  final Function() onTap;
  final String imageAdress;
  final String text1;

  const OnBoardingWidget({
    required this.index,
    required this.onTap,
    required this.imageAdress,
    required this.text1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(24),
          height: 400,
          child: Image.asset(
            imageAdress,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 400,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  text1,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: const Text(
                  "Nostrud pariatur nisi aliquip pariatur nisi aliquip excepteur ea eiusmod quis.",
                  // textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(
                      radius: index == 0 ? 10 : 5,
                      backgroundColor: index == 0 ? Colors.black : null,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(
                      radius: index == 1 ? 10 : 5,
                      backgroundColor: index == 1 ? Colors.black : null,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(
                      radius: index == 2 ? 10 : 5,
                      backgroundColor: index == 2 ? Colors.black : null,
                    ),
                  )
                ],
              ),
              TextButton(
                onPressed: onTap,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
