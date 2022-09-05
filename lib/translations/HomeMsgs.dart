
import 'dart:collection';

import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': MsgCenter.share.collectTransEN(),
    'in':  MsgCenter.share.collectTransIN()
  };
}

class BaseGetXTrans{
 Map<String, String> transEn = new HashMap();
 Map<String, String> transIn = new HashMap();


  Map<String, String> collectTransEN(){
    return transEn;
  }
 Map<String, String> collectTransIN(){
   return transIn;
 }
}

class MsgCenter extends BaseGetXTrans  with HomeMsg,DetailMsg{
  MsgCenter._();

  static final MsgCenter _instance = MsgCenter._();

  static MsgCenter get share => _instance;

}


mixin HomeMsg on BaseGetXTrans{

  @override
  Map<String, String> collectTransEN() {
    var map = super.collectTransIN();
    Map<String, String> other = {
      "home_hello": "Hello World-home-en",
      "home_hello2": "Hello World-home-en2",
    };
    map.addAll(other);
    return map;
  }

  @override
  Map<String, String> collectTransIN() {
    var map = super.collectTransIN();
    Map<String, String> other = {
      'home_hello': 'Hello World-home-in',
    };
    map.addAll(other);
    return map;
  }
}

mixin DetailMsg on BaseGetXTrans{

  @override
  Map<String, String> collectTransEN() {
    var map = super.collectTransIN();
    Map<String, String> other = {
      'detail_hello': 'Hello World-detail-en',
    };
    map.addAll(other);
    return map;
  }

  @override
  Map<String, String> collectTransIN() {
    var map = super.collectTransIN();
    Map<String, String> other = {
      'detail_hello': 'Hello World-detail-in',
    };
    map.addAll(other);
    return map;
  }
}