import 'package:flutter/material.dart';

class ShowMoneyshareUI extends StatefulWidget {
  //สร้างตัวแปรทีจะรับค่าที่ส่งมา
  double money, tip, moneyshare;
  int person;

  //Constructor ที่จะไว้รับค่าที่ส่งมาเพื่อกำหนดให้กับตัวแปรที่สร้างข้างบน
  ShowMoneyshareUI({
    Key? key,
    required this.money,
    required this.tip,
    required this.person,
    required this.moneyshare,
  }) : super(key: key);

  @override
  _ShowMoneyshareUIState createState() => _ShowMoneyshareUIState();
}

class _ShowMoneyshareUIState extends State<ShowMoneyshareUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ผลการแชร์เงิน',
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80.0,
              ),
              Image.asset(
                'assets/images/money.png',
                height: 120.0,
              ),
               SizedBox(
                height: 40.0,
              ),
              Text(
                'จำนวณเงินที่จะหาร',
              ),
              Text(
                widget.money.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.deepPurple,
                ),
              ),
              Text(
                'บาท',
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'จำนวณคนที่จะหาร',
              ),
              Text(
                widget.person.toString(),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.deepPurple,
                ),
              ),
              Text(
                'คน',
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'จำนวณเงินทริป',
              ),
              Text(
                widget.tip.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.deepPurple,
                ),
              ),
              Text(
                'บาท',
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'สรุปว่าหารกันคนละ',
              ),
              Text(
                //widget.moneyshare.toString(),
                widget.moneyshare.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.red,
                ),
              ),
              Text(
                'บาท',
              ),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
