import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(ScriptManagerApp());
}

class ScriptManagerApp extends StatelessWidget {
  const ScriptManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Script Manager',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.grey[900],
        scaffoldBackgroundColor: Colors.grey[850],
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      home: ScriptManagerScreen(),
    );
  }
}

class ScriptManagerScreen extends StatefulWidget {
  const ScriptManagerScreen({super.key});

  @override
  _ScriptManagerScreenState createState() => _ScriptManagerScreenState();
}

class _ScriptManagerScreenState extends State<ScriptManagerScreen> {
  List<FileSystemEntity> scripts = [];
  Process? runningProcess;

  @override
  void initState() {
    super.initState();
    _loadScripts();
  }

  void _loadScripts() {
    if (!Platform.isWindows) {
      _showSnackBar('This application only supports Windows.');
      return;
    }

    final directory = Directory('${Directory.current.path}/TrainerBattles');
    if (directory.existsSync()) {
      setState(() {
        scripts =
            directory
                .listSync(recursive: true)
                .where((file) => file is File && file.path.endsWith('.ahk'))
                .toList();
      });
    } else {
      _showSnackBar('TrainerBattles folder not found: ${directory.path}');
    }
  }

  void _runScript(FileSystemEntity script) async {
    if (!Platform.isWindows) {
      _showSnackBar('This application only supports Windows.');
      return;
    }

    if (runningProcess != null) {
      _showSnackBar('A script is already running. Please stop it first.');
      return;
    }

    try {
      // Normalize the script path for Windows
      String scriptPath = File(script.path).absolute.path;
      scriptPath = scriptPath.replaceAll('/', '\\'); // Ensure backslashes

      // Full path to AutoHotkey.exe (updated for v2)
      final autoHotkeyPath =
          'C:\\Program Files\\AutoHotkey\\v2\\AutoHotkey.exe';

      // Debugging output
      print('AutoHotkey Path: $autoHotkeyPath');
      print('Script Path: $scriptPath');

      // Start the process
      runningProcess = await Process.start(autoHotkeyPath, [scriptPath]);
      _showSnackBar('Script running: $scriptPath');
    } catch (e) {
      _showSnackBar('Failed to start script: $e');
    }
  }

  void _pauseScript() async {
    if (runningProcess == null) {
      _showSnackBar('No script is running.');
      return;
    }

    try {
      // Directly execute the Send, {F12} command using AutoHotkey
      final autoHotkeyPath =
          'C:\\Program Files\\AutoHotkey\\v2\\AutoHotkey.exe';
      await Process.run(autoHotkeyPath, ['/k', 'Send, {F12}']);

      _showSnackBar('Pause command sent.');
    } catch (e) {
      _showSnackBar('Failed to send pause command: $e');
    }
  }

  void _exitScript() {
    if (runningProcess == null) {
      _showSnackBar('No script is running.');
      return;
    }
    runningProcess?.kill();
    runningProcess = null;
    _showSnackBar('Script exited.');
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Script Manager'),
        backgroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: scripts.length,
              itemBuilder: (context, index) {
                final script = scripts[index];
                return ListTile(
                  title: Text(
                    script.path.split(Platform.pathSeparator).last,
                    style: TextStyle(fontSize: 14),
                  ),
                  trailing: TextButton(
                    onPressed: () => _runScript(script),
                    child: Text('Run', style: TextStyle(color: Colors.blue)),
                  ),
                );
              },
            ),
          ),
          Divider(color: Colors.grey),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: _pauseScript,
                  child: Text('Pause', style: TextStyle(color: Colors.orange)),
                ),
                TextButton(
                  onPressed: _exitScript,
                  child: Text('Exit', style: TextStyle(color: Colors.red)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
