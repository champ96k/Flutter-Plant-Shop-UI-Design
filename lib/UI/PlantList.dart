import 'package:flutter/material.dart';
import 'package:flutterui_plants/UI/PlantDetails.dart';

class PlantList extends StatefulWidget {
  @override
  _PlantListState createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  ScrollController _scrollController;

  List allDescriptions = [
    'Aloe vera is a succelent plant of the genus Aloe. I\'ts medicinal uses and air purifying ability make it the plant that you shouldn\'t live without.',
    'Aerial plants have roots above the ground. Aerial plants are often found in rainforests where competition at ground level for light and food has lead to their evolution. Aerial plants can live off other plants and trees',
    'The roots of strangler plants are those in which the aerial roots eventually strangle the plant of which they grow',
    'Aloe vera is a succelent plant of the genus Aloe. I\'ts medicinal uses and air purifying ability make it the plant that you shouldn\'t live without.',
    'Aerial plants have roots above the ground. Aerial plants are often found in rainforests where competition at ground level for light and food has lead to their evolution. Aerial plants can live off other plants and trees',
    'Aerial plants are plants that do not have underground root systems; instead, they are located in areas above the ground.'
  ];

  List alltoKnow = [
    'Aloe vera is a succelent plant of the genus Aloe. I\'ts medicinal uses and air purifying ability make it the plant that you shouldn\'t live without.',
    'Aerial plants have roots above the ground. Aerial plants are often found in rainforests where competition at ground level for light and food has lead to their evolution. ',
    'The roots of strangler plants are those in which the aerial roots eventually strangle the plant of which they grow',
    'Aloe vera is a succelent plant of the genus Aloe. I\'ts medicinal uses and air purifying ability make it the plant that you shouldn\'t live without.',
    'Aerial plants have roots above the ground. Aerial plants are often found in rainforests where competition at ground level for light and food has lead to their evolution. ',
    'Aerial plants are plants that do not have underground root systems; instead, they are located in areas above the ground.'
  ];

  String description, allToKnowDescription;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changedesc);
    setState(() {
      description = allDescriptions[0];
      allToKnowDescription = alltoKnow[0];
    });
  }

  changedesc() {
    var value = _scrollController.offset.round();
    var descIndex = (value / 150).round();
    print(value);
    setState(() {
      description = allDescriptions[descIndex];
      allToKnowDescription = alltoKnow[descIndex];
    });
  }

  Widget customCard(var img, String plantType, String name, double price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlantDetails(img, name, plantType,
                          price, description, allToKnowDescription)));
            },
            child: Container(
              height: 325.0,
              width: 225.0,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff399D63)),
                height: 250.0,
                width: 225.0,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(""),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2),
                                  child: Text(
                                    "From",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Text(
                                  "₹ $price",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Image(
                      fit: BoxFit.cover,
                      image: AssetImage(img),
                      height: 160.0,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 25.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              plantType,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.30),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF8AC7A4), width: 0.5),
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFF399D63)),
                          child: Icon(Icons.wb_sunny,
                              color: Colors.white.withOpacity(0.4), size: 20.0),
                        ),
                        SizedBox(width: 15.0),
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF8AC7A4), width: 0.5),
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFF399D63)),
                          child: Icon(Icons.branding_watermark,
                              color: Colors.white.withOpacity(0.4), size: 20.0),
                        ),
                        SizedBox(width: 15.0),
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF8AC7A4), width: 0.5),
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFF399D63)),
                          child: Icon(Icons.hot_tub,
                              color: Colors.white.withOpacity(0.4), size: 20.0),
                        ),
                        SizedBox(width: 15.0),
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF8AC7A4), width: 0.5),
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFF399D63)),
                          child: Icon(Icons.help_outline,
                              color: Colors.white.withOpacity(0.4), size: 20.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 90.0, top: 300.0),
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.black),
              child:
                  Center(child: Icon(Icons.shopping_cart, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        left: 25.0,
        top: 25.0,
      ),
      children: <Widget>[
        Container(
          height: 370,
          child: ListView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              customCard("images/pic1.png", "OUTDOOR", "Ficus", 255.0),
              customCard("images/pic2.png", "INDOOR", "Ficus", 125.0),
              customCard("images/pic3.png", "PLANT", "Ficus", 248.0),
              customCard("images/pic4.png", "AERIAL", "Ficus", 99.0),
              customCard("images/pic5.png", "SPECIAL", "Ficus", 48.0),
              customCard("images/pic1.png", "INDOOR", "Ficus", 42.0),
            ],
          ),
        ),
        Text(
          "Description",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.30,
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description,
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
