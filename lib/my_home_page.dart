import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:model_user/models/user.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> usersList = [];

  void fetchFromApi() async {
    String url = 'https://jsonplaceholder.typicode.com/users';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var userList = (data as List).map((e) => User.fromJson(e)).toList();
      setState(() {
        usersList = userList;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Users',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(usersList[index].name!),
                Text(usersList[index].email!),
                Text(usersList[index].address!.street!),
                Text(usersList[index].address!.city!),
                Text(usersList[index].address!.geo!.lat!),
                Text(usersList[index].address!.geo!.lng!),
              ],
            ),
          );
        },
        itemCount: usersList.length,
      ),
    );
  }
}
