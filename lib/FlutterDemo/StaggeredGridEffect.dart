import 'package:flutter/material.dart';

class StaggeredGridEffect extends StatefulWidget {
  const StaggeredGridEffect({super.key});

  @override
  State<StaggeredGridEffect> createState() => _StaggeredGridEffectState();
}

class _StaggeredGridEffectState extends State<StaggeredGridEffect> {
  final List<MaterialColor> colorsList = [
    Colors.orange,
    Colors.amber,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.cyan,
    Colors.brown,
    Colors.indigo,
    Colors.green,
  ];
  int x = 0;

  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    double HEIGHT = MediaQuery.of(context).size.height;
    int widthCount = (WIDTH / 20).toInt();
    int heightCount = (HEIGHT * widthCount / 10).toInt();
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: widthCount,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemCount: heightCount,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (() => setState(
                  () {
                    if (x < colorsList.length - 1) {
                      x++;
                    } else {
                      x = 0;
                    }
                  },
                )),
            child: Container(
              color: colorsList[x],
            ),
          );
        },
      ),
    );
  }
}
