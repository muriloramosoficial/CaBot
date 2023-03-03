import 'package:flutter/material.dart';
import 'package:flutter_super_html_viewer/flutter_super_html_viewer.dart';

class PythonCodeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pythonCode = '''
import pyautogui
import time

def encontrar_imagem():
    imagem_alvo = 'R.png'

    while True:
        pos = pyautogui.locateOnScreen(imagem_alvo)

        if pos is not None:
            pyautogui.click(pos)
            time.sleep(5)
        else:
            time.sleep(1)

encontrar_imagem()
''';

    return HtmlContentViewer(htmlContent: pythonCode);
  }
}
