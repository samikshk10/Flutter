import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Home extends StatelessWidget {
  const Home({super.key});

  Future<dynamic> getFruits() async {
    // return Future.delayed(Duration(seconds: 2), () {
    //   return Future(() => 'FruityVice');
    // });
    // https://www.fruityvice.com/api/fruit/all
    var url = Uri.https('www.fruityvice.com', '/api/fruit/all');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body);
      return data;
    } else {
      throw Future.error("error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getFruits(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.data == null) {
          return Center(child: Text('No data available'));
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        } else {
          print(snapshot.data);
          var data = snapshot.data;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.blue,
                margin: EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                child: ListTile(
                  leading: Icon(
                    Icons.dining_rounded,
                    color: Colors.white,
                  ),
                  title: Text(
                    data[index]['name'],
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Text(
                    data[index]['family'],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
