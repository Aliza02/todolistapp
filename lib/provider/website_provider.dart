import 'package:flutter/cupertino.dart';
import 'package:todolistapp/screens.dart/bookmark_list.dart';
import 'package:todolistapp/screens.dart/list_of_websites.dart';

import '../models/websites.dart';

class WebsiteProvider extends ChangeNotifier {
  List<Websites> bookmarkweb = [];
  get websitelist {
    return Websites;
  }

  get getWeb {
    return bookmarkweb;
  }

  addWeb(Websites newWeb) {
    bookmarkweb.add(newWeb);
  }

  @override
  void notifyListeners();
}
