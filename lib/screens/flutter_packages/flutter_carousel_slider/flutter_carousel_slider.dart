import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FlutterCarouselSlider extends StatefulWidget {
  final String title;

  const FlutterCarouselSlider({Key key, this.title}) : super(key: key);

  @override
  _FlutterCarouselSliderState createState() => _FlutterCarouselSliderState();
}

class _FlutterCarouselSliderState extends State<FlutterCarouselSlider> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 15,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            isScrollable: true,
            physics: BouncingScrollPhysics(),
            tabs: [
              Tab(text: 'Basic'),
              Tab(text: 'No center'),
              Tab(text: 'Image carousel'),
              Tab(text: 'More complicated image'),
              Tab(text: 'Enlarge strategy demo'),
              Tab(text: 'Manually controlled'),
              Tab(text: 'Noon-looping carousel'),
              Tab(text: 'Vertical carousel'),
              Tab(text: 'Fullscreen carousel'),
              Tab(text: 'On-demand carousel'),
              Tab(text: 'Carousel with indicator'),
              Tab(text: 'Image carousel'),
              Tab(text: 'Carousel change reason'),
              Tab(text: 'Keep pageView position'),
              Tab(text: 'Multiple item in one screen'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Basic(),
            NoCenter(),
            ImageCarousel(),
            MoreComplicatedImage(),
            EnlargeStrategy(),
            ManuallyControlled(),
            NoonLoopingCarousel(),
            VerticalCarousel(),
            FullScreenCarousel(),
            OnDemandCarousel(),
            CarouselWithIndicator(),
            PrefetchImageCarouse(),
            CarouselChangeReason(),
            KeepPageViewPosition(),
            MultipleItem(),
          ],
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(item, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    'No. ${imgList.indexOf(item)} image',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    )
    .toList();

class Basic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      body: CarouselSlider(
        options: CarouselOptions(),
        items: list
            .map(
              (item) => Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    item.toString(),
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class NoCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      body: CarouselSlider(
        options: CarouselOptions(
          disableCenter: true,
        ),
        items: list
            .map((item) => Container(
                  color: Colors.green,
                  child: Text(item.toString()),
                ))
            .toList(),
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(),
      items: imgList.map((item) => Center(child: Image.network(item, fit: BoxFit.cover, width: 1000))).toList(),
    );
  }
}

class MoreComplicatedImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: imageSliders,
        ),
      ],
    );
  }
}

class EnlargeStrategy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: imageSliders,
          ),
        ],
      ),
    );
  }
}

class ManuallyControlled extends StatefulWidget {
  @override
  _ManuallyControlledState createState() => _ManuallyControlledState();
}

class _ManuallyControlledState extends State<ManuallyControlled> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(enlargeCenterPage: true, height: 200),
          carouselController: _controller,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: OutlinedButton(
                onPressed: () => _controller.previousPage(),
                child: const Icon(Icons.arrow_back),
              ),
            ),
            Flexible(
              child: OutlinedButton(
                onPressed: () => _controller.nextPage(),
                child: const Icon(Icons.arrow_forward),
              ),
            ),
            ...Iterable<int>.generate(imgList.length)
                .map(
                  (int pageIndex) => Flexible(
                    child: OutlinedButton(
                      onPressed: () => _controller.animateToPage(pageIndex),
                      child: Text(pageIndex.toString()),
                    ),
                  ),
                )
                .toList(),
          ],
        ),
      ],
    );
  }
}

class NoonLoopingCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imageSliders,
      options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        initialPage: 2,
        autoPlay: true,
        scrollPhysics: const BouncingScrollPhysics(),
      ),
    );
  }
}

class VerticalCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        scrollDirection: Axis.vertical,
        autoPlay: true,
      ),
      items: imageSliders,
    );
  }
}

class FullScreenCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final double height = MediaQuery.of(context).size.height;
        return CarouselSlider(
          options: CarouselOptions(
            height: height,
            viewportFraction: 1.0,
            enlargeCenterPage: true,
            autoPlay: true,
          ),
          items: imgList
              .map((item) => Center(
                      child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    height: height,
                  )))
              .toList(),
        );
      },
    );
  }
}

class OnDemandCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 100,
      options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        autoPlay: true,
      ),
      itemBuilder: (ctx, index, realIdx) {
        return Text(index.toString());
      },
    );
  }
}

class CarouselWithIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class PrefetchImageCarouse extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PrefetchImageCarouseState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((url) {
            final int index = imgList.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index ? const Color.fromRGBO(0, 0, 0, 0.9) : const Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}

class _PrefetchImageCarouseState extends State<PrefetchImageCarouse> {
  final List<String> images = [
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      images.forEach((imageUrl) {
        precacheImage(NetworkImage(imageUrl), context);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider.builder(
        itemCount: images.length,
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        itemBuilder: (context, index, realIdx) {
          return Center(
            child: Image.network(
              images[index],
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          );
        },
      ),
    );
  }
}

class CarouselChangeReason extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselChangeReasonState();
  }
}

class _CarouselChangeReasonState extends State<CarouselChangeReason> {
  List<String> reasons = [
    'Carousel change reason - 0',
    'Carousel change reason - 1',
    'Carousel change reason - 2',
    'Carousel change reason - 3',
    'Carousel change reason - 4',
    'Carousel change reason - 5',
  ];
  String reason = '';
  final CarouselController _controller = CarouselController();

  void onPageChange(int index, CarouselPageChangedReason changeReason) {
    setState(() {
      reason = reasons[index].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                enlargeCenterPage: true,
                //aspectRatio: 16/9, //default
                onPageChanged: onPageChange,
                autoPlay: true,
              ),
              carouselController: _controller,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: OutlinedButton(
                    onPressed: () => _controller.previousPage(),
                    child: const Icon(Icons.arrow_back),
                  ),
                ),
                Flexible(
                  child: OutlinedButton(
                    onPressed: () => _controller.nextPage(),
                    child: const Icon(Icons.arrow_forward),
                  ),
                ),
                const SizedBox(width: 10),
                ...Iterable<int>.generate(imgList.length).map(
                  (int pageIndex) => Flexible(
                    child: OutlinedButton(
                      onPressed: () => _controller.animateToPage(pageIndex),
                      child: Text('$pageIndex'),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  const Text('page change reason: '),
                  Text(reason),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class KeepPageViewPosition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (ctx, index) {
        if (index == 3) {
          return CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              pageViewKey: const PageStorageKey<String>('carousel_slider'),
            ),
            items: imageSliders,
          );
        } else {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.blue,
            height: 200,
            child: const Text('other content'),
          );
        }
      }),
    );
  }
}

class MultipleItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider.builder(
        options: CarouselOptions(
          aspectRatio: 2.0,
          //enlargeCenterPage: false,
          viewportFraction: 1,
        ),
        itemCount: (imgList.length / 2).round(),
        itemBuilder: (context, index, realIdx) {
          final int first = index * 2;
          final int second = first + 1;
          return Row(
            children: [first, second].map((idx) {
              return Expanded(
                //flex: 1,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.network(imgList[idx], fit: BoxFit.cover),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
