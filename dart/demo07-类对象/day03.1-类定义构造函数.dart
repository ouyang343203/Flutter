//
import 'lib/Animal.dart';
import 'lib/Boy.dart';
import 'lib/Rect.dart';
import 'day03.2-静态属性和静态方法.dart';

//类的定义 class开头 然后是类名称 首字母大写
class Person {
  //添加属性或者函数方法
  String name = '张三';
  int age = 2;
//有返回值的函数
  String getage() {
    return '${this.age}';
  }

  String changege(int ageNumber, String name) {
    this.age = ageNumber;
    this.name = name;
    return '${this.age} ---${this.name}';
  }

// 函数的可选参数
  void method1(String name, [int age = 1, int? h]) {
    print('name is $name, age is $age, h is $h');
  }

  void method2(String name, {int? age, String? add}) {
    print('name is $name, age is $age, h is $add');
  }

//无返回值的函数
  void getinfo() {
    print('${this.age}---${this.name}');
  }

//构造函数：默认构造函数他会在创建对象的时候自动调用
//默认构造函数：他是类名开头只能有一个默认构造函数
  Person() {
    print('我是Person类里默认的构造函数创建这个类的实例是会自动调用' + '${this.name}------${this.age}');
  }

//命名构造函数：Person.XXX(参数1,参数2,参数,)
  Person.setinfo(int age, String name) {
    print('我是命名构造函数' + '${this.name}----${this.age}');
  }
}

class Student {
  String name = '';
  int age = 0;

  //自定义的构造函数
  Student(String name, int age) {
    this.name = name;
    this.age = age;
  } //此处的构造函数可以简写Student(this.name, this.age);

  void printinfor() {
    print('我是自定义的构造函数' + '${this.name}----${this.age}');
  }

  //命名构造函数：类名.方法名称()
  Student.now(String name, int age) {
    print('我是命名构造函数:' + name);
  }
}

void main() {
  var person1 =
      new Person(); //创建实例变量 也可以指定类型创建   Person person1 = new Person();
  print(person1.changege(47, '李四'));
  person1.getinfo();

//有默认值造函数
  person1.method1('name', 4);
//使用命名构造函数创建
  var person2 = Person.setinfo(23, '王五');
  print(person2.age);

//使命自定义构造函数创建
  var student = Student('李四', 60);
  student.printinfor();

//创建命名构造函数实例变量
  var student2 = Student.now('王五', 80);
  print(student2.age);

  Animal cat = new Animal('小猫', 23);
  //print(cat.name);//添加了下滑线就是私有的不能在访问
  cat.publicinfo();

  Boy boy = new Boy('李小现', 23);
  print(boy.name); //添加了下滑线就是私有的不能在访问

  Rect react = Rect(12.3, 15);
  print(react.area()); //通过调用普通函数获取面积额
  print(react.receivearea); //通过调用get方法直接点余法调用形式获取面积

  react.aresheight = 40; //调用set方法直接点余法
  print(react.receivearea); //调用get方法直接点余法

  Cat.name = '汤姆猫';
  Cat.show();
}
