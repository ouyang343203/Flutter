/**
 * 泛型：泛型函数接口里面的setBykey中T和Cache后面的key就是泛型
 */
abstract class Cache<T> {
  getBykey(String key);
  void setBykey(String key, T value);
}

class FlieCache<T> implements Cache<T> {
  @override
  getBykey(String key) {
    // TODO: implement getBykey
    throw UnimplementedError();
  }

  @override
  void setBykey(String key, T value) {
    print('我是文件缓存 把key=${key} value=${value}的数据写入到文件中');
  }
}

class MenoryCache<T> implements Cache<T> {//implemen表示遵循Cache就要实现Cache的接口
  @override
  getBykey(String key) {
    // TODO: implement getBykey
    throw UnimplementedError();
  }

  @override
  void setBykey(String key, T value) {
    print('我是内存缓存 把key=${key} value=${value}的数据写入到内存中');
  }
}
void main() {
  //4.0创建接口的时候指定里面创建数据的类型 下面尖括号里面就是指定了创建的类型
  FlieCache m = new FlieCache<String>();
  m.setBykey('index', '4');

  //接口的类型是Map类型
  MenoryCache m1 = new MenoryCache<Map>();
  m1.setBykey('index', {'name':'张三','age':3});  
}