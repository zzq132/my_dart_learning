void main() {
  Musician jack = Musician();
  jack.performer();
  jack.musician();
  jack.entertainMe();

  SingerDancer tom = SingerDancer();
  tom.musician1();
  tom.musicalPerformer();
  tom.singerDancer();

  Virtuoso v = Virtuoso();
  v.playInstrument('piano');
  Novice n = Novice();
  n.playInstrument('violin');
}

mixin Musicial {
  bool canPlayPiano = true;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

class Performer {
  void performer() => print("I am a performer");
}

class Musician extends Performer with Musicial {
  void musician() => print("I am a musician");
}

//......
class Musician1 {
  void musician1() => print("I am musician1");
}

//on关键字限制mixin类可以混入哪些类中，这个类的子类也可以混入
mixin MusicalPerformer on Musician1 {
  void musicalPerformer() => print("I am musicalperformer");
}

class SingerDancer extends Musician1 with MusicalPerformer {
  void singerDancer() => print("I am singerdancer");
}
/* 
以下代码会报错因为MusicalPerformer类没有用on声明test类可以混入自己
class test with MusicalPerformer{
  ...
} 
*/

abstract mixin class Musician2 {
  // No 'on' clause, but an abstract method that other types must define if
  // they want to use (mix in or extend) Musician:
  void playInstrument(String instrumentName);

  void playPiano() {
    playInstrument('Piano');
  }

  void playFlute() {
    playInstrument('Flute');
  }
}

class Virtuoso with Musician2 {
  // Use Musician as a mixin
  void playInstrument(String instrumentName) {
    print('Plays the $instrumentName beautifully');
  }
}

class Novice extends Musician {
  // Use Musician as a class
  void playInstrument(String instrumentName) {
    print('Plays the $instrumentName poorly');
  }
}
