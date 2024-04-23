class Television {
  var _private0 = 123;
  void turnOn() {
    _illuminateDisplay();
    _activateIrSensor();
  }

  // ···
  void _illuminateDisplay() => print("hi");
  void _activateIrSensor() => print("hello");
}

class SmartTelevision extends Television {
  var _private = 666;
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApps();
  }

  // ···
  void _bootNetworkInterface() => print('hi');
  void _initializeMemory() => print('hello');
  void _upgradeApps() => print('world');
}

void main() {
  SmartTelevision tv = SmartTelevision();
  tv.turnOn();
  print(tv._private0);
  print(tv._private);
}
