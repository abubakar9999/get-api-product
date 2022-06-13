import 'package:flutter/material.dart';
import 'package:getaip/details.dart';

import 'http_integration.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get Data")),
      body: ourdata != null
          ? Container(
              height: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: ourdata.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Detelse(
                                    productModel: ourdata[index],
                                  )));
                    },
                    leading: Image.network(
                      ourdata[index].image.toString(),
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text("${ourdata[index].category}"),
                    subtitle: Text(ourdata[index].title.toString()),
                    trailing: Column(
                      children: <Widget>[
                        Text(ourdata[index].price.toString()),
                        Text(ourdata[index].rating!.count.toString()),
                      ],
                    ),
                  ),
                ),
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
