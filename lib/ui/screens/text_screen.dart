import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'This is a Text Widget',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.deepPurple,
            ),
          ),
          const Text(
            'Deserunt consequat deserunt qui laboris cupidatat. Lorem sunt officia deserunt pariatur nulla esse velit veniam. Reprehenderit aute culpa aliqua id sunt officia nostrud cupidatat occaecat eiusmod laboris. Aute labore nostrud dolore cillum aliquip aliquip occaecat cupidatat fugiat. Aliquip ullamco ut veniam ut.',
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 24),
          Text(
            'This is Montserrat',
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.green,
            ),
          ),
          Text(
            'This is Halant',
            style: GoogleFonts.halant(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.blue,
            ),
          ),
          Text(
            'This is Guerrilla',
            style: GoogleFonts.protestGuerrilla(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
          ),
          const Text(
            'This is Pacifico',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.amber,
            ),
          ),
        ]),
      ),
    );
  }
}
