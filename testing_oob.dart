void main() {
  Airplane().can_it_fly();
}

class Animal {
  String if_breath = "breathing";
  String if_moving = "moving ";
  String if_looking = "looking";

  void move() {
    print(if_moving);


    // print(user);
  }
}
// الوراثة بتكون شبة لما تعمل فانكشن وتديها ف الاقواس المتغيرات الوراثة بتاخد من الكلاس كل المتغيرات كانك عاملها this or self لكن في الفانكشن التانية

class Fish extends Animal {
  @override
  void move() {
    super.move();
    print("by swimming");
    print(if_breath);
    print(if_looking);
    print(if_moving);

  }
}
class bird extends Animal {
  @override
  //super is be like انت بتاخد الفاريابلز وبتعمل وبتعدل عليهم الفاريابلز اللي في الكلاس اللي بتستورد منة
  void move() {
    super.move();
    print("by flying");
  }
}
mixin can_Swim{
  void swim(){
    print("changing position by swimming ");

  }

}
mixin can_Fly{
  void fly(){
    print("changing position by flying ");

  }

}



class duck extends Animal with can_Fly,can_Swim {
  @override
  void move() {
    super.move();
    super.fly();
    super.swim();
    // print("by flying");
  }
}
class Airplane extends Animal with can_Fly{
  @override
  void can_it_fly(){
    super.fly();
    print(if_moving);
  }
}