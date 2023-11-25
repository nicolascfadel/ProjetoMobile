import 'package:flutter/material.dart';
import 'package:flutter_application_p3/detalhamentoPag.dart';


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 37, 37),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment : MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: (){},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment : MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: (){},
                      ),
                    ]),
                )
              ],
            ),
             ),

             SizedBox(height: 25.0),
             Padding(
              padding: EdgeInsets.only(left: 40.0),
              // ignore: prefer_const_constructors
              child: Row(
                children: <Widget>[
                  Text( 'Cotil',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),),
                      SizedBox(width: 10.0),
                       Text( 'Suplementos',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                     
                      fontSize: 25.0),)
                ],
              ),
             ),
             SizedBox(height: 40.0,),
        
             Container(
              height: MediaQuery.of(context).size.height - 185.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.only(topLeft: Radius.circular(75.0)),
              ),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 300.0,
                      child: ListView(
                        children: [
                          _buildFoodItem(/*'assets/imagem1.png'*/'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4-coJPiQKOzyn0U6w27-SdllE2X7Q6rqSG-ndRSIhpme52i-EpJDOfdM-gJV4rbsBrLw&usqp=CAU', 'Whey Protein Dux 900g ', '\$155.90'),
                          _buildFoodItem(/*'assets/imagem2.png'*/'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-ELSxlNVd4o7qN24VxOo2EVrv3PmWDgTF6g&usqp=CAU', 'Whey Protein Growth 1Kg', '\$99.90'),
                          _buildFoodItem(/*'assets/imagem3.png'*/'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoXhuxAkzCI2cX8vjzZkEwRV7t5BEPpLOOOrvIK0q7LqPoOrqZM6q0tszztI-hXuU7foA&usqp=CAU', 'Whey Protein Prob. 900g', '\$110.90'),
                          _buildFoodItem(/*'assets/imagem4.png'*/'https://m.media-amazon.com/images/I/61+-qLbs+ZL._AC_UF1000,1000_QL80_.jpg', 'Whey Protein Max 900g', '\$130.90'),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 65.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Icon(Icons.search, color: Colors.black),

                        ),
                      ),
                      Container(
                        height: 65.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child:  Icon(Icons.shopping_basket, color: Colors.black),
                        ),
                      ),
                      Container(
                        height: 65.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style:  BorderStyle.solid,
                            width: 1.0
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF1C1428)
                        ),
                        child: Center
                        (
                          child: Text('Checkout',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 15.0
                          ),)
                           ),
                      )
                    ],
                  )
                ],
              ),
             )
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price){
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: (){
          
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MyPage(heroTag: imgPath, foodName: foodName, foodPrice: price)
          ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: imgPath,
                    child: Image(
                     /* image: AssetImage(imgPath),*/
                      image: NetworkImage(imgPath),
                      fit: BoxFit.cover,
                      height: 75.0,
                      width: 75.0
                    )
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          color: Colors.grey
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              color:Colors.black,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}