import 'package:flutter/material.dart';

class TabbarBottomFragment extends StatelessWidget {
  final TabController tabController;
  const TabbarBottomFragment({required this.tabController, super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: TabBar(
        indicatorColor: Colors.transparent,
        controller: tabController,
        tabs: const [
          Tab(
            icon: Icon(
              Icons.more,
              color: Colors.grey,
              size: 16,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.grey,
              size: 16,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.navigation,
              color: Colors.grey,
              size: 16,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.grey,
              size: 16,
            ),
          )
        ],
      ),
    );
  }
}
