import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key});

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Audio Button')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                player.play(AssetSource('file_example_MP3_700KB.mp3'));
              },
              child: const Text('press for audio'),
            ),
            ElevatedButton(
              onPressed: () {
                player.stop();
              },
              child: const Text('Stop Audio'),
            ),
            ElevatedButton(
              onPressed: () {
                player.pause();
              },
              child: const Text('Pause Audio'),
            ),
            ElevatedButton(
              onPressed: () {
                player.resume();
              },
              child: const Text('Resume Audio'),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// class AudioScreen extends StatelessWidget {
//   final String audioPath = 'assets/audio.mp3';
//   final AudioPlayer audioPlayer = AudioPlayer();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Audio Screen')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             _playAudio();
//           },
//           child: Text('Play Audio'),
//         ),
//       ),
//     );
//   }

//   int _playAudio() async {
//     // Play audio from local asset
//     int result = await audioPlayer.play(audioPath, isLocal: true);
//     if (result == 1) {
//       // Success
//       print('Audio playing...');
//     }
//   }

//   @override
//   void dispose() {
//     audioPlayer.dispose();
    
//   }
// }
