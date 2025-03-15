import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

final url =
    'https://media.licdn.com/dms/image/v2/D4D03AQFIN_7aoRVPTg/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1719600492843?e=1747267200&v=beta&t=rIto_kEc_d0SmB4MmW9tZOt3RQpo6vnHuijxwDzC-bw';

Widget followPages(String value, String label) {
  return Expanded(
    child: Column(
      children: [
        Text(
          value,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile Page',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              CircleAvatar(radius: 50, backgroundImage: NetworkImage(url)),
              SizedBox(height: 8),
              Text(
                'Bayram Yeleç',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Mobile Developer',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 16),
              Card(
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      followPages('150', 'Posts'),
                      followPages('1.5k', 'Followers'),
                      followPages('120', 'Following'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Card(
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'I am a Mobile Developer with experience in iOS and Android development. I specialize in building modern, user-friendly applications and enjoy creating seamless mobile experiences.',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
