import 'package:flutter/material.dart';

class StageListTile extends StatelessWidget {
  StageListTile({
    @required this.imageUrl,
    @required this.name,
    @required this.onTap,
  });

  final String imageUrl;
  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 80.0,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.black54,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(imageUrl),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Container(
                    child: Text(
                      name,
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
