import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.12_listview_builder_screen.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.10_scrolling_grid_view.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.13_list_cards_screen.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.1_container_text.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.2_sizedbox_align.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.3_aspect_fractionally_sized.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.4_expanded_widget.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.5_row_column.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.6_wrap_types.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.7_stack_widget.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.8_scrolling_single_child.dart';
import 'package:lecture_flutter/lec3_basic_widgets/l3.9_scrolling_list2.dart';
import 'package:lecture_flutter/lec5.2_anim_component/component/component_screen.dart';
import 'package:lecture_flutter/lec6.1a_network_umnuh/network_screen_umnuh.dart';
import 'package:lecture_flutter/lec6.1b_network_suuliinh/network_sceen.dart';
import 'package:lecture_flutter/screens/aa_nothindo-screen.dart';
import 'package:lecture_flutter/screens/lecture56_appbar.dart';

class Lecture5Screen extends StatelessWidget {
  const Lecture5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(4, (index) => index);
    List<int> intList = [0, 1, 2, 3];
    final List<Widget> screens = [
      const NetworkScreenUmnuh(),
      // const NoThingDoScreen(),
      // const NoThingDoScreen(),
      // const FirebaseScreen(),
      const NoThingDoScreen(),
      const NetworkScreen(),
      const NoThingDoScreen(),

      // const NoThingDoScreen(),
    ];
    List<String> title = [
      '6a.1 Network request/umnuh',
      '6a.2 Firebase',
      '6b.1 Network request',
      'Lion'
    ];
    List<String> subTitle = [
      'Upload hiisen umnuh lecture 6',
      'Real-time lecture 6',
      'Work with Firebase Real-time DB',
      'Lion'
    ];
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarLecture5(title: 'Lecture 5& 6')),
      body: Container(
          height: 700,
          // Text('${items[e]}')
          color: Colors.yellow[500],
          child: Column(
            children: intList.map((e) {
              return Container(
                  color: Colors.grey[100],
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    child: ListTile(
                      // leading: const Icon(Icons.add),
                      title: Text(
                        title[e].toString(),
                        style: const TextStyle(fontSize: 20),
                      ),
                      trailing: const Icon(Icons.keyboard_arrow_right_sharp),
                      subtitle: Text(subTitle[e].toString()),
                      selected: true,
                      onTap: () {
                        if (e <= 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => screens[e]));
                        }
                      },
                    ),
                  ));
            }).toList(),
          )),
    );
  }
}
