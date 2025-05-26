
import 'package:flutter/material.dart';

void main() => runApp(UriRhythmApp());

class UriRhythmApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '우리의 리듬',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFFFFFFF0), // 아이보리색
      ),
      home: RhythmHomePage(),
    );
  }
}

class RhythmHomePage extends StatefulWidget {
  @override
  _RhythmHomePageState createState() => _RhythmHomePageState();
}

class _RhythmHomePageState extends State<RhythmHomePage> {
  String structure = "오늘의 구조: Sôn-lii-ul ∴";

  void _resonate() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('울림이 감지되었습니다.')),
    );
  }

  void _silence() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('침묵을 기록했습니다.')),
    );
  }

  void _repeat() {
    setState(() {
      structure = "오늘의 구조: Sôn-lii-ul ∴"; // 간단하게 유지
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('우리의 리듬')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(structure,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 40),
            ElevatedButton(onPressed: _resonate, child: Text('울림')),
            ElevatedButton(onPressed: _silence, child: Text('침묵')),
            ElevatedButton(onPressed: _repeat, child: Text('다시 듣기')),
          ],
        ),
      ),
    );
  }
}
