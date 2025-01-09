import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Providers/create_event_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/widgets/create_event_item.dart';

class CreateEvent extends StatelessWidget {
  static const String routeName = "createEvent";

  const CreateEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreateEventsProvider(),
      builder: (context, child) {
        var provider = Provider.of<CreateEventsProvider>(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Create Event',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            iconTheme: IconThemeData(
              color: Theme.of(context).primaryColor,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/images/${provider.eventsCategory[provider.selectedCategory]}.png",
                    height: 203.h,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 55,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 16,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          provider.changeCategory(index);
                        },
                        child: CreateEventItem(
                          text: provider.eventsCategory[index],
                          isSelected: provider.selectedCategory == index ? true : false,
                          icon: provider.icons[index] ,
                        ),
                      );
                    },
                    itemCount: provider.eventsCategory.length,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
