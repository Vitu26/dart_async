void main() {
  print('inicio do P1');
  processo2();
  print('fim do P1');
}

Future<String> processo3() {
  print('inicio p3');
  return Future.delayed(Duration(seconds: 2), () => 'FIm do processo p3');
}

Future<void> processo2() async {
  print('inicio do p2');
  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 20) {
      print(i);
      i++;
    }
    print('fim do p2');
  });
}
