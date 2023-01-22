import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:todolistapp/models/websites.dart';
import 'package:todolistapp/provider/website_provider.dart';
import 'package:todolistapp/screens.dart/bookmark_list.dart';

class listofWebsites extends StatelessWidget {
  const listofWebsites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                    leading: Icon(Icons.bookmark),
                    title: Text('Bookmark List'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const bookmarklist()));
                    }),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Bookmark List App'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Website1'),
              subtitle: Text('A tutorial website'),
              trailing: IconButton(
                onPressed: () {
                  Provider.of<WebsiteProvider>(context, listen: false)
                      .addWeb(Websites('Web1'));
                  print('printed');
                },
                icon: new Icon(Icons.bookmark_add),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Website2'),
              subtitle: Text('A Entertainment website'),
              trailing: IconButton(
                onPressed: () {
                  Provider.of<WebsiteProvider>(context, listen: false)
                      .addWeb(Websites('web2'));
                  print('printed');
                },
                icon: new Icon(Icons.bookmark_add),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Website3'),
              subtitle: Text('An Ecommerce website'),
              trailing: IconButton(
                onPressed: () {
                  Provider.of<WebsiteProvider>(context, listen: false)
                      .addWeb(Websites('Web3'));
                  print('printed');
                },
                icon: new Icon(Icons.bookmark_add),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Website4'),
              subtitle: Text('A Blog website'),
              trailing: IconButton(
                onPressed: () {
                  Provider.of<WebsiteProvider>(context, listen: false)
                      .addWeb(Websites('Web4'));
                  print('printed');
                },
                icon: new Icon(Icons.bookmark_add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
