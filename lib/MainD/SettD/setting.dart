import 'package:flutter/material.dart';
import 'package:mafiaexp/MainD/MarketD/profile.dart';
import 'package:mafiaexp/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

Widget Setting(String text) => Builder(builder: (context) {
      return Scaffold(
          body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 50,
            color: Colors.amber,
            child: ElevatedButton(
              onPressed: () {
                profile(text);
              },
              child: Text('계정'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.redAccent,
          ),
          Container(
            height: 50,
            color: Colors.blue,
          ),
          Container(
            height: 50,
            color: Colors.purple,
          ),
          Container(
            height: 50,
            color: Colors.orangeAccent,
          ),
          Container(
            height: 50,
            color: Colors.greenAccent,
            child: ElevatedButton(
              onPressed: () {
                logout(context);
              },
              child: Text('로그아웃'),
            ),
          ),
        ],
      ));
    });

void logout(context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
            child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                '로그아웃 하시겠습니까?',
                style: TextStyle(fontSize: 20),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
                        provider.logout();
                      },
                      child: Text('예')),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();

                      },
                      child: Text('아니오')),
                ],
              ),
            ],
          ),
        ));
      });
}