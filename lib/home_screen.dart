import 'package:flutter/material.dart';
import 'player_model.dart';
import 'player_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _controller = PageController();
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final currentPlayer = demoPlayers[_pageIndex];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // gradient background based on current player
            AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    currentPlayer.primaryColor.withValues(alpha: 0.85),
                    currentPlayer.secondaryColor.withValues(alpha: 0.85),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),

            Column(
              children: [
                // top bar
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      const Text(
                        'Featured Players',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '• ${demoPlayers.length}',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white.withValues(alpha: 0.8),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.25),
                          borderRadius: BorderRadius.circular(999),
                        ),
                        child: const Icon(Icons.menu_rounded, size: 20),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),

                // player pages
                Expanded(
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: demoPlayers.length,
                    onPageChanged: (i) => setState(() => _pageIndex = i),
                    itemBuilder: (context, index) {
                      final player = demoPlayers[index];
                      final avatarTag = 'avatar-${player.name}';
                      final nameTag = 'name-${player.name}';
                      return PlayerScreen(
                        player: player,
                        avatarHeroTag: avatarTag,
                        nameHeroTag: nameTag,
                      );
                    },
                  ),
                ),

                // page indicators
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    demoPlayers.length,
                    (i) => Container(
                      width: i == _pageIndex ? 18 : 7,
                      height: 7,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(
                          alpha: i == _pageIndex ? 0.95 : 0.4,
                        ),
                        borderRadius: BorderRadius.circular(999),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
