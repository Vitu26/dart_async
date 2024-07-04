void main() {
  print('inicio do P1');
  processo2();
  //o future tem 2 estados, incompleto e concluido quem podem ser com valor ou com erro
  processo3().then((mensagem) {
    print(mensagem);
  }); //como se fosse uma promessa de retorno usando o then
  processo4()
      .then((mensagem) => print('mensagem do p4 $mensagem'))
      .catchError((erro) => print('Erro ao executar o processo 4'));
  processo4().then((mensagem) => print('mensagem do p4 $mensagem'),
      onError: (error) {
    print('tratando o erro pelo onerror do then');
  });

  processo3().then((value) => print(value)).whenComplete(() => print('finalizou com sucesso'));
}

Future<String> processo4() {
  print('inicio p4');
  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}

Future<String> processo3() {
  print('inicio p3');
  return Future.delayed(Duration(seconds: 1), () => 'FIm do processo p3');
}

Future<void> processo2() async {
  print('inicio do p2');
  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 2) {
      print(i);
      i++;
    }
    print('fim do p2');
  });
}
