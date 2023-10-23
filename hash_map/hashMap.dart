import 'dart:collection';

void hashMap(){
//creating an empty map
  Map<int,String> accounts=HashMap<int,String>();
//adding a single key and value to the map
  accounts[1]='Dibin';
//adding multiple value to the map at a time
  accounts.addAll({2:'Deepa',3:'Amal'});
//to get all keys in the map
  print(accounts.keys);
//to get all values in the map
  print(accounts.values);
//to get the number of key value pair
  print(accounts.length);

  print(accounts.entries);

  print(accounts.hashCode);
//over weiting the key 4 with value
  accounts[4]='arun';
  accounts[4]='dibi';

  accounts[5]='Sebi';
  accounts[6]='ebin';
//to remove where the condition sadtisfys 
  accounts.removeWhere((key, value) => key==6);
//try to acess a key not in the map will give null value
  print(accounts[7]);
//use of foreach in hashmap
  accounts.forEach((key, value)=> print('$key  :  $value'));
//to check the map is empty or not
  print(accounts.isEmpty);
  print(accounts.isNotEmpty);
//to get the value of given key
  print(accounts[1]);
//to get values in to a list
  List arrayV=accounts.values.toList();
  print(arrayV);
//to get keys in to a list
  List arrayK=accounts.keys.toList();
  print(arrayK);
//to clear the list
  accounts.clear();
}
void main(){
  hashMap();
}