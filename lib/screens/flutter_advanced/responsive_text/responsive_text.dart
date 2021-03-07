import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_a2z/constants/constants.dart';

class ResponsiveText extends StatefulWidget {
  final String title;

  const ResponsiveText({Key key, this.title}) : super(key: key);

  @override
  _ResponsiveTextState createState() => _ResponsiveTextState();
}

class _ResponsiveTextState extends State<ResponsiveText> {
  final autoSizeGroup = AutoSizeGroup();
  bool hasGroups = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          // buildText(),
          // const SizedBox(height: 10),
          // buildTextUsingFittedBox(),
          // const SizedBox(height: 10),
          // buildTextUsingFittedBoxWithWidth(),
          // const SizedBox(height: 10),
          // buildOneLineAutoSizeText(context),
          // const SizedBox(height: 10),
          // buildTwoLineAutoSizeText(context),
          // const SizedBox(height: 10),
          // buildMinimumLineAutoSizeText(context),
          // const SizedBox(height: 10),
          // buildReplaceByWidthText(),
          // const SizedBox(height: 10),
          // buildReplaceByHeightText(),
          // const SizedBox(height: 10),
          // buildPresetText(),
          // const SizedBox(height: 10),
          // buildPresetFixedText(),
          const SizedBox(height: 10),
          buildFrontSizeSteps(),
          const SizedBox(height: 10),
          buildTextWithAutoSize(),
        ],
      ),
    );
  }

  Widget buildText() => const Text(
        'This is a normal text',
        style: TextStyle(fontSize: 32),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );

  Widget buildTextUsingFittedBox() => Container(
        color: Colors.red,
        height: 100,
        child: const FittedBox(
          child: Text(
            'This is a normal text with FittedBox for responsiveness test',
            style: TextStyle(fontSize: 64, color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      );

  Widget buildTextUsingFittedBoxWithWidth() => Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width * .5,
        child: const FittedBox(
          child: Text(
            'This is a normal text with FittedBox and Width',
            style: TextStyle(fontSize: 64, color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      );

  Widget buildOneLineAutoSizeText(BuildContext context) {
    const maxLines = 1;
    return Container(
      color: Colors.red,
      width: MediaQuery.of(context).size.width,
      child: const AutoSizeText(
        'This text will fit the maximum $maxLines line and use AutoSizeText package',
        style: TextStyle(fontSize: 64, color: Colors.white),
        maxLines: maxLines,
      ),
    );
  }

  Widget buildTwoLineAutoSizeText(BuildContext context) {
    const maxLines = 2;
    return Container(
      color: Colors.red,
      child: const AutoSizeText(
        'This text will fit the maximum $maxLines line and use AutoSizeText package',
        style: TextStyle(fontSize: 64, color: Colors.white),
        maxLines: maxLines,
      ),
    );
  }

  Widget buildMinimumLineAutoSizeText(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const AutoSizeText(
        'This text will fit the minimum line and use AutoSizeText package',
        style: TextStyle(fontSize: 64, color: Colors.white),
        minFontSize: 32,
        maxFontSize: 48,
        maxLines: 1,
      ),
    );
  }

  Widget buildReplaceByWidthText() {
    const longText = 'There is a long description that will be displayed as long as it fits.';
    const shortText = 'This is a short description';
    return Container(
      color: Colors.red,
      child: const AutoSizeText(
        longText,
        maxLines: 1,
        minFontSize: 32,
        style: TextStyle(fontSize: 22, color: Colors.white),
        overflowReplacement: Text(
          shortText,
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
      ),
    );
  }

  Widget buildReplaceByHeightText() {
    const longText = 'There is a long description that will be displayed as long as it fits.';
    const shortText = 'This is a short description';
    return Container(
      color: Colors.red,
      child: const AutoSizeText(
        longText,
        maxLines: 1,
        minFontSize: 20,
        style: TextStyle(fontSize: 22, color: Colors.white),
        overflowReplacement: Text(
          shortText,
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
      ),
    );
  }

  Widget buildPresetText() {
    return Container(
      color: Colors.red,
      child: const AutoSizeText(
        'This text has a preset font size',
        presetFontSizes: [48, 40, 32],
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget buildPresetFixedText() {
    return Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width * 0.3,
      child: const AutoSizeText(
        'Preset Fixed Text',
        presetFontSizes: [48, 40, 32],
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget buildFrontSizeSteps() {
    return const AutoSizeText(
      'This Text decreases by Font Size steps',
      minFontSize: 20,
      stepGranularity: 10,
      style: TextStyle(fontSize: 60),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget buildTextWithAutoSize() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AutoSizeText(
          'This text is a group and receives smallest font size of member',
          group: hasGroups ? autoSizeGroup : null,
          style: const TextStyle(
            fontSize: 48,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 1,

        ),
        const SizedBox(height: 20),
        AutoSizeText(
          'This text is a group and receives smallest font size of member',
          group: hasGroups ? autoSizeGroup : null,
          style: const TextStyle(
            fontSize: 48,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
        ),
        Column(
          children: [
            const Text(
              'Activate',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Transform.scale(
              scale: 1.5,
              child: Switch.adaptive(
                value: hasGroups,
                onChanged: (value) => setState(() => hasGroups = value),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
