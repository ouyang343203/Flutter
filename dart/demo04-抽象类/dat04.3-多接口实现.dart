abstract class A {
  //abstract 关键字标识是抽象类
  late String urlA; //数据库的请求地址
  printA(String data);
}

abstract class B {
  //abstract 关键字标识是抽象类
  late String urlB; //数据库的请求地址
  printB(String data);
}

class C implements A,B {//implements表示类c实现抽象类A和抽象B的方法 注意这里不是多继承他是一个类实现多个接口并且他要实现所有的抽象类的接口，否则会报错
  @override
  //abstract 关键字标识是抽象类
  late String urlA; //数据库的请求地址
  late String urlB; //数据库的请求地址

  @override
  printA(String data){
    print(data);
  }
  printB(String data){
    print(data);
  }
}   
void main() {
  C c = C();
  c.printA('c');
}