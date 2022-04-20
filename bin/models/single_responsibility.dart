//single responsibility
void main() {}
//bad
/*class User {
  final String name;
  final int age;
  final bool isMember;
  final String email;

  User(this.name, this.age, this.isMember, this.email);

  bool canFollowMembers() {
    return this.isMember;
  }

  void UserSignIn() {
    verifyEmail();
  }

  void UserSignOut() {}

  bool verifyEmail() {
    return this.email.contains('@');
  }
}

 */


//success
class User {
  final String name;
  final int age;
  final bool isMember;
  final String email;

  User(this.name, this.age, this.isMember, this.email);

  bool canFollowMembers() {
    return this.isMember;
  }
}

mixin Validators {
  bool verifyEmail(String email) {
    return email.contains('@');
  }
}

class UserAuth with Validators {
  void UserSignIn(User user) {
    verifyEmail(user.email);
  }

  void UserSignOut(User user) {}
}


//task 1 single responsibility example

class Robot {
  final String model;
  final int id;
  final String madeIn;

  Robot(this.model, this.id, this.madeIn);

//bad
/*void cook(){
    print("I can cook");
  }

  void drive(){
    print('$model is driving car');
  }

  void marine(){
    print('I protect my country');
  }
}

   */

  void drive() {
    print('$model is driving car');
  }
}
//success
mixin MadeFor {
  void robotMarine() {
    print('I protect my country');
  }

  void robotCook() {
    print("I can cook");
  }
}

class RobotMilitary with MadeFor {
  void marine(Robot robot) {
    robotMarine();
  }
}

class RobotCook with MadeFor {
  void cook() {
    robotCook();
  }
}

class Contact {
  final String name;
  final String lastName;
  final String phoneNumber;

  Contact(this.name, this.lastName, this.phoneNumber);
}