import 'package:flutter/material.dart';

class Restaurant_food extends StatefulWidget {
  const Restaurant_food({Key? key}) : super(key: key);

  @override
  _Restaurant_foodState createState() => _Restaurant_foodState();
}

class _Restaurant_foodState extends State<Restaurant_food> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
      primary :false,
      padding :EdgeInsets.all(10.0),
      crossAxisSpacing:12.0,
      mainAxisSpacing:12.0,
      shrinkWrap :true,
        children: [
          _buildRestaurant('Tropical fruits','Greyish day','20-05-18',
          '5','assets/tropic.jpg'),
          _buildRestaurant('Orange fruits','Portugecis','20-05-18',
              '4','assets/oranges.jpg'
          ),
          _buildRestaurant('Springfield','States Dishes','20-05-18',
              '5','assets/almonds.jpg'
          ),
          _buildRestaurant('Breakfast Dine','Costa Rica','20-05-18',
              '3','assets/berries.jpg'
          ),
      ],










    );
  }
  _buildRestaurant(String name,String type,String date,String rating,String imgPath){
    return Container(
      padding: EdgeInsets.all(7.0),
      height: 150.0,
      width: 150.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 3.0,
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3.0,
          )
        ]
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100.0,
                width: 140.0,
                decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover
                )

                ),
              ),
              Positioned(
                top: 60.0,
                left: 100.0,
                child: Container(
                  height: 25.0,
                  width: 25.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.white
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 3.0,),
                      Text(rating,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.redAccent,

                      ),
                      ),
                      Icon(Icons.star,color: Colors.redAccent,size: 12,),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Text(name,
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Color(0xFF233467),
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(type,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 11.0,
                    color: Colors.grey)),
              Text(date,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'Montserrat',
                fontSize: 11.0
              ),)

            ],
          )

        ],
      ),
    );
  }
}
