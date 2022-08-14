import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Que viva el Barca'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color palette app 2-6'),
          actions: [
            IconButton(onPressed: showDialog, icon: const Icon(Icons.info_outline))
          ],
        ),
        // https://colorhunt.co/
        body: (Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ColorPalette(
                  baseColor: '100720',
                  baseColor1: '31087B',
                  baseColor2: 'FA2FB5', 
                  baseColor3: 'FFC23C', 
                  callback: showColor),
                ColorPalette(
                  baseColor: '411530',
                  baseColor1: 'D1512D',
                  baseColor2: 'F5C7A9', 
                  baseColor3: 'F5E8E4', 
                  callback: showColor),
                ColorPalette(
                  baseColor: '293462',
                  baseColor1: 'D61C4E',
                  baseColor2: 'FEB139', 
                  baseColor3: 'FFF80A', 
                  callback: showColor),
                ColorPalette(
                  baseColor: '231955',
                  baseColor1: '1F4690',
                  baseColor2: 'E8AA42', 
                  baseColor3: 'FFE5B4', 
                  callback: showColor),
                ColorPalette(
                  baseColor: '3330E4',
                  baseColor1: 'F637EC',
                  baseColor2: 'FBB454', 
                  baseColor3: 'FAEA48', 
                  callback: showColor),
                ColorPalette(
                  baseColor: '000000',
                  baseColor1: '1A4D2E',
                  baseColor2: 'FF9F29', 
                  baseColor3: 'FAF3E3', 
                  callback: showColor),
              ],
            )),
        )));
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado, que viva el Barca',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
