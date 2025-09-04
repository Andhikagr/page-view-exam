import 'package:flutter/material.dart';

class OnboardingChat extends StatefulWidget {
  const OnboardingChat({super.key});

  @override
  State<OnboardingChat> createState() => _OnboardingChatState();
}

class _OnboardingChatState extends State<OnboardingChat> {
  int selectedIndex = 0;
  late PageController _pageController;

  final List<Map<String, dynamic>> dataFill = [
    {
      "image": "assets/chat-1.png",
      "title": "FIND",
      "content":
          "You can connect with the people around the world for doing chat, messages and make connections with them.",
    },
    {
      "image": "assets/chat-2.png",
      "title": "CHAT",
      "content":
          "Chat with the strangers to know each other better and have a nice compatibility.",
    },
    {
      "image": "assets/chat-3.png",
      "title": "VIDEO",
      "content":
          "You can share your videos and photos with your friend and connections.",
    },
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 2),
            SizedBox(
              height: 500,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                itemCount: dataFill.length,
                itemBuilder: (context, index) {
                  return OnboardContent(
                    image: dataFill[index]["image"],
                    title: dataFill[index]["title"],
                    content: dataFill[index]["content"],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                dataFill.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: AnimatedDot(isActive: selectedIndex == index),
                ),
              ),
            ),
            Spacer(flex: 5),
            selectedIndex == dataFill.length - 1
                ? TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.grey.shade800,
                    ),
                    icon: Icon(Icons.arrow_right_alt_outlined),
                    onPressed: () {},
                    label: Text("Get Started"),
                  )
                : TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.grey.shade800,
                    ),
                    icon: Icon(Icons.arrow_right_alt_outlined),
                    onPressed: () {
                      setState(() {
                        _pageController.jumpToPage(dataFill.length - 1);
                      });
                    },
                    label: Text("Skip"),
                  ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class AnimatedDot extends StatelessWidget {
  final bool isActive;

  const AnimatedDot({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 6,
      width: isActive ? 20 : 6,
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.grey.shade400,
        borderRadius: BorderRadius.circular(30),
      ),
      duration: Duration(milliseconds: 300),
    );
  }
}

class OnboardContent extends StatelessWidget {
  final String image, title, content;

  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: AspectRatio(aspectRatio: 1, child: Image.asset(image)),
          ),
          SizedBox(height: 80),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
          SizedBox(height: 30),
          Text(
            content,
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
