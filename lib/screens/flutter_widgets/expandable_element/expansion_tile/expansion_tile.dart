import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:flutter_a2z/constants/constants.dart';

class MyExpansionTile extends StatefulWidget {
  final String title;

  const MyExpansionTile({Key key, this.title}) : super(key: key);

  @override
  _MyExpansionTileState createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {
  String r310Details = 'The TVS RR310 is a super-premium motorcycle brand from the company and exerts high power performance with its riding dynamics.';
  String rtr1604v =
      'The TVS Apache RTR 160 4V is one of few options in the local market that can claim actual racing provenance. Developed by TVSs team of engineers with over three and a half decades of racing experience, it\'s fast, aggressive, and can be a difficult beast if you don\'t know what you are doing. ';

  UniqueKey keyTitle;
  bool isExpanded = false;

  void expandTile(){
    setState(() {
      isExpanded = true;
      keyTitle = UniqueKey();
    });
  }

  void shrinkTitle(){
    setState(() {
      isExpanded = false;
      keyTitle = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: const BorderSide(color: Colors.black12, width: 2),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        isExpanded ? shrinkTitle() : expandTile();
                      },
                      child: Image.asset(
                        'assets/images/apache_rr310.png',
                        fit: BoxFit.fill,
                        height: 200,
                        width: double.infinity,
                      ),
                    ),
                    ExpansionTile(
                      key: keyTitle,
                      initiallyExpanded: isExpanded,
                      childrenPadding: const EdgeInsets.all(10).copyWith(top: 0),
                      title: const Text(
                        'TVS Apache RR 310',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      onExpansionChanged: (isExpanded) {
                        CommonWidgets.showToast(context, isExpanded ? 'Expanded' : 'Close');
                      },
                      children: [
                        Text(
                          r310Details,
                          style: const TextStyle(fontSize: 17, height: 1.4),
                          textAlign: TextAlign.justify,
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Type',
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 5,
                              child: Text('SI, 4 stroke, 4 valve, Single cylinder, Liquid cooled, Reverse inclined'),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Engine:',
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 5,
                              child: Text('312.2cc'),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Maximum power:',
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 5,
                              child: Text(
                                  'Sport and Track mode - 25 kW @ 9700 engine rpm (34 PS @ 9700 engine rpm). Urban and rain mode - 19 kW @ 7600 engine rpm (25.8 PS @ 7600 engine rpm)'),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Maximum torque:',
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 5,
                              child: Text('Sport and Track mode - 27.3 Nm @ 7700 engine rpm'),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Max speed:',
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 5,
                              child: Text('160 km/h - Sport and Track mode. 125 km/h - Urban and rain mode'),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Details...',
                              style: themeData.textTheme.button,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: const BorderSide(color: Colors.black12, width: 2),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        //isExpanded ? shrinkTitle() : expandTile();
                      },
                      child: Image.asset(
                        'assets/images/apache_rtr_160_4V.png',
                        fit: BoxFit.fill,
                        height: 200,
                        width: double.infinity,
                      ),
                    ),
                    ExpansionTile(
                      childrenPadding: const EdgeInsets.all(10).copyWith(top: 0),
                      title: const Text(
                        'TVS Apache RR 310',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      onExpansionChanged: (isExpanded) {
                        CommonWidgets.showToast(context, isExpanded ? 'Expanded' : 'Close');
                      },
                      children: [
                        Text(
                          rtr1604v,
                          style: const TextStyle(fontSize: 17, height: 1.4),
                          textAlign: TextAlign.justify,
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Type',
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 5,
                              child: Text('SI, 4 stroke, Oil cooled'),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Engine:',
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 5,
                              child: Text('157.7cc'),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Maximum power:',
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 5,
                              child: Text('11.78 kW @ 8250 rpm (16.02 PS @8250 rpm)'),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Maximum torque:',
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 5,
                              child: Text('14.12 Nm @ 7250 rpm'),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Max speed:',
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 5,
                              child: Text('114 km/h'),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Details...',
                              style: themeData.textTheme.button,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
