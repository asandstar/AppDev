import 'package:flutter/material.dart';

class VoiceChatScreen extends StatelessWidget {
  const VoiceChatScreen({Key? key}) : super(key: key);

  void _startVoiceChat() {
    print("初音: 你好呀！今天想聊点什么？");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("语音对话")),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: _startVoiceChat,
          icon: const Icon(Icons.mic),
          label: const Text("与初音聊天"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
