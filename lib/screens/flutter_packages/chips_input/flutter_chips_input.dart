import 'package:chips_input/chips_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/flutter_packages/chips_input/chips_input_model.dart';

class FlutterChipsInput extends StatefulWidget {
  final String title;

  const FlutterChipsInput({Key key, this.title}) : super(key: key);

  @override
  _FlutterChipsInputState createState() => _FlutterChipsInputState();
}

class _FlutterChipsInputState extends State<FlutterChipsInput> {
  static const mockResults = <ChipsInputModel>[
    ChipsInputModel(
      'John Doe',
      'jdoe@flutter.io',
      'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4057996.jpg',
    ),
    ChipsInputModel(
      'Paul',
      'paul@google.com',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png',
    ),
    ChipsInputModel(
      'Fred',
      'fred@google.com',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png',
    ),
    ChipsInputModel(
      'Brian',
      'brian@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png',
    ),
    ChipsInputModel(
      'John',
      'john@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png',
    ),
    ChipsInputModel(
      'Thomas',
      'thomas@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png',
    ),
    ChipsInputModel(
      'Nelly',
      'nelly@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png',
    ),
    ChipsInputModel(
      'Marie',
      'marie@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png',
    ),
    ChipsInputModel(
      'Charlie',
      'charlie@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png',
    ),
    ChipsInputModel(
      'Diana',
      'diana@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png',
    ),
    ChipsInputModel(
      'Ernie',
      'ernie@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png',
    ),
    ChipsInputModel(
      'Gina',
      'fred@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ChipsInput(
            minLines: 1,
            maxLines: 4,
            decoration: const InputDecoration(border: OutlineInputBorder()),
            maxChips: 6,
            // remove, if you like infinity number of chips
            initialValue: [mockResults[1]],
            findSuggestions: (String query) {
              if (query.isNotEmpty) {
                var lowercaseQuery = query.toLowerCase();
                final results = mockResults.where((profile) {
                  return profile.name.toLowerCase().contains(query.toLowerCase()) ||
                      profile.email.toLowerCase().contains(query.toLowerCase());
                }).toList(growable: false)
                  ..sort(
                    (a, b) => a.name.toLowerCase().indexOf(lowercaseQuery).compareTo(
                          b.name.toLowerCase().indexOf(lowercaseQuery),
                        ),
                  );
                return results;
              }
              return mockResults;
            },
            onChanged: (data) {
              print(data);
            },
            chipBuilder: (context, state, ChipsInputModel profile) {
              return InputChip(
                key: ObjectKey(profile),
                label: Text(profile.name),
                avatar: CircleAvatar(
                  backgroundImage: NetworkImage(profile.imageUrl),
                ),
                onDeleted: () => state.deleteChip(profile),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              );
            },
            suggestionBuilder: (context, ChipsInputModel profile) {
              return ListTile(
                key: ObjectKey(profile),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(profile.imageUrl),
                ),
                title: Text(profile.name),
                subtitle: Text(profile.email),
              );
            },
          ),
        ));
  }
}
