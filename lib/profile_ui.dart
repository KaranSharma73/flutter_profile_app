import 'package:flutter/material.dart';

class profile_ui extends StatelessWidget {
  const profile_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P R O F I L E       U I',style: TextStyle(fontFamily:'Poppins',color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Image.network(
                    'https://wallpapercave.com/wp/wp5134476.jpg',
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      bottom: -30,
                      child: CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.black,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?cs=srgb&dl=pexels-italo-melo-2379005.jpg&fm=jpg'),
                      )),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                title: Center(
                  child: Text(
                    'Rahul Saxena ',
                    style: TextStyle(fontFamily:'Poppins',fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle:
                    Center(child: Text('Native Android & Flutter Developer',style: TextStyle(fontFamily:'Poppins',),)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 28,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Hire Me",
                    style: TextStyle(fontFamily:'Poppins',color: Colors.white,fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text('About Me',style: TextStyle(fontFamily:'Poppins',fontSize: 18),),
                subtitle: Center(
                  child: Text(
                      'Seasoned Flutter Developer with 4+ years of experience in creating high-performance, scalable mobile applications, achieving 30% increase in user engagement and 25% reduction in app load time. Proficient in Dart, Firebase, and RESTful APIs, consistently delivering features ahead of deadlines. Known for strong problem-solving skills and deep understanding of responsive design principles, resulting in enhanced UI/UX across platforms.',style: TextStyle(fontFamily:'Poppins',),),
                ),
              ),
              SizedBox(
                height: 78,
              ),
              Container(

                child: Text('Joined since 23 Feb 2020',style: TextStyle(fontFamily:'Poppins',),),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
