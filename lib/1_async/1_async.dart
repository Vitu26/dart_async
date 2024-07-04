//processo sincrono: sempre vai executar na sequencia que foi criado

//processo assincrono: é um processo onde uma parte dele não vai esperar a execução do outro, diferente do sincrono que as coisas são lineares
void main() {
  print('Iniciou o processo');
  int i = 0;
  p2();
  while (i < 2) {
    print(i);
    i++;
  }
  m2();
  print('finalizou');
}


void m2() {
  print('função 2');
}
//todo processo assincrono no dart é representado pela classe 'Future'
void p2() {
  Future.delayed(Duration(seconds: 2), () {
    print('jeff mama');
  });
}
