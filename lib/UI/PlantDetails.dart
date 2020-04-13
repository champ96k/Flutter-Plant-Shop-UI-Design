import 'package:flutter/material.dart';

class PlantDetails extends StatefulWidget {
  final img, name, plantType, price, description, allToKnowDescription;
  PlantDetails(this.img, this.name, this.plantType, this.price,
      this.description, this.allToKnowDescription);
  @override
  _PlantDetailsState createState() => _PlantDetailsState(this.img, this.name,
      this.plantType, this.price, this.description, this.allToKnowDescription);
}

class _PlantDetailsState extends State<PlantDetails> {
  var img, name, plantType, price, description, allToKnowDescription;
  _PlantDetailsState(this.img, this.name, this.plantType, this.price,
      this.description, this.allToKnowDescription);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff399D63),
      body: Stack(
        children: <Widget>[
          Positioned(
              top: MediaQuery.of(context).size.height / 2,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                  color: Colors.white,
                ),
              )),

          Positioned(
            top: 150, 
            left: MediaQuery.of(context).size.width / 6 ,  
            child: Image(
              height: 430, 
              width: 430, image: AssetImage(img)
            ),
          ),

          Positioned(
            top: 32,  
            left: 16.0,
            right: 16.0, 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,  
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios,color: Colors.white,), 
                  onPressed: () {}
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.6),      
                  child: IconButton(
                  icon: Icon(Icons.shopping_cart, color: Colors.white), 
                  onPressed: () {}
                ),
                )
              ],
            ),
          ),

          Positioned(
            top: 100, 
            left: 28.0,   
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
               Text(plantType,
               style: TextStyle(
                 fontSize: 16.0,
                 color: Colors.grey,
               ),
              ),  

              SizedBox(
                height: 3.0,  
              ), 

               Text(name, 
               style: TextStyle(
                 fontSize: 32.0,    
                 color: Colors.white,
                 fontWeight: FontWeight.w500,
                 letterSpacing: 1.30
               ),
              ), 

              SizedBox(
                height: 24.0,  
              ),


              Text("FROM",
               style: TextStyle(
                 fontSize: 16.0,    
                 color: Colors.grey,
                 fontWeight: FontWeight.w500,
               ),
              ),  
              SizedBox(
                height: 2.0,  
              ),

              Text("$price", 
               style: TextStyle( 
                 fontSize: 18.0,    
                 color: Colors.white,
               ),
              ), 

               SizedBox(
                height: 24.0,  
              ),


              Text("SIZE",
               style: TextStyle(
                 fontSize: 16.0,    
                 color: Colors.grey,
               ),
              ),  
              SizedBox(
                height: 2.0,  
              ),

              Text("Small", 
               style: TextStyle( 
                 fontSize: 18.0,    
                 color: Colors.white,
               ),
              ), 

                SizedBox(
                height: 26.0,  
              ),  
 
              CircleAvatar(
                radius: 28,  
                backgroundColor: Colors.black,
                child: Icon(Icons.shopping_cart,color: Colors.white, ),
              )


              ],
            ),
          ),

          Positioned(
            top: 520,   
            left: 25.0,   
            child: Text("All to Know...",
            style: TextStyle(
              fontSize: 26.0,
              color: Colors.black,
              fontWeight: FontWeight.w500,
             ), 
            ),
          ),
 

           Positioned(
            top: 565,     
            left: 25.0, 
            right: 25.0,   
            child: Container(
              child: Text(allToKnowDescription,
              style: TextStyle(
                fontSize: 16.0, 
                color: Colors.grey[600],
               ), 
              ),
            ),
          ),

           Positioned(
            top: 650,   
            left: 25.0,   
            child: Text("Details",
            style: TextStyle(
              fontSize: 26.0,
              color: Colors.black,
              fontWeight: FontWeight.w500,
             ), 
            ),
          ),


           Positioned(
            top: 690,          
            left: 25.0, 
            right: 25.0,   
            child: Container(
              child: Text(allToKnowDescription,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
               ), 
              ),
            ),
          )



         
        ],
      ),
    );
  }
}
