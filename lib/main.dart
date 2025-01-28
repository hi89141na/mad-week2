import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Map<String, String>> apps = [
    {'name': 'Global Goals', 'icon': 'images/global-goals.png'},
    {'name': 'WA Business', 'icon': 'images/whatsapp.jpg'},
    {'name': 'ChatGPT', 'icon': 'images/chat-gpt.jpg'},
    {'name': 'Claude', 'icon': 'images/claude.png'},
    {'name': 'Smart Switch', 'icon': 'images/smart-switch.png'},
    {'name': 'Rapid VPN', 'icon': 'images/rapid-vpn.png'},
    {'name': 'Gemini', 'icon': 'images/gemini.jpg'},
    {'name': 'CapCut', 'icon': 'images/capcut.jpg'},
    {'name': 'TikTok', 'icon': 'images/tiktok.png'},
    {'name': 'Instagram', 'icon': 'images/instagram.png'},
    {'name': 'Status Saver', 'icon': 'images/status-saver.png'},
    {'name': 'Jazz Toolkit', 'icon': 'images/jazz-toolkit.jpg'},
    {'name': 'Jazz Business', 'icon': 'images/jazz-business.png'},
    {'name': 'Candy Crush', 'icon': 'images/candy-crush.png'},
    {'name': 'Snapseed', 'icon': 'images/snapseed.png'},
    {'name': 'new_basics', 'icon': 'images/flutter.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/wallpaper.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 25,
                      ),
                      itemCount: apps.length,
                      itemBuilder: (context, index) {
                        final app = apps[index];
                        return Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(app['icon']!),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Expanded(
                              child: Text(
                                app['name']!,
                                style: const TextStyle(fontSize: 12, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(bottom: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ]
                  ),
                ),

            ],
          ),
        ],
      ),
    );
  }
}