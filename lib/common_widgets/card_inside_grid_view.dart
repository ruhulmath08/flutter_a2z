import 'package:flutter/material.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class CardInsideGridView extends StatelessWidget {
  const CardInsideGridView({
    Key? key,
    required this.name,
    required this.details,
    required this.index,
    required this.onCardPress,
    required this.onDetailsTextPress,
    this.numberOfElements,
  }) : super(key: key);

  final String name;
  final String details;
  final int index;
  final VoidCallback onDetailsTextPress;
  final VoidCallback onCardPress;
  final int? numberOfElements;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: onCardPress,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          foregroundDecoration: (numberOfElements != null && numberOfElements! > 0)
              ? RotatedCornerDecoration(
                  color: Colors.blue,
                  geometry: const BadgeGeometry(width: 60, height: 60),
                  textSpan: TextSpan(
                    text: numberOfElements.toString(),
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                )
              : null,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: onDetailsTextPress,
                  child: Text(
                    details,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
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
