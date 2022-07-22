import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.maxFinite,
            height: 280,
            color: Colors.amber,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Image.network(
                    'https://media.glamour.com/photos/56957ec78fa134644ec24e88/master/w_1600%2Cc_limit/entertainment-2014-06-the-giver-movie-poster-main.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Align(
                  child: Container(
                    width: 72,
                    height: 72,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black54,
                    ),
                    child: const Icon(
                      Icons.play_arrow,
                      color: Color(0xFFFF8F71),
                      size: 54,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Star Wars: The Last Jedi',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.schedule,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '152 Minutes',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 48),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '7.8',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(
                  color: Colors.white,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Release Date',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'December 9, 2017',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 56),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Genre',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Action',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(
                  color: Colors.white,
                ),
                const SizedBox(height: 24),
                const Text(
                  'Synopsis',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, Finn ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 24),
                RelatedMoviesSection()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RelatedMoviesSection extends StatelessWidget {
  const RelatedMoviesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Related Movies',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 142,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Image.network(
                'https://i0.wp.com/www.heyuguys.com/images/2015/10/star-wars-the-force-awakens-poster-landscape.jpg?fit=1536%2C864&ssl=1',
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Star Wars: The Last Jedi',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
