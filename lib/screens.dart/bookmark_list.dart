import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:todolistapp/provider/website_provider.dart';

class bookmarklist extends StatelessWidget {
  const bookmarklist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookmarked"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Consumer<WebsiteProvider>(
        builder: (context, WebsiteProvider, child) => Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: WebsiteProvider.bookmarkweb.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text(WebsiteProvider.bookmarkweb[index].title),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
