import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            ListTile(
              leading: GestureDetector(
                onTap: () => showFullContent(context),
                child: Hero(
                  tag: 'hero-anim',
                  child: CircleAvatar(
                    backgroundImage: (NetworkImage('https://miro.medium.com/max/1400/1*73IgUxPfyXUKZAaIXgutrw.png')),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

showFullContent(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Scaffold(
            body: Center(
              child: Hero(
                tag: 'hero-anim',
                child: Image.network('https://miro.medium.com/max/1400/1*73IgUxPfyXUKZAaIXgutrw.png'),
              ),
            ),
          )));
}
