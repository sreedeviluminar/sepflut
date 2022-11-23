import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: HotelDetailsPage(),));
}
class HotelDetailsPage extends StatelessWidget {
  final String image = "assets/images/room3.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            foregroundDecoration: const BoxDecoration(
              color: Colors.black26
            ),
            height: 400,
            child: Image.asset(image, fit: BoxFit.cover)),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0,bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 250),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal:16.0),
                  child: Text(
                    "Crowne Plaza \nKochi, Kerala",
                    style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 16.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: const Text(
                        "8.4/85 reviews",
                        style: TextStyle(color: Colors.white, fontSize: 13.0),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.favorite_border),
                      onPressed: () {},
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.purple,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.purple,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.purple,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.purple,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.purple,
                                    ),
                                  ],
                                ),
                                const Text.rich(TextSpan(children: [
                                  WidgetSpan(
                                    child: Icon(Icons.location_on, size: 16.0, color: Colors.grey,)
                                  ),
                                  TextSpan(
                                    text: "8 km to LuluMall"
                                  )
                                ]), style: TextStyle(color: Colors.grey, fontSize: 12.0),)
                              ],
                            ),
                          ),
                          Column(
                            children: const <Widget>[
                              Text("\$ 200", style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0
                              ),),
                              Text("/per night",style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey
                              ),)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                            primary : Colors.purple,
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 32.0,
                            ),
                          ),
                          child: const Text("Book Now", style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white
                          ),),

                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Text("Description".toUpperCase(), style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0
                      ),),
                      const SizedBox(height: 10.0),
                      const Text(
                          "Crowne Plaza Kochi, Kerala, is an ideal staying place for both the professional and leisure travelers from across the world. It is placed amidst exotic surroundings that comprised of alluring attractions of the city. The hotel is blessed with excellent accommodation arrangements in the presence of fully furnished rooms and suites. The staying facilities are majestically complimented by the traditional Indian hospitality at this five-star property. Moreover, the extensive premises of the hotel consist of excellent arrangements for business and personal events.",
                           textAlign: TextAlign.justify, style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0
                          ),),
                      const SizedBox(height: 10.0),
                      const Text(
                          "Crowne Plaza Kochi, Kerala", textAlign: TextAlign.justify, style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0
                          ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: const Text("DETAIL",style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal
              ),),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: BottomNavigationBar(
              backgroundColor: Colors.white54,
              elevation: 0,
              selectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border),
                    label: "Favorites"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Settings"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
