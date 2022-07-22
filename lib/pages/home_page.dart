import 'package:flutter/material.dart';
import 'package:movie_app/pages/detail_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 48),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Stream',
                  style: TextStyle(
                    color: Color(0xFFFF8F71),
                    fontSize: 24,
                  ),
                ),
                TextSpan(
                  text: ' Everywhere',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          const ContinueWatchingWidget(),
          const SizedBox(height: 36),
          const Text(
            'Trending',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 336,
            child: PageView.builder(
              padEnds: false,
              controller: _pageController,
              pageSnapping: false,
              itemCount: 5,
              itemBuilder: (context, index) {
                return MovieCard();
              },
            ),
          )
        ],
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const DetailPage(),
        ),
      ),
      child: Container(
        width: 200,
        height: 336,
        margin: const EdgeInsets.all(8),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 0,
              child: Image.network(
                'https://i.pinimg.com/736x/41/97/78/4197782e3796c8980cf50665ade542d2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 16,
              bottom: 16,
              right: 16,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Star Wars: The Last Jedi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '4.8',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContinueWatchingWidget extends StatelessWidget {
  const ContinueWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 191,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.network(
              'https://ae01.alicdn.com/kf/HTB1pj5JIVXXXXcfXFXXq6xXFXXXF.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 16,
            bottom: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFF8F71),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Continue Watching',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
