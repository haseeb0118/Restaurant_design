import 'package:flutter/material.dart';
import 'package:restaurant_design/restaurant.dart';

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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

   late TabController tabController;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this ,length: 2);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',
        style: TextStyle(
          fontFamily: 'Montserrat',
          color: Colors.grey
        ),
        ),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios,color: Colors.grey,),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child:  IconButton(
              onPressed: (){},
              icon: Icon(Icons.edit,color: Colors.grey,),
            ),
          )

        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),

      body: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                        image: AssetImage('assets/chris.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 220.0,
                top: 70.0,
                child: Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2.0
                      )
                    ]
                  ),
                  child: Center(
                    child : Icon(Icons.fastfood,color: Colors.redAccent,size: 20.0,),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 15.0),
          Column(
            children: [
              Text('Chloe Hannouille',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10.0,),
                  Icon(Icons.location_on_outlined, color: Colors.grey,),

                  Text('Dhaka-Bangladesh',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.0
                  ),)
                ],
              ),

              SizedBox(height: 50.0),
              Container(
                height: 100.0,
                width: double.infinity,
                  color: Colors.grey.withOpacity(0.05),
                  padding: EdgeInsets.only(top: 30.0,left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('12k',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: 'Montserrat',
                                  color: Colors.redAccent
                              )),
                          SizedBox(height: 4.0),
                          Text('Followers',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15.0,
                                  color: Colors.grey
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Text('152',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            color: Colors.redAccent,
                          )),
                          SizedBox(height: 4.0),
                          Text('Following',
                          style: TextStyle(
                           fontFamily: 'Montserrat',
                           fontSize: 15.0,
                           color: Colors.grey
                          ))
                        ],
                      ),
                      Column(
                        children: [
                          Text('455',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            color: Colors.redAccent
                          ),),
                          SizedBox(height: 4.0),
                          Text('Taste Maker',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            color: Colors.grey
                          )),
                        ],
                      )
                    ],
                  )
              ),
              TabBar(
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Color(0xFFB6BDC7),
                isScrollable  :true,
                controller: tabController,
                labelColor: Color(0xFF33426F),
                tabs: [
                  Tab(
                    child: Text(
                      'My Restaurants',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0))),
                  Tab(
                    child: Text(
                      'My Wishlist',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0)))
                ],
              ),
              SizedBox(height: 15.0),
              Container(
                height: MediaQuery.of(context).size.height-450,
                child:
                TabBarView(
                  controller: tabController,
                    children: [
                      new Restaurant_food(),
                      new Restaurant_food(),
                    ]
                ),
              )

            ],
          )

        ],
)


    );
  }
}
