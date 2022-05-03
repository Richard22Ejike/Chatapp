import 'package:flutter/material.dart';

import '../Utils/color.dart';
import '../widgets/contactlist.dart';
import '../widgets/stories.dart';

class MobileLayoutScreen extends StatelessWidget {
  const MobileLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: appBarColor,
          centerTitle: true,
          title: const Text(
            'ChatApp',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),

          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                text: 'CHATS',
              ),

              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body:
         SingleChildScrollView(
           child: Column(
                  children: <Widget>[
                     FavoriteContacts(),
                     const ContactsList(),
      ],
    ),
         ),



        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}