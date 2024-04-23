import 'package:flutter/material.dart';
import 'package:mediaquirks/pages/home_page.dart';


class BlogPost {
  final String title;
  final String author;
  final String date;
  final String description;


  BlogPost({
    required this.title,
    required this.author,
    required this.date,
    required this.description,
    
  });
}

class Education extends StatelessWidget {
  final List<BlogPost> posts = [
    BlogPost(
      title: 'Eat a Variety of Foods',
      author: 'John Doe',
      date: 'April 20, 2024',
      description:
          'Include a variety of foods in your diet to ensure you get all the essential nutrients your body needs.',
    ),
    BlogPost(
      title: 'Stay Hydrated',
      author: 'Jane Smith',
      date: 'April 18, 2024',
      description:
          'Drink plenty of water throughout the day to stay hydrated and maintain optimal bodily functions.',
    ),
    BlogPost(
      title: 'Get Regular Exercise',
      author: 'Alice Johnson',
      date: 'April 15, 2024',
      description:
          'Engage in regular physical activity to improve your cardiovascular health and strengthen your muscles and bones.',
    ),
    BlogPost(
      title: 'Get Enough Sleep',
      author: 'Michael Brown',
      date: 'April 12, 2024',
      description:
          'Ensure you get enough restful sleep each night to allow your body to repair and rejuvenate.',
    ),
    BlogPost(
      title: 'Reduce Stress',
      author: 'Emily Davis',
      date: 'April 10, 2024',
      description:
          'Practice stress-reducing activities such as meditation, yoga, or deep breathing exercises.',
    ),
    BlogPost(
      title: 'Limit Sugar and Salt Intake',
      author: 'David Wilson',
      date: 'April 8, 2024',
      description:
          'Reduce your consumption of sugary and salty foods to lower your risk of developing chronic diseases.',
    ),
    BlogPost(
      title: 'Maintain a Healthy Weight',
      author: 'Sarah Clark',
      date: 'April 5, 2024',
      description:
          'Keep your weight within a healthy range to reduce your risk of obesity-related diseases.',
    ),
    BlogPost(
      title: 'Practice Good Hygiene',
      author: 'Mark Thompson',
      date: 'April 3, 2024',
      description:
          'Follow good hygiene practices such as washing your hands regularly to prevent the spread of germs.',
    ),
    BlogPost(
      title: 'Stay Connected',
      author: 'Jessica White',
      date: 'April 1, 2024',
      description:
          'Maintain social connections with friends and family to improve your mental and emotional well-being.',
    ),
    BlogPost(
      title: 'Seek Professional Help',
      author: 'Alex Turner',
      date: 'March 29, 2024',
      description:
          'Consult with healthcare professionals for personalized advice on maintaining a healthy lifestyle.',
    ),
    BlogPost(
  title: 'Performing CPR',
  author: 'John Smith',
  date: 'April 30, 2024',
  description:
      'Learn how to perform cardiopulmonary resuscitation (CPR) to help someone in cardiac arrest until professional help arrives.',
),

BlogPost(
  title: 'Stopping Bleeding',
  author: 'Emily Johnson',
  date: 'May 2, 2024',
  description:
      'Apply direct pressure to a wound using a clean cloth or bandage to stop bleeding. Elevate the injured area if possible.',
),

BlogPost(
  title: 'Treating Burns',
  author: 'Michael Brown',
  date: 'May 5, 2024',
  description:
      'For minor burns, cool the affected area with cold water and cover it with a clean, dry cloth. Seek medical attention for severe burns.',
),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(onPressed: () {
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => HomePage()));
          },
           icon: const Icon(Icons.navigate_before, color: Colors.white,)),
          title: const Text('Healthy Living Tips'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return Card(
              color: Color(0xFF90B4CE),
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: ListTile(
                title: Text(posts[index].title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('By ${posts[index].author}',
                    style: TextStyle(color: Colors.white),),
                    Text(posts[index].date, style: TextStyle(color: Colors.white),),
                  ],
                ),
                onTap: () {
                  // Navigate to blog post details page
                },
              ),
            );
          },
        ),
      );
  }
}
