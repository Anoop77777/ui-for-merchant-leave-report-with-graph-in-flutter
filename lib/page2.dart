import 'package:flutter/material.dart';
import 'package:prosbello/page1.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key key}) : super(key: key);

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
              height: MediaQuery.of(context).size.height * .3,
              color: Colors.black,
            ),
            Column(
              children: [
                buildHeader(context),
                Expanded(
                    child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          personName(context, "Manager Nmae"),
                          personName(context, "Person Name"),
                        ],
                      ),
                      SizedBox(height: 20),
                      personImage(),
                      SizedBox(height: 20),
                      buildColumn(context),
                      uploadButton(context)
                    ],
                  ),
                )),
                Bottomnavbar()
              ],
            )
          ],
        ),
      )),
    );
  }

  Container uploadButton(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * .8,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Text(
          "Upload",
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }

  Column buildColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Customtextfeild(
              name: "Shop Name",
              width: .5,
            ),
            Customtextfeild(
              name: "Location",
              width: .3,
            )
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Customtextfeild(
              name: "Total Amount",
              width: .5,
            ),
            Customtextfeild(
              name: "Target",
              width: .3,
            )
          ],
        ),
        SizedBox(height: 20),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * .3,
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text(
              "Add more",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Row personImage() {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.amber,
          backgroundImage: NetworkImage(
            "https://picsum.photos/200/300",
          ),
        ),
        SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Yaqoob Kc!",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Text(
              "Shop name",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
          ],
        )
      ],
    );
  }

  Container personName(BuildContext context, String str) {
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
            str,
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
              "Add Shop",
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

class Customtextfeild extends StatelessWidget {
  final double width;
  final String name;
  const Customtextfeild({
    this.name,
    this.width,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          SizedBox(height: 5),
          Container(
            height: 50,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[200],
              border: Border.all(width: 1.0, color: Colors.lightBlue[50]),
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                //labelText: 'shop name',
              ),
            ),
          )
        ],
      ),
    );
  }
}
