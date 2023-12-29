import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_task_bengaluru/constants/spaces.dart';
import 'package:interview_task_bengaluru/view/discover_page.dart';
import 'package:interview_task_bengaluru/view/profile_page.dart';

import 'package:interview_task_bengaluru/widgets/listview_builder.dart';
import 'package:interview_task_bengaluru/widgets/offer_list_widget.dart';
import 'package:interview_task_bengaluru/widgets/poster_part_widget.dart';
import 'package:interview_task_bengaluru/widgets/text_field_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pagecontroller = PageController();

  int nav = 0;
  @override
  Widget build(
    BuildContext context,
  ) {
    return SafeArea(
      child: Scaffold(
        appBar: nav == 0
            ? AppBar(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/icons/location_icon.png'),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            'office',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Image.asset('assets/icons/dropdown_icon.png'),
                      ],
                    ),
                    const SizedBox(
                      width: 175,
                      child: Text(
                        '38/A, 3rd Floor, 18th Main, 22nd Cross Rd, Sector 3, HSR Layout, Bengaluru, Karnataka 560102',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : null,
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Color(0xffFA6A02),
            currentIndex: nav,
            onTap: (value) {
              setState(() {
                nav = value;
                pagecontroller.animateToPage(value,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear);
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.compass), label: "Discover"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance_outlined), label: "Profile"),
            ]),
        body: PageView(
          controller: pagecontroller,
          physics: const NeverScrollableScrollPhysics(),
          children: const [Nav1HomePage(), Discover(), Profile()],
        ),
      ),
    );
  }
}

class Nav1HomePage extends StatelessWidget {
  const Nav1HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OfferPart(),
            Spaces.sizedboxh20(context),
            const TextFieldW(),
            Spaces.sizedboxh20(context),
            const ListViews(),
            Spaces.sizedboxh20(context),
            const Text(
              "Restaurant near you",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const OfferList()
          ],
        ),
      ),
    );
  }
}
