/*
Dart中的接口和Java中的接口的区别：
 1、dart的接口没有interface关键字定义接口，而是普通类或抽象类都可以作为接口被实现
 2、使用implements关键字进行实现。
 3、如果实现的类是普通类，需要见普通类和抽闲类中的属性和方法全部复写一边
 4、抽象类可以定义抽象方法，普通类不可以，如果要实现Java接口的方式，一般使用抽象类。
*/

//案列：定义一个DB库支持myspl msspl mogodb 三个类里面有同样的方法
abstract class Db {
  //abstract 关键字标识是抽象类
  late String url; //数据库的请求地址
  //抽象方法：方法名+（）注意抽象方法在抽象类中不要去实现如果实现了就是普通的方法
  add(String data);
  save();
  del();
}