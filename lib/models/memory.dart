class Memory {
  String _value = '0';
  double _result;
  String _number = '';
  List <double> numbers = [];
  List <String> operators = [];

  String get value {
    return _value;
  }

  double get result {
    return _result;
  }

  void applyCommand(String command) {   
    if (command == 'AC') {
      _allClear();
    } else if (command == '=') {
      numbers.add(double.parse(_number));
      _calculate();
    } else if (_value == '0' && command != '.') {
      _value = command;
    } else if (command == '+' || command == '-' || command == '÷' || command == 'x' || command == '%') {
      _value += command;
      operators.add(command);
      numbers.add(double.parse(_number));
      _number = '';
    } else {
      _value += command;
      _number += command;
    }
  }
  
  _allClear() {
    _value = '0';
    _result = null;
  }

  _calculate() {
    for (var item in numbers) {
      print(item);
    }
    numbers = [];
  }
}