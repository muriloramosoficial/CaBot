import 'package:desktop_test/auth/auth.dart';
import 'package:desktop_test/home/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:system_theme/system_theme.dart';

/// Checks if the current environment is a desktop environment.
bool get isDesktop {
  if (kIsWeb) return false;
  return [
    TargetPlatform.windows,
    TargetPlatform.linux,
    TargetPlatform.macOS,
  ].contains(defaultTargetPlatform);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CaBot',
      home: HomePage(),
    );
  }
}

// Para criar uma tela em Flutter com um botão que executa o código Python acima, podemos utilizar a biblioteca flutter_html_view para incorporar o código Python em um widget HTML, e o pacote flutter_launcher_icons para adicionar um ícone ao aplicativo. O código abaixo mostra como isso pode ser feito:

// Primeiro, adicione as dependências necessárias ao arquivo pubspec.yaml:
// yaml
// Copy code
// dependencies:
//   flutter:
//     sdk: flutter
//   flutter_html_view: ^0.5.13

// dev_dependencies:
//   flutter_launcher_icons: ^0.9.2
// Em seguida, execute o comando flutter pub get para baixar as dependências.

// Adicione o ícone do aplicativo colocando uma imagem de ícone em assets/icon/icon.png. Em seguida, adicione o seguinte código ao arquivo pubspec.yaml para gerar os ícones do aplicativo automaticamente:

// yaml
// Copy code
// flutter_icons:
//   android: true
//   ios: true
//   image_path: "assets/icon/icon.png"
// Crie um widget que incorpora o código Python usando flutter_html_view:
// python
// Copy code
// import 'package:flutter/material.dart';
// import 'package:flutter_html_view/flutter_html_view.dart';

// class PythonCodeWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     String pythonCode = '''
// import pyautogui
// import time

// def encontrar_imagem():
//     imagem_alvo = 'imagem_alvo.png'

//     while True:
//         pos = pyautogui.locateOnScreen(imagem_alvo)

//         if pos is not None:
//             pyautogui.click(pos)
//             time.sleep(5)
//         else:
//             time.sleep(1)

// encontrar_imagem()
// ''';

//     return HtmlView(data: pythonCode);
//   }
// }
// Crie uma tela com um botão que executa o código Python quando pressionado:
// less
// Copy code
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_html_view/flutter_html_view.dart';
// import 'package:flutter_launcher_icons/constants.dart' as Constants;

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Python Bot')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: PythonCodeWidget(),
//             ),
//             RaisedButton(
//               child: Text('Executar'),
//               onPressed: () {
//                 Process.run('python', ['script.py']).then((result) {
//                   print(result.stdout);
//                   print(result.stderr);
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// Neste exemplo, criamos um widget PythonCodeWidget que incorpora o código Python em um widget HTML usando a classe HtmlView do flutter_html_view.

// Na tela HomePage, exibimos o widget PythonCodeWidget e um botão "Executar". Quando o botão é pressionado, usamos a classe Process da biblioteca padrão do Dart para executar o script Python script.py que contém o código de busca da imagem. O resultado da execução do script é impresso no console. Observe que o arquivo script.py precisa estar presente na pasta do aplicativo.