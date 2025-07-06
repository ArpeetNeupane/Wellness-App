import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:lottie/lottie.dart';

class QuotesDetailScreen extends StatefulWidget {
  final String category;

  const QuotesDetailScreen({
    super.key,
    required this.category,
  });

  @override
  State<QuotesDetailScreen> createState() => _QuotesDetailScreenState();
}

class _QuotesDetailScreenState extends State<QuotesDetailScreen> {
  int currentPage = 0;
  late PageController pageController;
  Set<String> likedQuotes = {};
  final FlutterTts flutterTts = FlutterTts();

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Map<String, List<Map<String, String>>>  quotes = {
    'Feeling Blessed': [
      {
        'quote': 'Count your blessings, not your problems',
        'author': 'Unknown',
      },
      {
        'quote': 'Be thankful for what you have; you\'ll end up having more',
        'author': 'Oprah Winfrey',
      },
      {
        'quote': 'Gratitude turns what we have into enough',
        'author': 'Anonymous',
      },
      {
        'quote': 'The thankful heart opens the door to a wonderful world',
        'author': 'Unknown',
      },
      {
        'quote': 'Blessed are those who can give without remembering and receive without forgetting',
        'author': 'Unknown',
      },
    ],
    'Pride Month': [
      {
        'quote': 'Be yourself; everyone else is already taken',
        'author': 'Oscar Wilde',
      },
      {
        'quote': 'Love is love is love is love',
        'author': 'Lin-Manuel Miranda',
      },
      {
        'quote': 'The only way to deal with an unfree world is to become so absolutely free that your very existence is an act of rebellion',
        'author': 'Albert Camus',
      },
      {
        'quote': 'You are imperfect, permanently and inevitably flawed. And you are beautiful',
        'author': 'Amy Bloom',
      },
    ],
    'Self-worth': [
      {
        'quote': 'Your value doesn\'t decrease based on someone\'s inability to see your worth',
        'author': 'Unknown',
      },
      {
        'quote': 'You are enough just as you are',
        'author': 'Meghan Markle',
      },
      {
        'quote': 'Self-worth comes from one thing – thinking that you are worthy',
        'author': 'Wayne Dyer',
      },
      {
        'quote': 'To love yourself right now, just as you are, is to give yourself heaven',
        'author': 'Alan Cohen',
      },
    ],
    'Love': [
      {
        'quote': 'The best thing to hold onto in life is each other',
        'author': 'Audrey Hepburn',
      },
      {
        'quote': 'Love is not about how much you say "I love you", but how much you can prove that it\'s true',
        'author': 'Unknown',
      },
      {
        'quote': 'Being deeply loved by someone gives you strength, while loving someone deeply gives you courage',
        'author': 'Lao Tzu',
      },
      {
        'quote': 'Love yourself first and everything else falls into line',
        'author': 'Lucille Ball',
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    //getting quote list for current category
    final List<Map<String, String>> currentQuotes = quotes[widget.category] ?? [];

    return Scaffold(
      // extendBodyBehindAppBar: false, //preventing the body from rendering behind the app bar
      appBar: AppBar(
        // backgroundColor: const Color.fromARGB(255, 16, 2, 16),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          widget.category,
          style: TextStyle(
            fontSize: 23
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                '${currentPage + 1}/${quotes[widget.category]?.length ?? 0}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: PageView.builder( //allows us to scroll
          controller: pageController,
          scrollDirection: Axis.vertical, //vertical
          onPageChanged: (index) {
            setState(() {
              currentPage = index;
            });
          },
          itemCount: currentQuotes.length, //telling the pageview how many pages/quotes to render
          itemBuilder: (context, index) {
            final quote = currentQuotes[index]; //index is used to get the quote from the list
            final quoteText = quote['quote']!;
            final author = quote['author']!;
            final isLiked = likedQuotes.contains(quoteText);
        
            return Padding(
              padding: EdgeInsets.only(right: 20, left: 20, top: 10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromRGBO(79, 77, 77, 0.737)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                        onPressed: () async {
                          await flutterTts.speak('$quoteText by $author');
                        },
                        icon: Icon(Icons.volume_up, size: 25),
                      ),
                    ),
                  ),
                  const SizedBox(height: 160),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '"${quote['quote']}"',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          '- ${quote['author']}',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 120),
                  //scroll up gesture animation (using Lottie)
                  SizedBox(
                    height: 100,
                    width: 130,
                    child: Lottie.asset('assets/animations/scroll_up_hand.json'),
                  ),
                  const Text(
                    'Swipe up',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 85),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (isLiked) {
                              likedQuotes.remove(quoteText);
                            } else {
                              likedQuotes.add(quoteText);
                            }
                          });
                        },
                        icon: Icon(
                          isLiked ? Icons.favorite : Icons.favorite_outline,
                          color: isLiked ? Colors.red : Colors.white,
                          size: 40,
                        ),
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        onPressed: () {
                          SharePlus.instance.share(
                            ShareParams(
                              text: '"$quoteText"\n- $author',
                            ),
                          );
                        },
                        icon: Icon(Icons.share_outlined, size: 40),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}