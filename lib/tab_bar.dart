import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:tab_bar_in_body_practice/tab_1.dart';
import 'package:tab_bar_in_body_practice/tab_2.dart';
import 'package:tab_bar_in_body_practice/tab_3.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var tabController2 = tabController;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('My Custom Tab Bar'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  // height: 50,
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: TabBar(
                            controller: tabController,
                            labelColor: Colors.purple,
                            unselectedLabelColor: Colors.amber.shade100,
                            indicatorColor: Colors.green,
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicatorWeight: 2,
                            indicator: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            isScrollable: true,
                            labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              // letterSpacing: 1,
                            ),
                            tabs: [
                              Tab(
                                text: 'About',
                              ),
                              Tab(
                                text: 'Services',
                              ),
                              Tab(
                                text: 'Reviews',
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    // ignore: prefer_const_literals_to_create_immutables
                    child: TabBarView(controller: tabController, children: [
                  // Tab1(),
                  // Tab2(),

                  const Tab1(),
                  const Tab2(),
                  const Tab3(),
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
