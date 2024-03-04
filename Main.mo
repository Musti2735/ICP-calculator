// hesap makinesi

actor calculator {
  var cell : Int = 0;

  public func sum (s : Int) : async Int {
    cell += s;
    cell
  };

  public func sub (s : Int) : async Int {
    cell -= s;
    cell
  };

  public func imp (s:Int) : async Int{
    cell *=s;
    cell
  };

  public func div (s:Int) : async ?Int{
    if(s==0){
      null
    }
    else{
      cell /=s; 
      ?cell
    }
  };

  public func reset() : async() {
    cell :=0;
  };

};
