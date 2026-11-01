
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const StreamKuApp());
}

class StreamKuApp extends StatelessWidget {
  const StreamKuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STREAMKU',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF101116),
        colorScheme: const ColorScheme.dark(primary: Colors.red),
      ),
      home: const HomeScreen(),
    );
  }
}

class MovieData {
  final String title;
  final String genre;
  final String image;

  const MovieData(this.title, this.genre, this.image);
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const banners = [
    MovieData(
      'KOTA TERAKHIR',
      'Aksi • Petualangan • 2026',
      'https://images.unsplash.com/photo-1519608487953-e999c86e7455?w=1200',
    ),
    MovieData(
      'GALAKSI',
      'Sci-Fi • Petualangan • 2026',
      'https://images.unsplash.com/photo-1462331940025-496dfbfc7564?w=1200',
    ),
    MovieData(
      'JEJAK MISTERI',
      'Misteri • Drama • 2026',
      'https://images.unsplash.com/photo-1470252649378-9c29740c9fa8?w=1200',
    ),
  ];

  static const trending = [
    MovieData(
      'JEJAK',
      'Mystery',
      'https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=500',
    ),
    MovieData(
      'GALAKSI',
      'Sci-Fi',
      'https://images.unsplash.com/photo-1462331940025-496dfbfc7564?w=500',
    ),
    MovieData(
      'SENJA',
      'Drama',
      'https://images.unsplash.com/photo-1470252649378-9c29740c9fa8?w=500',
    ),
    MovieData(
      'SAMUDRA',
      'Adventure',
      'https://images.unsplash.com/photo-1500375592092-40eb2168fd21?w=500',
    ),
  ];

  static const popular = [
    MovieData(
      'MISI 9',
      'Action',
      'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=500',
    ),
    MovieData(
      'LANGIT',
      'Drama',
      'https://images.unsplash.com/photo-1519681393784-d120267933ba?w=500',
    ),
    MovieData(
      'PETUALANG',
      'Adventure',
      'https://images.unsplash.com/photo-1470770841072-f978cf4d019e?w=500',
    ),
    MovieData(
      'DUNIA BARU',
      'Sci-Fi',
      'https://images.unsplash.com/photo-1446776811953-b23d57bd21aa?w=500',
    ),
  ];

  static const topRated = [
    MovieData(
      'BINTANG',
      'Drama',
      'https://images.unsplash.com/photo-1534447677768-be436bb09401?w=500',
    ),
    MovieData(
      'CAHAYA',
      'Family',
      'https://images.unsplash.com/photo-1500534623283-312aade485b7?w=500',
    ),
    MovieData(
      'PERJALANAN',
      'Adventure',
      'https://images.unsplash.com/photo-1501785888041-af3ef285b470?w=500',
    ),
    MovieData(
      'HARAPAN',
      'Drama',
      'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?w=500',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 18,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              Row(
                children: [
                  const Text(
                    'STREAM',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'KU',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // KATEGORI
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Untuk Anda',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Film'),
                  Text('Serial'),
                  Text('Anak'),
                ],
              ),

              const SizedBox(height: 28),

              // NOW PLAYING
              const Text(
                'Now Playing',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              CarouselSlider(
                options: CarouselOptions(
                  height: 270,
                  viewportFraction: 0.92,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 4),
                  enableInfiniteScroll: true,
                ),
                items: banners.map((movie) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          movie.image,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: const Color(0xFF343A56),
                              child: const Icon(
                                Icons.movie,
                                size: 60,
                              ),
                            );
                          },
                        ),

                        Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Colors.transparent,
                                Color(0xE6000000),
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                'STREAMKU ORIGINAL',
                                style: TextStyle(
                                  color: Colors.white70,
                                  letterSpacing: 2,
                                  fontSize: 11,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                movie.title,
                                style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(movie.genre),
                              const SizedBox(height: 15),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.play_circle_fill,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Now Playing',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),

              const SizedBox(height: 30),

              // TRENDING
              const MovieSection(
                title: 'Trending',
                movies: trending,
              ),

              const SizedBox(height: 28),

              // POPULAR
              const MovieSection(
                title: 'Popular',
                movies: popular,
              ),

              const SizedBox(height: 28),

              // TOP RATED
              const MovieSection(
                title: 'Top Rated',
                movies: topRated,
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

// KOMPONEN POSTER FILM
class MovieSection extends StatelessWidget {
  final String title;
  final List<MovieData> movies;

  const MovieSection({
    super.key,
    required this.title,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 15),

        SizedBox(
          height: 215,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];

              return Container(
                width: 130,
                margin: const EdgeInsets.only(right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        movie.image,
                        width: 130,
                        height: 165,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 130,
                            height: 165,
                            color: const Color(0xFF343A56),
                            child: const Icon(
                              Icons.movie,
                              size: 40,
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      movie.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),

                    Text(
                      movie.genre,
                      style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
