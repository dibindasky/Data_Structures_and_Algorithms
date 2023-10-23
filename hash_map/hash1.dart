import 'dart:collection';

void main(){
  Map account=HashMap();
  account[1]='dibin';
  print(account);
  account.addAll({2:'amal',3:'arun'});
  print(account);
  account.forEach((key, value) => print('$key --> $value'));
  print(account.isEmpty);
  print(account.isNotEmpty);
  print(account.containsKey(2));
  print(account.containsValue('dibin'));
  // print(account.toString());
  account.removeWhere((key, value) => key%2==0);
  print(account);



}