import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250.0,
                  color: Color(0xfffff5ea),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 35, 15, 10),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(25),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                contentPadding:
                                    EdgeInsets.only(left: 15, top: 15),
                                hintText: 'Search for recipes and channels',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15),
                      child: Container(
                        padding: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                          border: Border(left: BorderSide(
                            color: Colors.orange,
                            style: BorderStyle.solid,
                            width: 3.0,
                          ),),
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'POPULAR RECIPES',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.blueGrey[900],
                                  ),
                                ),
                                Text(
                                  'THIS WEEK',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.blueGrey[900],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Container(
                        padding: EdgeInsets.only(top: 15, left: 15),
                        height: 125,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              height: 125.0,
                              width: 250.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,

                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/balanced.jpg'),
                                      ),
                                    ),
                                    height: 125.0,
                                    width: 100.0,
                                  ),
                                  SizedBox(width: 5.0,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Grilled Chicken',style: TextStyle(fontWeight: FontWeight.bold,),),
                                      Text('with Fruit Salad',),
                                      SizedBox(height: 10.0,),
                                      Container(
                                        height: 2.0,
                                        width: 75.0,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(height: 10.0,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12.5),
                                              image: DecorationImage(image: AssetImage('images/chris.jpg'),),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text('James Oliver',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15.0,),
                            Container(
                              height: 125.0,
                              width: 250.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      image: DecorationImage(
                                        image: AssetImage('images/balanced.jpg'),
                                      ),
                                    ),
                                    height: 125.0,
                                    width: 100.0,
                                  ),
                                  SizedBox(width: 5.0,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Grilled Chicken',style: TextStyle(fontWeight: FontWeight.bold,),),
                                      Text('with Fruit Salad',),
                                      SizedBox(height: 10.0,),
                                      Container(
                                        height: 2.0,
                                        width: 75.0,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(height: 10.0,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12.5),
                                              image: DecorationImage(image: AssetImage('images/chris.jpg'),),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text('James Oliver',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15.0,),
                            Container(
                              height: 125.0,
                              width: 250.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      image: DecorationImage(
                                        image: AssetImage('images/balanced.jpg'),
                                      ),
                                    ),
                                    height: 125.0,
                                    width: 100.0,
                                  ),
                                  SizedBox(width: 5.0,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Grilled Chicken',style: TextStyle(fontWeight: FontWeight.bold,),),
                                      Text('with Fruit Salad',),
                                      SizedBox(height: 10.0,),
                                      Container(
                                        height: 2.0,
                                        width: 75.0,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(height: 10.0,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12.5),
                                              image: DecorationImage(image: AssetImage('images/chris.jpg'),),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text('James Oliver',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15.0,),
                            Container(
                              height: 125.0,
                              width: 250.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      image: DecorationImage(
                                        image: AssetImage('images/balanced.jpg'),
                                      ),
                                    ),
                                    height: 125.0,
                                    width: 100.0,
                                  ),
                                  SizedBox(width: 5.0,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Grilled Chicken',style: TextStyle(fontWeight: FontWeight.bold,),),
                                      Text('with Fruit Salad',),
                                      SizedBox(height: 10.0,),
                                      Container(
                                        height: 2.0,
                                        width: 75.0,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(height: 10.0,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12.5),
                                              image: DecorationImage(image: AssetImage('images/chris.jpg'),),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text('James Oliver',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 15.0,),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15.0,),
              child: Text(
                'September 7',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'TODAY',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Container(
                    height: 500.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage('images/breakfast.jpg'),fit: BoxFit.cover,)
                    ),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2.7, sigmaY: 2.7),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 250.0, left: 60.0),
                  child: Column(
                    children: [
                      Text(
                        'BEST OF',
                        style: TextStyle(
                          fontSize: 35.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'THE DAY',
                        style: TextStyle(
                          fontSize: 35.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        height: 5.0,
                        width: 50.0,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
