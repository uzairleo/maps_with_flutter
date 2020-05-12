import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
void main()
{
  runApp(new MaterialApp(
    title: "maps_with_flutter",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       centerTitle: true,
        title: Column(
          children:<Widget>[
            Text("maps_with_flutter"),
            Text("MapBox Integration",style: TextStyle(fontSize: 16.0),),
          ]
        ),
      ),
      body: FlutterMap(
        options: MapOptions(
          center:LatLng(35.22, -101.83),
          maxZoom: 5.0,
        ),
        layers:[
          TileLayerOptions(
                  urlTemplate:
                      "https://api.mapbox.com/styles/v1/uzairleo/ck9t771db030p1imlx28rvm4b/draft.html?fresh=true&title=view&access_token=pk.eyJ1IjoidXphaXJsZW8iLCJhIjoiY2s5dTRvbnR1MDNibTNlcGFyMHowNGJkYSJ9.v_fva_-eZWXKpu9qbmSirQ",
                  additionalOptions: {
                    'accessToken':
                    'pk.eyJ1IjoidXphaXJsZW8iLCJhIjoiY2s5dDZrMDczMDBjZzNuczl5MHRuOG96dCJ9.h38NYuX8Kb3ZzUHheU1Kew',
                    'id': 'mapbox.mapbox-streets-v7'
                  })
        ],
      ),
    );
  }
}
