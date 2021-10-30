abstract class Teacher {
  String name = "";
  void introduction() {
    print("My name is $name. I am a teacher , Nice to meet you.");
  }
}

class trigger_Lu extends Teacher with nlp {
  String name = "盧文祥";

  void google() {
    print("你們不要都迷戀google");
  }

  void three() {
    print("實驗室以三為多");
  }

  void water() {
    print("我這一輩子都沒有幫我的老師倒水");
  }
}

class trigger_Xin extends Teacher with nlp {
  String name = "張景新";

  void slience() {
    print("我不知道他講了甚麼");
  }

  void skill() => print("我會瘋狂換背景");
}

class nlp {
  void common_skill() {
    print("我主修NLP");
  }
}

class Xin extends trigger_Xin {
  @override
  void introduction() {
    super.introduction();
    skill();
    slience();
  }
}

class Lu extends trigger_Lu {
  @override
  void introduction() {
    super.introduction();
    google();
    three();
    water();
  }
}

void main() {
  var L = Lu();
  var X = Xin();

  L.introduction();
  X.introduction();
}
