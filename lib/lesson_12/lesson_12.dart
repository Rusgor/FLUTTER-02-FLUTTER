import 'package:flutter/material.dart';

class LessonTwelve extends StatefulWidget {
  const LessonTwelve({super.key});

  @override
  State<LessonTwelve> createState() => _LessonTwelveState();
}

class _LessonTwelveState extends State<LessonTwelve> {
  int rating = 4;

  bool bakeryService = true;
  bool bakeryAssortment = false;

  bool lavkaService = false;
  bool lavkaAssortment = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      /// 🔝 APP BAR
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
          SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// ⭐ HEADER WITH STARS
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      /// ⭐⭐⭐⭐⭐ (тепер тут)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                rating = index + 1;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Icon(
                                Icons.star,
                                size: 34,
                                color: index < rating
                                    ? const Color(0xFFFF8200)
                                    : Colors.grey.shade300,
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                /// 🧾 TEXT FRAME (без зірок)
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Text(
                    'Яку оціночку поставите відділам?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF13131E),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                /// 🥐 ВИПІЧКА
                _DepartmentSection(
                  title: 'Випічка',
                  serviceValue: bakeryService,
                  assortmentValue: bakeryAssortment,
                  onServiceTap: (val) => setState(() => bakeryService = val),
                  onAssortmentTap: (val) =>
                      setState(() => bakeryAssortment = val),
                ),

                const SizedBox(height: 16),

                /// 🧀 ЛАВКА
                _DepartmentSection(
                  title: 'Лавка традицій',
                  serviceValue: lavkaService,
                  assortmentValue: lavkaAssortment,
                  onServiceTap: (val) => setState(() => lavkaService = val),
                  onAssortmentTap: (val) =>
                      setState(() => lavkaAssortment = val),
                ),

                const SizedBox(height: 24),

                /// ✍️ ДОДАТИ
                const Text(
                  'Є що додати?',
                  style: TextStyle(
                    color: Color(0xFF202124),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 12),

                Container(
                  height: 64,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0x14000000)),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Поділіться загальним враженням',
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// 🔵 BUTTON
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
              color: Colors.white,
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1135BA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Надіслати',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// 🔽 SECTION
class _DepartmentSection extends StatelessWidget {
  final String title;
  final bool serviceValue;
  final bool assortmentValue;
  final Function(bool) onServiceTap;
  final Function(bool) onAssortmentTap;

  const _DepartmentSection({
    required this.title,
    required this.serviceValue,
    required this.assortmentValue,
    required this.onServiceTap,
    required this.onAssortmentTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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

        _ServiceRow(
          title: 'Обслуговування',
          value: serviceValue,
          onTap: onServiceTap,
        ),

        const SizedBox(height: 8),

        _ServiceRow(
          title: 'Асортимент',
          value: assortmentValue,
          onTap: onAssortmentTap,
        ),

        const SizedBox(height: 8),

        Container(
          height: 64,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0x14000000)),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Розкажіть докладніше',
            ),
          ),
        ),
      ],
    );
  }
}

/// 👍 👎 (виправлено порядок)
class _ServiceRow extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool) onTap;

  const _ServiceRow({
    required this.title,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
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
              /// 👎 ТЕПЕР ЗЛІВА
              _CircleButton(
                icon: Icons.thumb_down,
                active: !value,
                onTap: () => onTap(false),
              ),
              const SizedBox(width: 8),

              /// 👍 СПРАВА
              _CircleButton(
                icon: Icons.thumb_up,
                active: value,
                onTap: () => onTap(true),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// 🔵 BUTTON
class _CircleButton extends StatelessWidget {
  final IconData icon;
  final bool active;
  final VoidCallback onTap;

  const _CircleButton({
    required this.icon,
    required this.active,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: active ? const Color(0xFF2358D1) : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Icon(icon, size: 18, color: Colors.white),
      ),
    );
  }
}
