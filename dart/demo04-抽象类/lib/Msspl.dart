import 'Db.dart';
class Msspl implements Db {//此处implements意思是需要实现抽象类Db的接口
  @override
  String url; //数据库的请求地址
  Msspl(this.url); //默认构造函数

  @override
  add(String data) {
    print('这是Msspl的add方法' + data);
  }

  @override
  del() {
    // TODO: implement del
    throw UnimplementedError();
  }

  @override
  save() {
    // TODO: implement save
    throw UnimplementedError();
  }
}