import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("设置")),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.color_lens),
            title: const Text("主题模式"),
            trailing: Switch(
              value: false, // 未来可以接入持久化存储
              onChanged: (bool value) {
                print("切换主题: $value");
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text("语言"),
            trailing: DropdownButton<String>(
              value: "简体中文",
              items: const [
                DropdownMenuItem(value: "简体中文", child: Text("简体中文")),
                DropdownMenuItem(value: "English", child: Text("English")),
                DropdownMenuItem(value: "日本語", child: Text("日本語")),
              ],
              onChanged: (String? value) {
                print("语言切换: $value");
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.face),
            title: const Text("选择模型"),
            trailing: DropdownButton<String>(
              value: "默认初音",
              items: const [
                DropdownMenuItem(value: "默认初音", child: Text("默认初音")),
                DropdownMenuItem(value: "初音·舞蹈版", child: Text("初音·舞蹈版")),
                DropdownMenuItem(value: "初音·战斗版", child: Text("初音·战斗版")),
              ],
              onChanged: (String? value) {
                print("选择的模型: $value");
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text("关于"),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: "Miku AR APP",
                applicationVersion: "1.0.0",
                applicationLegalese: "© 2024 初音 AI 互动",
              );
            },
          ),
        ],
      ),
    );
  }
}
