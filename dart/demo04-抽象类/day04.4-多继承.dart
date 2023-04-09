/**
 * mixins:就是在类中混入其他的功能
 * 在Dart中可以使用mixins实现类似多继承的功能
 * 因为mixins使用的条件是随着Dart的版本一直在变，此处是Dart2.x中使用mixinx的条件：
 * 1、作为mixins的类只能继承自Object，不能继承其他类
 * 2、作为mixins的类不能有构造函数
 * 3、一个类可以mixins多个类
 * 4、mixins觉不是继承,也不是接口，而是一种全新的特性
 */

class Person {
  String name = 'Person';
  num age = 5;
  Person(this.name, this.age);
  void printperson() {
    print(this.name);
  }
}

class A {
  //注意A类不能继承其他类只能继承Object 并且A类型中不能有构造函数
  String name = 'name is a';

  //并且A类型中不能有构造函数
  // class.getinfo(String name){
  //   print('我是命名构造函数' + '${this.name}');
  // };

  void printA() {
    print('a');
  }
}

class B {
  //注意B类不能继承其他类只能继承Object
  void printB() {
    print('b');
  }
}

class C with A, B {}

//如果想要继承一个类同时又mixins 类可以使用下这中方式
class F extends Person with A, B {//extends：表示继承  with：表示遵循
  F(String name, num age) : super(name, age);
}

void main() {
  C c = C();
  c.printA();
  c.printB();

  F f = F('赵六',30);
  f.name = '王武';
  f.printB();
  f.printperson();
}
