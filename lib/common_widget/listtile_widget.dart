import 'package:flutter/material.dart';
import 'package:simple_interest/screen/output_screen.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {super.key, required this.index, required this.imageName});
  final int index;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(imageName)),
      title: Text("Title $index"),
      subtitle: const Text("Bkt, Nepal"),
      trailing: Wrap(
        spacing: 8,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.forward),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.forest_rounded),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OutputScreen(
              index: index,
            ),
          ),
        );
      },
    );
  }
}
