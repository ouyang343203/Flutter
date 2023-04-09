/*
自定义方法:
格式
返回类型  方法名称（参数1，参数2...）{
}
*/
//无返回类型方法
import 'dart:async';

void printinfo() {
  print('自定义方法');
}

//有返回值类型方法
int getNum() {
  var myNum = 123;
  return myNum;
}

String printuserinfo() {
  return 'str';
}

void main() {
  printinfo();
  print(getNum());
  print(printuserinfo());

//求数字范围内的和
  int sunNum(int n) {
    var sum = 0;
    for (var i = 1; i <= n; i++) {
      sum += i;
    }
    return sum;
  }

  var n = sunNum(60);
  print(n);

  //定义一个方法然后打印用户信息
  //固定参数的类型的函数
  String printuserinfowith(String username, int age) {
    return '姓名: $username----$age';
  }
  printuserinfowith('章三', 30);

//定义可选参数的函数 注意可选参数放在末尾用 [参数1，参数2，参数3...]
String 


}
