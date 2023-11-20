import 'package:feature_first_with_getx/src/features/home/domains/User.dart';
import 'package:flutter/material.dart';

class SimpleProductRowItem extends StatelessWidget {
  User user;
  SimpleProductRowItem({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12, width: 1))),
      child: Row(
        children: [
          Image.network("https://saati.watch/product/detail/AI7001-81L%20.jpg",
              width: 130, fit: BoxFit.fill),
          SizedBox(
            width: 5,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                " Cal.نسنج 60 داعت - نمایشگرتاریخ ",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Text("AI7001-81L", style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, decoration: TextDecoration.underline)),
              Expanded(child: Text("")),
              Row(
                children: [
                  Text("34,990,000", style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                  Expanded(child: Text("")),
                  if (user.id % 2 == 0) Text("موجود نیست", style: TextStyle(color: Colors.redAccent, fontSize: 11),),
                  if (user.id % 2 == 1)
                    TextButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                          MaterialStateProperty.all(Colors.green)),
                      child: Text("سفارش", style: TextStyle(fontSize: 11)),
                      onPressed: () {},
                    ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
