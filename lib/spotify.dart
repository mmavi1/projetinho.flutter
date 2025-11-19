import 'package:flutter/material.dart';

class SpotifyPage extends StatelessWidget {
  const SpotifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Aqui vamos colocar a parte da música (título, artista, coração)
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hai Mushkil Title Track (From "Hai Mushkil")',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Pritam, Arijit Singh',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.green,
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Aqui vai o slider de progresso da música
            Column(
              children: [
                Slider(
                  value: 1,
                  min: 0,
                  max: 185,
                  onChanged: (value) {},
                  activeColor: Colors.green,
                  inactiveColor: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('0:06', style: TextStyle(color: Colors.white)),
                    Text('3:05', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Aqui vamos colocar os botões de controle (shuffle, skip, play, etc.)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.shuffle, color: Colors.white),
                Icon(Icons.skip_previous, color: Colors.white, size: 40),
                // Play com fundo e borda
    Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white, // fundo
        shape: BoxShape.circle, // formato circular
        border: Border.all(
          width: 2,
        ),
      ),
      child: const Icon(
        Icons.play_arrow,
        color: Color.fromARGB(255, 0, 0, 0),
        size: 60,
      ),
    ),
                Icon(Icons.skip_next, color: Colors.white, size: 40),
                Icon(Icons.repeat, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }//widget build
}
