import 'package:flutter/material.dart';

class ElevatedBtn extends StatelessWidget {
  String routeName;
  String lable;

  ElevatedBtn({super.key, required this.routeName, required this.lable});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            lable,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      ),
    );
  }
}
