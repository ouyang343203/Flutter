//系运算符
main() {
  // 1.1算数运算符
  int a = 13;
  int b = 5;

  print(a + b); //加
  print(a - b); //减
  print(a * b); //乘
  print(a / b); //除
  print(a % b); //其余
  print(a ~/ b); //取整

  // 1.2关系运算符： ==  、 !=  > 、< 、>= 、<=
  print(a == b);
  print(a > b);
  print(a < b);
  print(a != b);
  print(a <= b);
  print(a >= b);

// 1.3条件运算符
  bool flag = true;
  print('条件运算符取返'); // ！取返
  print(!flag); // ！取返

  bool flag1 = true;
  bool flag2 = false;
  print(flag1 && flag2); //＆&且 全部为true的话值为true 否则值为false

  int age = 30;
  String sex = '女';
  if (age == 20 || sex == "女") {
    print("$age --- $sex"); // ||或 全部为true的话值为true 否则值为false
  } else {
    print("不打印");
  }
}
