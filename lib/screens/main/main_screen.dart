/*
 * @Author: clingxin
 * @Date: 2021-02-05 18:01:30
 * @LastEditors: clingxin
 * @LastEditTime: 2021-04-19 20:13:14
 * @FilePath: /flutter-responsive-email-ui/lib/screens/main/main_screen.dart
 */
import 'package:flutter/material.dart';
import 'package:outlook/components/side_menu.dart';
import 'package:outlook/screens/email/email_screen.dart';
import 'package:outlook/screens/main/responsive.dart';
import '../email/email_screen.dart';
import 'components/list_of_emails.dart';
import 'components/list_of_emails.dart';
import 'components/list_of_emails.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
        body: Responsive(
      mobile: ListOfEmails(),
      tablet: Row(
        children: [
          Expanded(
            flex: 6,
            child: ListOfEmails(),
          ),
          Expanded(
            flex: 9,
            child: EmailScreen(),
          ),
        ],
      ),
      desktop: Row(
        children: [
          Expanded(
            flex: _size.width > 1340 ? 2 : 4,
            child: SideMenu(),
          ),
          Expanded(
            flex: _size.width > 1340 ? 3 : 5,
            child: ListOfEmails(),
          ),
          Expanded(
            flex: _size.width > 1340 ? 8 : 10,
            child: EmailScreen(),
          ),
        ],
      ),
    ));
  }
}
