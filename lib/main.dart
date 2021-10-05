import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
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

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body : ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 350.0,
                width: double.infinity,
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                color: Color(0xFFFA624F),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
              ),
              Positioned(
                top : 125.0,
                left: 15.0,
                right: 15.0,
                child: Material(
                  elevation: 7.0,
                  borderRadius: BorderRadius.circular(7.0),
                  child: Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 75.0,
                left: MediaQuery.of(context).size.width/2 - 50.0,
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                      image: AssetImage('assets/chris.jpg'),
                      fit: BoxFit.cover,),
                  ),
                ),
              ),
              Positioned(
                top: 190.0,
                left: MediaQuery.of(context).size.width/2-105.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Chris pratt',
                    style:TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )
                      ,),
                    SizedBox(height: 7.0),
                    Text(
                      'China',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          color: Color(0xFFFA624F),
                          onPressed: (){},
                          child: Text(
                            'Message',
                            style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          color: Colors.grey,
                          onPressed: (){},
                          child: Text(
                            'Following',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                        )

                      ],
                    )
                  ],
                ),
              ),


            ],
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(left: 15.0,right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Menu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Comfortaa',
                    fontSize: 17.0,
                  ),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 15.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
          SizedBox(height:10.0),
          Column(
            children: [
              menuCard('Berry banana milkshake','assets/bananaberry.jpeg','Breakfast',
                4,2.8,3.9),
              SizedBox(height: 10.0,),

              menuCard('Banana break','assets/bananabreak.jpg','Breakfast',
                  4,2.1,2.0),
              SizedBox(height: 10.0,),

              menuCard('Fruit break','assets/fruitbreak.jpeg','Breakfast',
                  3,1.8,1.0),
              SizedBox(height: 10.0,),
              menuCard('Dumpling ','assets/dumplings.jpeg','Breakfast',
                  2,0.3,1.9),
              SizedBox(height: 10.0,),
              menuCard('Fruit pancake','assets/fruitpancake.jpeg','Breakfast',
                  4,1.9,2.9),
              menuCard('Noodles','assets/noodles.jpeg','Breakfast',
                  4,2.3,2.9),
              SizedBox(height: 10.0,),



            ],
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 15.0 ,right :15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Works',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w300,
                    fontSize: 15.0,
                    color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: EdgeInsets.only(left: 15.0 ,right: 5.0),
            child: Container(
              height: 125.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  getWorks('assets/fruitbreak.jpeg'),
                  getWorks('assets/dumplings.jpeg'),
                  getWorks('assets/fruitpancake.jpeg'),
                  getWorks('assets/noodles.jpeg'),
                ],
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bought',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w300,
                      fontSize: 15.0,
                      color: Colors.grey
                  ),
                ),


              ],
            ),
          ),
          SizedBox(height: 10.0,),


        ],
      ),

    );
  }
  Widget getWorks(String imgPath){
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Container(
        height: 100.0,
        width: 125.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover
          )
        ),
      ),

    );

  }
  Widget menuCard(String title,String imgPath ,String type ,int rating ,double view,double likes){
    return Padding(
      padding : EdgeInsets.only(left :10.0,right :15.0),
      child: Material(
        borderRadius: BorderRadius.circular(7.0),
        elevation :7.0,
        child : Container(
          height :125.0,
        width : double.infinity,
        decoration :BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
              color: Colors.white,
        ),
          child: Row(
            children: [
              SizedBox(width: 10.0),
              Container(
                height: 100.0,
                width: 100.0,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                  ),

                ),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.0,),
                  Text(
                    title,
                    style :TextStyle(
                      fontFamily: 'Comfortaa',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                    )
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    type,
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0
                    ),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Row(
                    children: [
                      getStar(rating ,1),
                      getStar(rating ,2),
                      getStar(rating ,3),
                      getStar(rating ,4),
                      getStar(rating ,5),
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      Icon(Icons.remove_red_eye,
                      color: Colors.grey.withOpacity(0.4)),
                      SizedBox(width: 3.0),
                      Text(
                        view.toString(),
                      ),
                      SizedBox(width: 10.0),
                      Icon(Icons.favorite,
                          color: Colors.red),
                      SizedBox(width: 3.0,),
                      Text(
                        likes.toString()
                      )
                    ],
                  )

                ],
              )
            ],
          ),
        )

      ),

    );
  }
  Widget getStar(rating, index) {
    if (rating >= index) {
      return Icon(Icons.star, color: Colors.yellow);
    } else {
      return Icon(Icons.star, color: Colors.grey.withOpacity(0.5));
    }
  }

  }


