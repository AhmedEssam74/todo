import 'package:flutter/material.dart';

class CreateEventItem extends StatelessWidget {
  String text;
  Icon icon;

  bool isSelected;

  CreateEventItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      // alignment: Alignment.center,
      decoration: BoxDecoration(
          color:
              isSelected ? Theme.of(context).primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 2,
          )),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          const SizedBox(
            width: 16,
          ),
          Text(
            text,
            style: isSelected
                ? Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 16)
                : Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
