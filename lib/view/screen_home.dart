import 'package:flutter/material.dart';
import 'package:total_x_machin_task/util/constance/colors.dart';
import 'package:total_x_machin_task/util/constance/text_style.dart';
import 'package:total_x_machin_task/widgets/comman/search_text_field.dart';
import 'package:total_x_machin_task/widgets/comman/user_card_widget.dart';
import '../widgets/home_widgets/bottom_sheet.dart';

// ignore: must_be_immutable
class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final TextEditingController searchController = TextEditingController();

  ValueNotifier<String> radioButtonValue = ValueNotifier<String>('');

  ValueNotifier<bool> isSortOpen = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    double screenTempHeight = MediaQuery.sizeOf(context).height;
    double topHeight = MediaQuery.of(context).padding.top;
    double screenHeight = screenTempHeight - topHeight;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.black,
        onPressed: () {
          bottomSheetFnc(context, screenHeight);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColor.backgroundColor,
      appBar:
          appBarFnc(isSortOpen, searchController, radioButtonValue, (value) {
        setState(() {});
      }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return const UserCardWidget();
            },
            separatorBuilder: (context, index) => const SizedBox(
                  height: 8,
                ),
            itemCount: 10),
      ),
    );
  }
}

PreferredSizeWidget appBarFnc(
    isSortOpen, searchController, radioButtonValue, Function(bool) onPress) {
  return AppBar(
    backgroundColor: AppColor.primaryColor,
    leadingWidth: 120,
    leading: Row(children: [
      const SizedBox(
        width: 10,
      ),
      const Icon(
        Icons.location_on,
        color: Colors.white,
      ),
      Text(
        'Nilambur',
        style: AppText.mediumLight,
      )
    ]),
    bottom: PreferredSize(
        preferredSize: Size.fromHeight(isSortOpen.value ? 310 : 110),
        // 310
        child: Container(
          color: AppColor.backgroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ValueListenableBuilder(
              valueListenable: isSortOpen,
              builder: (context, value, child) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: SearchTextFieldWidget(
                          hintText: 'search by name',
                          controller: searchController,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              isSortOpen.value = !isSortOpen.value;
                              onPress(isSortOpen.value);
                              // setState(() {});
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(
                                Icons.filter_list,
                                size: 29,
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 0),
                    height: isSortOpen.value ? 190 : 0,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sort',
                            style: AppText.mediumdark,
                          ),
                          ValueListenableBuilder(
                              valueListenable: radioButtonValue,
                              builder: (context, value, child) {
                                return Column(
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      child: RadioListTile<String>(
                                          contentPadding: EdgeInsets.zero,
                                          title: const Text('All'),
                                          value: 'option 1',
                                          groupValue: radioButtonValue.value,
                                          onChanged: (value) {
                                            radioButtonValue.value = value!;
                                          }),
                                    ),
                                    SizedBox(
                                      height: 40,
                                      child: RadioListTile<String>(
                                          contentPadding: EdgeInsets.zero,
                                          title: const Text('Age: Elder'),
                                          value: 'option 2',
                                          groupValue: radioButtonValue.value,
                                          onChanged: (value) {
                                            radioButtonValue.value = value!;
                                          }),
                                    ),
                                    SizedBox(
                                      height: 40,
                                      child: RadioListTile<String>(
                                          contentPadding: EdgeInsets.zero,
                                          title: const Text('Age: Younger'),
                                          value: 'option 3',
                                          groupValue: radioButtonValue.value,
                                          onChanged: (value) {
                                            radioButtonValue.value = value!;
                                          }),
                                    ),
                                  ],
                                );
                              }),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Users Lists',
                    style: AppText.mediumdark,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        )),
  );
}
