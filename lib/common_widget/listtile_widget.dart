import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.accessible_forward),
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
        debugPrint("Button is clicked!!");
      },
    );
  }
}
