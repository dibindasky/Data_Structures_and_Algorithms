 
    bool containsDuplicate(List<int> nums) {
    Set<int> num={...nums};
    print(num);
    if(num.length>nums.length) return false ;
    else
     return true;
  }

  void main(){
    List<int> a=[1,2,3,1];
    print(containsDuplicate(a));  
  }