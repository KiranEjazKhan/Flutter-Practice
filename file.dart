//---------Encapsulation ----------------------
// data of the class is capsuled to not change the formula
// the variable can be accessed only through the set method name after the variable name
class dada {
  String _occupation = "";

  set shoba(String kam) {
    if (kam == null) {
      return;
    }
    _occupation = kam;
  }
}

//------------ Abstraction -------------------
//has abstract methods; having no body
//implicit pass and explicit pass

abstract class human {
  String name = "";
  String gender = "";
  int age = 0;

  work();
}

class family extends human {
  String f_name = "";
  String f_business = "";
  @override
  work() {
    print("$f_name's family business is $f_business\n");
  }

  @override
  play() {
    print("Our family play games");
  }
}

class parents extends human implements family, kids {
  @override
  work() {
    print("I am working\n");
  }

  @override
  String f_business = "";

  @override
  String f_name = "";

  @override
  play() {
    print("My kids play cricket");
  }
}

abstract class kids {
  play();
}

//--------- MIXIN ---------------
// no objects can  be made
// do not override defined funcytions, functionality is same
//no inheritance
// same for all classes

void main(List<String> args) {}

mixin walk {
  void walks() {
    print("walk with feets");
  }
}

mixin swim {
  void swims() {
    print("i can swim ");
  }
}

mixin fly {
  void flys() {
    print("I can fly");
  }
}

abstract class Animals {
  eat();
}

abstract class mamals extends Animals {}

class cat extends mamals with walk {
  @override
  eat() {
    print("mouse");
  }
}

class dolphin extends mamals with swim {
  @override
  eat() {
    print("fishes");
  }
}

class bat extends mamals with walk,fly {
  @override
  eat() {
    print("food");
  }
}
