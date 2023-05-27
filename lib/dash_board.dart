import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:st/Models/Posts_model.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<PostsModel> postList = [];
  Future<List<PostsModel>> getPostApi() async {
    final response = await http.get(
        Uri.parse('https://webhook.site/43341eff-9d65-4b18-ad4a-271585ac696b'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        postList.add(PostsModel.fromJson(i));
      }
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "search",
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  Text('Jobs found'),
                ],
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
                future: getPostApi(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Text("Loading");
                  } else {
                    return ListView.builder(
                        itemCount: postList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(8),
                            child: Card(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        // color: Colors.black,

                                        ),
                                    child: Image(
                                        image: NetworkImage(
                                      'https://i.pinimg.com/originals/f6/cd/ec/f6cdec717ad06eaec24b7c88b2f2cd15.jpg',
                                    )),
                                  ),
                                  Text(
                                    postList[index].developer.toString(),
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      child: Icon(Icons.bookmark_border),
                                    ),
                                  ),

                                  Text(postList[index].company.toString()),
                                  Text(postList[index].name.toString()),
                                  Text(postList[index].salary.toString()),

                                  // Text(postList[index].url.toString()),
                                ],
                              ),
                            ),
                          );
                        });
                  }
                }),
          )
        ],
      ),
    );
  }
}
