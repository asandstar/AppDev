import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Miku 互动")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/miku.jpg", width: 600), // 未来替换成 3D 模型
            const SizedBox(height: 60),
            const Text("点击与初音互动!", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
