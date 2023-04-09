/*
Dart中的抽象类：Dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口
 1、抽象类通过abstract关键字来定义
 2、子类继承抽象类通过 extends关键字来实现
 3、Dart中的抽象方法不能用abstract声明,Dart中没有实现的方法我称为抽象方法。
 4、如果子类继承抽象类必须得实现里面的抽象方法
 5、如果把抽象类当作接口的话必须的实现抽象类里面定义的饿所有属性和方法。
 6、抽象类不能被实例化，只有继承他的子类可以
 extends抽象类和implements区别：
  1、如果要复用抽象类里面的方法，并且要用抽象方法约束自类的话我们就用extends继承抽象类
  2、如果只是把抽象类当做标准的我们就用implements是想抽象类
*/


//案列：定义一个Animal类要求他的子类必须包含eat方法
abstract class Animal { //abstract 关键字标识是抽象类
  //添加属性或者函数方法
  String name = '张三';
  int age = 2;
  //抽象方法：方法名+（）注意抽象方法在抽象类中不要去实现
  eat();

  //抽象方法：方法名+（）注意抽象方法在抽象类中不要去实现如果实现了就是普通的方法
  run();

  printifo() {
    print('我是抽象类中的普通方法');
  }
}

class Dog extends Animal {//extends表示继承Animal类
  @override
  eat() {
    print('小狗在吃骨头');
  }

  @override
  run() {
    print('小狗在跑');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫在吃鱼');
  }

  @override
  run() {
    print('小猫在跑');
  }
}

void main() {
  Dog dog = Dog();
  dog.eat();
  dog.run();
  dog.printifo();

  Cat cat = Cat();
  cat.eat();
  cat.run();
  cat.printifo();


/**
 * Dart中的多态：
 * 允许将子类的指针赋值给父类型的指针，同一个函数调用会有不同的执行效果。
 * 子类的实例赋值给父类的引用.
 * 多态就是父类定义一个方法一不去实现,让她的子类去实现.
 * 下面举例说明
 */
  Animal dog1 = Dog();
  dog1.eat();

  Animal cat1 = Cat();
  cat1.eat();
}
