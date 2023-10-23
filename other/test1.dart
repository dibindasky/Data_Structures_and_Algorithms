   bool isHappy(int n) {
      Set s={};
      while(n!=1){
          int cheq=n;
          List<int>a=[];
          while(cheq>0){
          a.add(cheq%10);
          cheq~/=10;
        }
        int sqr=0;
        a.forEach((element)=> sqr+=(element*element));
        if(s.contains(sqr))
            return false;
        s.add(sqr);
        n=sqr;
      }
      return true;
  }
  void main(){
    print(isHappy(19));
  }