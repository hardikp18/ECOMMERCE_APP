import 'package:ecommerce_app/constants/global_variables.dart';
import 'package:ecommerce_app/features/account/widgets/below_app_bar.dart';
import 'package:ecommerce_app/features/account/widgets/orders.dart';
import 'package:ecommerce_app/features/account/widgets/top_buttons.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/ecommerce_app_logo.png',
                  width: 100,
                  height: 45,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 10),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Text(
                        'Ecommerce App',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 15),
                      child: Icon(Icons.notifications_outlined),
                    ),
                    Icon(
                      Icons.search,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: const Column(
        children: [
          BelowAppBar(),
          SizedBox(height: 10),
          TopButtons(),
          SizedBox(height: 20),
          Orders(),
        ],
      ),
    );
  }
}
