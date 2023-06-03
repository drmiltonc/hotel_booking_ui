import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
                backgroundColor:
                    MaterialStateProperty.all(Colors.yellow.shade800),
                elevation: MaterialStateProperty.all(0),
                minimumSize: MaterialStateProperty.all(const Size(200, 50))),
            child: const Text('Search',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.indigo))));
  }
}
