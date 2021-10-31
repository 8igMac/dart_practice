class Student {
  
  Student(String name) {
    print('Hello, I am $name');
  }

  void school() {
    print('I am studying in Cheng Kung Elementary School');
  }

  void age() {
    print('I am 8 years old');
  }
}

abstract class Course {
  void study();
}

mixin Math on Student {
  void math() => print("I study Math");
}

mixin Chinese on Student {
  void chinese() => print('I study Chinese');
}

mixin Science on Student {
  void science() => print('I study Science');
}

class First_grade extends Student with Chinese implements Course {
  First_grade(String name) : super(name) {
    print('I am a first grade student');
  }

  void study() {
    chinese();
  }
}

class Second_grade extends Student with Chinese, Math implements Course {
  Second_grade(String who) : super(who) {
    print('I am a seconf grade student');
  }

  @override
  void age() {
    print('I am 9 years old');
  }

  void study() {
    chinese();
    math();
  }
}

class Third_grade extends Student
    with Chinese, Math, Science
    implements Course {
  Third_grade(String who) : super(who) {
    print('I am third grade student');
  }

  @override
  void age() {
    print('I am 10 years old');
  }

  void study() {
    chinese();
    math();
    science();
  }
}

void main() {
  First_grade ken = First_grade('Ken');
  ken.age();
  ken.school();
  ken.study();

  Second_grade amy = Second_grade('Amy');
  amy.age();
  amy.school();
  amy.study();

  Third_grade dot = Third_grade('dot');
  dot.age();
  dot.school();
  dot.study();
}
