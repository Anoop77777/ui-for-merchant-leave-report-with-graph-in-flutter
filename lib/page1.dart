import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:prosbello/graph.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  bool btn1 = true, btn2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .4,
                color: Colors.black,
              ),
              Container(
                // padding: EdgeInsets.all(10),
                // color: Colors.white24,
                child: Column(
                  children: [
                    buildHeader(context),
                    Expanded(
                        child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          personName(context),
                          SizedBox(height: 20),
                          performanceCard(context),
                          SizedBox(height: 20),
                          downloadButton(context),
                          SizedBox(height: 20),
                          buttons(),
                          SizedBox(height: 20),
                          cardpro(context),
                          SizedBox(height: 10),
                          recentlog(),
                          SizedBox(height: 10),
                          datetime(context),
                          SizedBox(height: 10),
                          datetime(context),
                          SizedBox(height: 60),
                        ],
                      ),
                    )),
                    Bottomnavbar()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container datetime(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Wednesday",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(height: 5),
              Text(
                " 15 Mar 2020",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.timelapse,
                size: 18.0,
                color: Colors.blue,
              ),
              SizedBox(height: 5),
              Text(
                "3:53 Hrs",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Center recentlog() {
    return Center(
      child: Text(
        "Recent Logs",
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey),
      ),
    );
  }

  Container cardpro(BuildContext context) {
    return Container(
      //height: 50,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.red[300], borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          CircularPercentIndicator(
            radius: 55.0,
            lineWidth: 5.0,
            percent: 0.90,
            center: new Text(
              "90%",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            progressColor: Colors.lightGreen[400],
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "On-Time Arrival",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              Text(
                "From Fed 20,2020 to 15 Mar, 2020",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              btn1 = true;
              btn2 = false;
            });
          },
          child: Buttons(
            name: "Pay Slip",
            active: btn1,
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              btn1 = false;
              btn2 = true;
            });
          },
          child: Buttons(
            name: "Payment breakdown",
            active: btn2,
          ),
        )
      ],
    );
  }

  Container downloadButton(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * .8,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Text(
          "Download Report",
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }

  performanceCard(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * .4,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(13)),
        child: GraphPage2());
  }

  Container personName(BuildContext context) {
    return Container(
      height: 30,
      width: MediaQuery.of(context).size.width * .4,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(13)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Person Name",
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          Icon(
            Icons.arrow_drop_down,
            size: 35.0,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  buildHeader(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      // color: Colors.brown,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 14.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(width: 15),
            Text(
              "Merchant Leave Report",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class Bottomnavbar extends StatelessWidget {
  const Bottomnavbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 12,
      unselectedFontSize: 12,
      iconSize: 20,
      selectedItemColor: Colors.black,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedLabelStyle: TextStyle(fontSize: 12),
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Product',
          icon: Icon(Icons.local_activity_outlined),
        ),
        BottomNavigationBarItem(
            label: 'Attendance',
            icon: Icon(Icons.verified_user_outlined),
            activeIcon: Icon(
              Icons.verified_user_outlined,
              color: Colors.black,
            )),
        BottomNavigationBarItem(
          label: 'Earnings',
          icon: Icon(Icons.settings_outlined),
        )
      ],
      // onTap: (index) {
      //   setState(() {
      //     _selectedIndex = index;
      //   });
      // },
    );
  }
}

class Buttons extends StatelessWidget {
  final String name;
  final bool active;
  const Buttons({Key key, this.name, this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * .4,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: active ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: active ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
