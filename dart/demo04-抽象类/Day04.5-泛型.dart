
/**
 * 泛型：解决类/接口的复用性、以及不特性数据类型的支持
 */

T fetchweithName<T>(T value1) {
  //传入T类型数据 返回的数据类型也要是T类型
  // print(value1, value2);
  return value1;
}

fetchwithName<T>(T value1) {
  //传入T类型数据 返回的数据类型不做要求
  // print(value1, value2);
  return value1;
}

class Mylist {
  List list = <int>[];
  void add(int valu) {
    this.list.add(valu);
  }

  List getList() {
    return list;
  }
}

//将Mylist1里面添加泛行类型的元素：直接在Mylist1后面添加 <T>
class Mylist1<T> {
  //此处的T就是泛型
  List list = <T>[];
  void add(T valu) {
    this.list.add(valu);
  }

  List getList() {
    return list;
  }
}

void main() {
  //1调用过程不固定类型
  print(fetchweithName('hello'));

  //2如果在调用过程要制定传入的数据类型可以
  print(fetchweithName<int>(123)); //此处的int就是制定了掉哟过的类型

//3集合中的数据类型指定
//3.1创建固定元素的集合
  List list = new List.filled(2, '');
  list[0] = '张三';
  list[1] = '李四';
  print(list);

//3.2 创建固定长度元素并且指定里面的元素类型
  List linst1 = new List<String>.filled(3, '');
  linst1[0] = '1年级';
  linst1[1] = '2年级';
  linst1[2] = '3年级';
  print(linst1);

  List linst2 = new List<int>.filled(2, 0);
  linst2[0] = 1;
  linst2[1] = 2;
  print(linst2);

//3.3给类里面添加int类型数据
  Mylist mylist = new Mylist();
  mylist.add(7);
  mylist.add(8);
  mylist.add(9);
  print(mylist.getList());

//3.4给类里面添加泛型类型数据在没有指定类型的前提下可以是任意类型
  Mylist1 mylist1 = Mylist1();
  mylist1.add('hello');
  mylist1.add('world');
  mylist1.add(12);
  mylist1.add(true);
  print(mylist1.getList());

  //3.5指定泛型类的类型:int就是指定类泛型的类型
  Mylist1 mylist2 = Mylist1<int>();
  mylist2.add(10);
  mylist2.add(9);
  print(mylist2.getList());

}
