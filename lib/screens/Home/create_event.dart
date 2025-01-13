import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:todo/Providers/create_event_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/widgets/create_event_item.dart';
import 'package:todo/widgets/elevated_btn.dart';

class CreateEvent extends StatelessWidget {
  static const String routeName = "createEvent";
  final TextEditingController titleController = TextEditingController();
  final TextEditingController decController = TextEditingController();

  CreateEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreateEventsProvider(),
      builder: (context, child) {
        var provider = Provider.of<CreateEventsProvider>(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'create_event'.tr(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            iconTheme: IconThemeData(
              color: Theme.of(context).primaryColor,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                            text: provider.eventsCategory[index].tr(),
                            isSelected: provider.selectedCategory == index
                                ? true
                                : false,
                            icon: provider.icons[index],
                          ),
                        );
                      },
                      itemCount: provider.eventsCategory.length,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text("Title", style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).canvasColor,
                        ),
                    controller: titleController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 16.h),
                      labelText: "Event Title",
                      labelStyle:
                          Theme.of(context).textTheme.titleSmall!.copyWith(
                                color: Theme.of(context).canvasColor,
                              ),
                      prefixIcon: const Icon(Icons.edit_note),
                      prefixIconColor: Theme.of(context).canvasColor,
                      iconColor: Theme.of(context).focusColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).focusColor,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).focusColor,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    maxLines: 5,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).canvasColor,
                        ),
                    controller: decController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 16.h, horizontal: 16.h),
                      labelText: "Event Description",
                      labelStyle:
                          Theme.of(context).textTheme.titleSmall!.copyWith(
                                color: Theme.of(context).canvasColor,
                              ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).focusColor,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).focusColor,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            color: ThemeMode == ThemeMode.light
                                ? Colors.white
                                : Colors.black,
                          ),
                          const SizedBox(width: 16),
                          Text("Event Date",
                              style: Theme.of(context).textTheme.titleSmall),
                        ],
                      ),
                      const Text("Choose Date")
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.clock,
                            color: ThemeMode == ThemeMode.light
                                ? Colors.white
                                : Colors.black,
                          ),
                          const SizedBox(width: 16),
                          Text("Event Time",
                              style: Theme.of(context).textTheme.titleSmall),
                        ],
                      ),
                      const Text("Choose Time")
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text("Location",
                      style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).focusColor,
                        ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 16.h),
                      labelText: "Choose Event Location",
                      labelStyle:
                          Theme.of(context).textTheme.titleMedium!.copyWith(
                                fontSize: 16
                              ),
                      prefixIcon: const Icon(Icons.add_location_sharp),
                      prefixIconColor: Theme.of(context).primaryColor,
                      suffixIcon: const Icon(Icons.arrow_forward_ios),
                      suffixIconColor: Theme.of(context).primaryColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedBtn(routeName: routeName, lable: "Add Event")
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
