class Memory {
  String _value = '0';

  String get value {
    return _value;
  }

  void applyCommand(String command) {
    if (command == 'AC') {
      _allClear();
    } else if (_value == '0' && command != '.') {
      _value = command;
    } else {
      _value += command;
    }
  }
  
  _allClear() {
    _value = '0';
  }
}