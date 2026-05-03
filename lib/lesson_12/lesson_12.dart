import 'package:flutter/material.dart';

class LessonTwelve extends StatefulWidget {
  const LessonTwelve({super.key});

  @override
  State<LessonTwelve> createState() => _LessonTwelveState();
}

class _LessonTwelveState extends State<LessonTwelve> {
  int rating = 4;

  bool bakeryServiceLike = false;
  bool bakeryServiceDislike = false;

  bool bakeryAssortLike = false;
  bool bakeryAssortDislike = false;

  bool lavkaServiceLike = false;
  bool lavkaServiceDislike = false;

  bool lavkaAssortLike = false;
  bool lavkaAssortDislike = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF2FC),
      appBar: AppBar(
        title: const Text(
          'Оцінка візиту до магазину',
          style: TextStyle(
            color: Color(0xFF202124),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(bottom: 100),
            children: [
              _ratingBlock(),
              const SizedBox(height: 16),
              _sectionTitle(),
              const SizedBox(height: 12),

              _departmentBlock(
                title: 'Випічка',
                serviceLike: bakeryServiceLike,
                serviceDislike: bakeryServiceDislike,
                assortLike: bakeryAssortLike,
                assortDislike: bakeryAssortDislike,
                onServiceLike: () {
                  setState(() {
                    bakeryServiceLike = !bakeryServiceLike;
                    bakeryServiceDislike = false;
                  });
                },
                onServiceDislike: () {
                  setState(() {
                    bakeryServiceDislike = !bakeryServiceDislike;
                    bakeryServiceLike = false;
                  });
                },
                onAssortLike: () {
                  setState(() {
                    bakeryAssortLike = !bakeryAssortLike;
                    bakeryAssortDislike = false;
                  });
                },
                onAssortDislike: () {
                  setState(() {
                    bakeryAssortDislike = !bakeryAssortDislike;
                    bakeryAssortLike = false;
                  });
                },
              ),

              const SizedBox(height: 16),

              _departmentBlock(
                title: 'Лавка традицій',
                serviceLike: lavkaServiceLike,
                serviceDislike: lavkaServiceDislike,
                assortLike: lavkaAssortLike,
                assortDislike: lavkaAssortDislike,
                onServiceLike: () {
                  setState(() {
                    lavkaServiceLike = !lavkaServiceLike;
                    lavkaServiceDislike = false;
                  });
                },
                onServiceDislike: () {
                  setState(() {
                    lavkaServiceDislike = !lavkaServiceDislike;
                    lavkaServiceLike = false;
                  });
                },
                onAssortLike: () {
                  setState(() {
                    lavkaAssortLike = !lavkaAssortLike;
                    lavkaAssortDislike = false;
                  });
                },
                onAssortDislike: () {
                  setState(() {
                    lavkaAssortDislike = !lavkaAssortDislike;
                    lavkaAssortLike = false;
                  });
                },
              ),

              const SizedBox(height: 16),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Є що додати?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF202124),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              _textField('Поділіться загальним враженням'),
            ],
          ),

          // Sticky button
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
              color: Colors.white,
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: const Color(0xFF1135BA),
                  borderRadius: BorderRadius.circular(24),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Надіслати',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _ratingBlock() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(5, (index) {
          return GestureDetector(
            onTap: () => setState(() => rating = index + 1),
            child: Icon(
              index < rating ? Icons.star : Icons.star_border,
              color: const Color(0xFFFF8200),
              size: 36,
            ),
          );
        }),
      ),
    );
  }

  Widget _sectionTitle() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Яку оціночку поставите відділам?',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF13131E),
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _departmentBlock({
    required String title,
    required bool serviceLike,
    required bool serviceDislike,
    required bool assortLike,
    required bool assortDislike,
    required VoidCallback onServiceLike,
    required VoidCallback onServiceDislike,
    required VoidCallback onAssortLike,
    required VoidCallback onAssortDislike,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF13131E),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),

          _likeRow(
            title: 'Обслуговування',
            like: serviceLike,
            dislike: serviceDislike,
            onLike: onServiceLike,
            onDislike: onServiceDislike,
          ),

          const SizedBox(height: 8),

          _likeRow(
            title: 'Асортимент',
            like: assortLike,
            dislike: assortDislike,
            onLike: onAssortLike,
            onDislike: onAssortDislike,
          ),

          const SizedBox(height: 12),

          _textField('Розкажіть докладніше'),
        ],
      ),
    );
  }

  Widget _likeRow({
    required String title,
    required bool like,
    required bool dislike,
    required VoidCallback onLike,
    required VoidCallback onDislike,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F8FD),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0x14000000)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),

          Row(
            children: [
              GestureDetector(
                onTap: onDislike,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: dislike
                      ? const Color(0xFF2358D1)
                      : Colors.grey.shade300,
                  child: const Icon(
                    Icons.thumb_down,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: onLike,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: like
                      ? const Color(0xFF2358D1)
                      : Colors.grey.shade300,
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _textField(String hint) {
    return Container(
      height: 64,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      child: Text(hint, style: const TextStyle(color: Colors.grey)),
    );
  }
}
