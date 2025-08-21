import 'package:flutter/material.dart';

class ProfilePageFaithful extends StatelessWidget {
  const ProfilePageFaithful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: const Color(0xFF3AA7E0),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Center(
                child: Text(
                  'AMORCILLO - LAB ACTIVITY 3',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 220,
                      height: 160,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/profile.jpg',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => Container(
                            color: Colors.grey[300],
                            alignment: Alignment.center,
                            child: const Text('IMAGE'),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Text('Evander Harold S. Amorcillo',
                        style: TextStyle(fontSize: 16, letterSpacing: 1.1)),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _statColumn('40', 'Folllowing'),
                        _statColumn('90', 'Followers'),
                        _statColumn('147', 'Likes'),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'I am Evander Harold S. Amorcillo, a dedicated student with a passion for technology and innovation. '
                      'I enjoy exploring new concepts in programming, software development, and design, and I continuously challenge myself to improve through hands-on projects. '
                      'My goal is to contribute to meaningful tech solutions that create a positive impact in people’s lives.',
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 26),
                    SizedBox(
                      width: 220,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
                          foregroundColor: Colors.black,
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: const Text('ADD BIO'),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _statColumn(String number, String label) {
    return Column(
      children: [
        Text(number, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 6),
        Text(label),
      ],
    );
  }
}

class ProfilePagePolished extends StatelessWidget {
  const ProfilePagePolished({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 22),
              color: theme.primaryColor,
              child: const Center(
                child: Text(
                  'AMORCILLO - LAB ACTIVITY 3',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.1,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 300),
                        child: AspectRatio(
                          aspectRatio: 4 / 3,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/profile.png',
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) => Container(
                                color: Colors.grey[300],
                                alignment: Alignment.center,
                                child: const Text('IMAGE'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text('Evander Harold S. Amorcillo',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        _PolishedStat(number: '150', label: 'Following'),
                        _PolishedStat(number: '150', label: 'Followers'),
                        _PolishedStat(number: '150', label: 'Likes'),
                      ],
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      'I am Evander Harold S. Amorcillo, a dedicated student with a passion for technology and innovation. '
                      'I enjoy exploring new concepts in programming, software development, and design, and I continuously challenge myself to improve through hands-on projects. '
                      'My goal is to contribute to meaningful tech solutions that create a positive impact in people’s lives.',
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 26),
                    SizedBox(
                      width: 220,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
                          foregroundColor: Colors.black,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('ADD BIO'),
                      ),
                    ),
                    const SizedBox(height: 24),
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

class _PolishedStat extends StatelessWidget {
  final String number;
  final String label;
  const _PolishedStat({required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(number, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        const SizedBox(height: 6),
        Text(label),
      ],
    );
  }
}
