import 'package:flutter/material.dart';

class SceneUnderstandingScreen extends StatelessWidget {
  const SceneUnderstandingScreen({Key? key}) : super(key: key);

  void _explainScene() {
    print("初音: 这个可能是一只猫哦！");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("智能识别")),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: _explainScene,
          icon: const Icon(Icons.visibility),
          label: const Text("分析画面"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
