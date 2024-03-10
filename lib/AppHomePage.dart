// APP HOME PAGE

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'main.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.name});

  final String name;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FUSION FANTASIA'),
          //backgroundColor: Color.fromARGB(209, 239, 64, 255),
          backgroundColor: Color.fromARGB(255, 10, 90, 209),
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 10, 90, 209),
                ),
                child: Text(
                  //"Ashika Ashok",
                  widget.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:  24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage(title: '',)));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()),
                  );

                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage()));
                },
              ),
            ],
          ),
        ),

        body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              // image: AssetImage('2.jpg'),
              image: NetworkImage('https://media.istockphoto.com/id/1185747322/photo/blue-mesh-gradient-blurred-motion-abstract-background.jpg?s=612x612&w=0&k=20&c=5S8NBjBQCjL_5zMenfcRrx5X9m6AqJLwYbdTprLJPiA='), // replace with your asset path
              fit: BoxFit.cover,
            ),
          ),

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100,
                  width: 150,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MandalaPage()));
                  },

                    child: Text('MANDALA', style: TextStyle(fontSize: 20)), style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 10, 90, 209)),
                    ),),
                ),

                SizedBox(height: 20),

                SizedBox(
                  height: 100,
                  width: 150,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => QuillingPage()));
                  },

                    child: Text('QUILLING', style: TextStyle(fontSize: 20)), style: const ButtonStyle(
                      //backgroundColor: MaterialStatePropertyAll(Color.fromARGB(209, 239, 64, 255)),
                      backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 10, 90, 209)),
                    ),),
                ),

                SizedBox(height: 20),

                SizedBox(
                  height: 100,
                  width: 150,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SketchingPage()));
                  },

                    child: Text('SKETCHING', style: TextStyle(fontSize: 20)), style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 10, 90, 209)),
                    ),),
                ),

                SizedBox(height: 20),

                SizedBox(
                  height: 100,
                  width: 150,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PaintingPage()));
                  },

                    child: Text('PAINTING', style: TextStyle(fontSize: 20)), style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 10, 90, 209)),
                    ),),
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}

//PROFILE

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Color.fromARGB(221, 153, 64, 255),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              // image: AssetImage('2.jpg'),
              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKUkKGs9H7qvxdu7k8cVae2ISS_40Y073S41PvALzH9HiFz2JqVC1-fpBL11LjgLmxYNQ&usqp=CAU'), // replace with your asset path
              fit: BoxFit.cover,
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Profile image
              Center(
                child: CircleAvatar(
                  radius:  50.0,
                  backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/b/bc/Unknown_person.jpg'), // Replace with actual URL
                ),
              ),

              // Username
              Text(
                'Aashi09',
                style: TextStyle(fontSize:  24, fontWeight: FontWeight.bold),
              ),
              // Name
              Text(
                'Ashika Ashok',
                style: TextStyle(fontSize:  18),
              ),
              // Email
              Text(
                'aashi09@example.com',
                style: TextStyle(fontSize:  16, color: Colors.grey),
              ),
              // Additional profile information can go here
            ],
          ),
        ));
  }
}

//Settings

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: Color.fromARGB(255, 64, 217, 255),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              // image: AssetImage('2.jpg'),
              image: NetworkImage('https://media.istockphoto.com/id/1338319555/vector/smooth-blend-rainbow-glow-abstract-background.jpg?s=612x612&w=0&k=20&c=LPA20OPGWr99oB3pNT7RABEodDZa24Yd3J8aIaVUq4o='), // replace with your asset path
              fit: BoxFit.cover,
            ),
          ),

          child: Center(
            child: Text('Settings Page'),
          ),
        ));
  }
}




//Mandala (prev code in word)

class MandalaPage extends StatefulWidget {
  @override
  _MandalaPageState createState() => _MandalaPageState();
}

class _MandalaPageState extends State<MandalaPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://youtu.be/OiSzGBguPm0?si=ncMGhDD7j4Cx4D8M') // Replace with your video URL
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MANDALA'),
        backgroundColor: Color.fromARGB(255, 255, 188, 64),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs16Ikc3WMxpN1ll-creTdgvwIiS_gBcfYew&usqp=CAU'), // replace with your asset path
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            ExpansionTile(
              title: Text('About', style: TextStyle(color: Colors.black)),
              childrenPadding: EdgeInsets.all(16),
              children: <Widget>[
                Text('A mandala is a geometric pattern or design that symbolizes the universe or deities in heavenly worlds. The word mandala comes from the ancient Sanskrit language of Hinduism and Buddhism and translates to circle or center. In spiritual traditions, mandalas can be used as a tool for spiritual guidance, to establish a sacred space, and to aid in meditation and trance induction. The repeated patterns, colors, and shapes of mandalas are meant to show the universality of the human race and the connectedness of societies and nature.'),
              ],
            ),
            ExpansionTile(
              title: Text('Pictures', style: TextStyle(color: Colors.black)),
              childrenPadding: EdgeInsets.all(16),
              children: <Widget>[
                Card(
                    child: SizedBox(
                      width: 200, // Specify the width
                      height: 200, // Specify the height
                      child: Image.network('https://dbdzm869oupei.cloudfront.net/img/quadres/generated/38999-1-0000-1.jpg', fit: BoxFit.cover,), // Replace with your image URL
                    )),
                Card(
                    child: SizedBox(
                      width: 200, // Specify the width
                      height: 200, // Specify the height
                      child: Image.network('https://t3.ftcdn.net/jpg/03/99/75/34/240_F_399753429_GT0JYOgNQowqd6zJ2nIP1wr5tQeqrqEx.jpg', fit: BoxFit.cover,),
                    )),
                Card(
                    child: SizedBox(
                      width: 200, // Specify the width
                      height: 200, // Specify the height
                      child: Image.network('https://t4.ftcdn.net/jpg/03/32/72/87/240_F_332728772_xgx4amactu4U0w5D1FooyE5NKNWh7wGu.jpg', fit: BoxFit.cover,),
                    )),
              ],
            ),
            ExpansionTile(
              title: Text('Video', style: TextStyle(color: Colors.black)),
              childrenPadding: EdgeInsets.all(16),
              children: <Widget>[
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
                // Play/Pause button
                IconButton(
                  icon: Icon(
                    _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  ),
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}



class QuillingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('QUILLING'),
          backgroundColor: Color.fromARGB(255, 253, 82, 154),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              // image: AssetImage('2.jpg'),
              image: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMHBgkIBw4RCgkTFxYbDRUMDxAUDxAWFREiFhQSHxUcHCggGB4lHiofJDEhJS08OjouIyszODMsNzAyPjcBCgoKDQ0NFQ0QGiseGh03KysrLzEtLSs4LisrKy03Li4tKy0rLTc3KzcrNzcrKystKzcrLSs3NysyKyswKy0rLf/AABEIAKgBLAMBIgACEQEDEQH/xAAYAAEBAAMAAAAAAAAAAAAAAAAAAwECB//EAB4QAQEAAQQDAQAAAAAAAAAAAAASAQIRMZEhUfAi/8QAGAEBAQEBAQAAAAAAAAAAAAAAAAIEAQP/xAAZEQEBAQEBAQAAAAAAAAAAAAAAEhEBAmH/2gAMAwEAAhEDEQA/AO1UUjRSMe0rUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGEo0UjRTuNErUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGEoWWjZa8aJWstGyzCVrLRsswlay0bLMJWstGyzCVrLRsswlay0bLMJWstGyzCVrLRsswlay0bLMJWstGyzCVrLRsswlay0bLMJWstGyzCVrLRsswlay0bLMJWstGyzCVrLRsswlay0bLMJRstCilNEr2WhRQSvZaFFBK9loUUEr2WhRQSvZaFFBK9loUUEr2WhRQSvZaFFBK9loUUEr2WhRQSvZaFFBK9loUUEr2WhRQSvZaFFBK9loUUEr2WhRQSvZaFFBK9loUUEo0UjZa2iVqKRssJWopGywlaikbLCVqKRssJWopGywlaikbLCVqKRssJWopGywlaikbLCVqKRssJWopGywlaikbLCVqKRssJWopGywlaikbLCVqKRssJWopGywlaikbLCUaKRopTRK1FI0UErUUjRQStRSNFBK1FI0UErUUjRQStRSNFBK1FI0UErUUjRQStRSNFBK1FI0UErUUjRQStRSNFBK1FI0UErUUjRQStRSNFBK1FI0UErUUjRQStRSNFBKFFJWWrGiVaKSsswlWikrLMJVopKyzCVaKSsswlWikrLMJVopKyzCVaKSsswlWikrLMJVopKyzCVaKSsswlWikrLMJVopKyzCVaKSsswlWikrLMJVopKyzCVaKSsswlWikrLMJVopKyzCUKKRopbRK1FI0UErUUjRQStRSNFBK1FI0UErUUjRQStRSNFBK1FI0UErUUjRQStRSNFBK1FI0UErUUjRQStRSNFBK1FI0UErUUjRQStRSNFBK1FI0UErUUjRQStRSNFBKNFI0UrGiVqKRoowlaikaKMJWopGijCVqKRoowlaikaKMJWopGijCVqKRoowlaikaKMJWopGijCVqKRoowlaikaKMJWopGijCVqKRoowlaikaKMJWopGijCVqKRoowlaikaKMJWopGijCUKKRopWNErUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGErUUjRRhK1FI0UYStRSNFGEo0UCnvhRQBnCigDOFFAGcKKAM4UUAZwooAzhRQBnCigDOFFAGcKKAM4UUAZwooAzhRQBnCigDOFFAGcKZ06udwHO+dKxtzndtnOMb+egMTH1ise/umurV5/PADvPL//Z'), // replace with your asset path
              fit: BoxFit.cover,
            ),
          ),

          child: ListView(
            children: <Widget>[
              ExpansionTile(
                title: Text('About', style: TextStyle(color: Colors.black)),
                childrenPadding: EdgeInsets.all(16),
                children: <Widget>[
                  Text('Quilling - also known as paper-rolling, or paper scrolling - has a long and interesting history. The origins of quilling are not recorded, but some think it began with the invention of paper, in China in 105 AD or in Egypt, where some tombs have been found to contain wire shapes similar in appearance to modern quilling. Quilling is an art form that involves the use of strips of paper that are rolled, shaped, and glued together to create decorative designs. The paper shape is manipulated to create designs on their own or to decorate other objects, such as greetings cards, pictures, boxes, or to make jewelry.'),
                ],
              ),
              ExpansionTile(
                title: Text('Pictures', style: TextStyle(color: Colors.black)),
                childrenPadding: EdgeInsets.all(16),
                children: <Widget>[
                  Card(
                      child: SizedBox(
                        width: 200, // Specify the width
                        height: 200,
                        child: Image.network('https://t3.ftcdn.net/jpg/06/14/76/46/240_F_614764698_e0DjIqse5ppXLyopGTUsq1Yf6epUiBAK.jpg'), // Replace with your image URL
                      )),
                  Card(
                      child: SizedBox(
                        width: 200, // Specify the width
                        height: 200,
                        child: Image.network('https://t3.ftcdn.net/jpg/05/81/54/46/240_F_581544676_afUu7PWuaoTogIU7zJqB0C6e8F3wmTYG.jpg'),
                      )),
                  Card(
                      child: SizedBox(
                        width: 200, // Specify the width
                        height: 200,
                        child: Image.network('https://t3.ftcdn.net/jpg/07/16/03/62/240_F_716036233_uxg5Xv5jp4AKyv9Ni5cEvEYAZtCD4tBZ.jpg'),
                      )),
                ],
              ),

            ],
          ),
        ));
  }
}


class SketchingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SKETCHING'),
          backgroundColor: Color.fromARGB(210, 129, 214, 50),
          //backgroundColor: Color.fromARGB(206, 99, 64, 255),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              // image: AssetImage('2.jpg'),
              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjIh60UAA_v04llAoFSODWLFu3VQJe7haRfg&usqp=CAU'),
              //image: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/eb7e9d99-7e0f-4614-937b-81c4d33cd76f/d58axaz-da3eefa6-3fc6-4096-8ff4-534432b8eb68.jpg/v1/fill/w_900,h_507,q_75,strp/purple_gradient_background_by_ohsnapjenny_d58axaz-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTA3IiwicGF0aCI6IlwvZlwvZWI3ZTlkOTktN2UwZi00NjE0LTkzN2ItODFjNGQzM2NkNzZmXC9kNThheGF6LWRhM2VlZmE2LTNmYzYtNDA5Ni04ZmY0LTUzNDQzMmI4ZWI2OC5qcGciLCJ3aWR0aCI6Ijw9OTAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.JOobPSTuV9TgcKVPqiQAE4LmDtbNazX7RA3u0xWzuUw'), // replace with your asset path
              fit: BoxFit.cover,
            ),
          ),

          child: ListView(
            children: <Widget>[
              ExpansionTile(
                title: Text('About', style: TextStyle(color: Colors.black)),
                childrenPadding: EdgeInsets.all(16),
                children: <Widget>[
                  Text('A sketch is a rapidly executed freehand drawing that is not usually intended as a finished work. A sketch may serve a number of purposes: it might record something that the artist sees, it might record or develop an idea for later use or it might be used as a quick way of graphically demonstrating an image, idea or principle. Sketching is the most inexpensive art medium. Sketches can be made in any drawing medium. The term is most often applied to graphic work executed in a dry medium such as silverpoint, graphite, pencil, charcoal or pastel.'),
                ],
              ),
              ExpansionTile(
                title: Text('Pictures', style: TextStyle(color: Colors.black)),
                childrenPadding: EdgeInsets.all(16),
                children: <Widget>[
                  Card(
                      child: SizedBox(
                        width: 200, // Specify the width
                        height: 200,
                        child: Image.network('https://t4.ftcdn.net/jpg/06/73/58/85/240_F_673588562_hNhS8CA1MD3qls6re9H7iuILmTiQun4K.jpg', fit: BoxFit.cover,), // Replace with your image URL
                      )),
                  Card(
                      child: SizedBox(
                        width: 200, // Specify the width
                        height: 200,
                        child: Image.network('https://t4.ftcdn.net/jpg/07/31/48/99/240_F_731489948_5iwZNCRbHA60ETmCAw4Nyelc2vlC7Rcl.jpg', fit: BoxFit.cover,),
                      )),
                  Card(
                      child: SizedBox(
                        width: 200, // Specify the width
                        height: 200,
                        child: Image.network('https://t3.ftcdn.net/jpg/07/22/78/04/240_F_722780490_a43ILoqa5wBdM3iT5OrsG2tlPgMjNhpq.jpg', fit: BoxFit.cover,),
                      )),
                ],
              ),

            ],
          ),
        ));
  }
}


class PaintingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('PAINTING'),
            //backgroundColor: Color.fromARGB(210, 129, 214, 50),
            backgroundColor: Color.fromARGB(206, 99, 64, 255)
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              // image: AssetImage('2.jpg'),
              image: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/eb7e9d99-7e0f-4614-937b-81c4d33cd76f/d58axaz-da3eefa6-3fc6-4096-8ff4-534432b8eb68.jpg/v1/fill/w_900,h_507,q_75,strp/purple_gradient_background_by_ohsnapjenny_d58axaz-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTA3IiwicGF0aCI6IlwvZlwvZWI3ZTlkOTktN2UwZi00NjE0LTkzN2ItODFjNGQzM2NkNzZmXC9kNThheGF6LWRhM2VlZmE2LTNmYzYtNDA5Ni04ZmY0LTUzNDQzMmI4ZWI2OC5qcGciLCJ3aWR0aCI6Ijw9OTAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.JOobPSTuV9TgcKVPqiQAE4LmDtbNazX7RA3u0xWzuUw'),
              //image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjIh60UAA_v04llAoFSODWLFu3VQJe7haRfg&usqp=CAU'), // replace with your asset path
              fit: BoxFit.cover,
            ),
          ),

          child: ListView(
            children: <Widget>[
              ExpansionTile(
                title: Text('About', style: TextStyle(color: Colors.black)),
                childrenPadding: EdgeInsets.all(16),
                children: <Widget>[
                  Text('Painting, the expression of ideas and emotions, with the creation of certain aesthetic qualities, in a two-dimensional visual language. The elements of this language—its shapes, lines, colours, tones, and textures—are used in various ways to produce sensations of volume, space, movement, and light on a flat surface. These elements are combined into expressive patterns in order to represent real or supernatural phenomena, to interpret a narrative theme, or to create wholly abstract visual relationships. An artist’s decision to use a particular medium, such as tempera, fresco, oil, acrylic, watercolour or other water-based paints, ink, gouache, encaustic, or casein, as well as the choice of a particular form, such as mural, easel, panel, miniature, manuscript illumination, scroll, screen or fan, panorama, or any of a variety of modern forms, is based on the sensuous qualities and the expressive possibilities and limitations of those options.'),
                ],
              ),
              ExpansionTile(
                title: Text('Pictures', style: TextStyle(color: Colors.black)),
                childrenPadding: EdgeInsets.all(16),
                children: <Widget>[
                  Card(
                      child: SizedBox(
                        width: 200, // Specify the width
                        height: 200,
                        child: Image.network('https://t4.ftcdn.net/jpg/00/76/80/97/240_F_76809767_Gb6A91Jm9DvdFe6UuUHQkzhcUyYjZCJf.jpg', fit: BoxFit.cover,), // Replace with your image URL
                      )),
                  Card(
                      child: SizedBox(
                        width: 200, // Specify the width
                        height: 200,
                        child: Image.network('https://t3.ftcdn.net/jpg/01/67/01/50/240_F_167015010_BHlXa6K2ChVeuxJrMfqjlNJ9rsXwx6oz.jpg', fit: BoxFit.cover,),
                      )),
                  Card(
                      child: SizedBox(
                        width: 200, // Specify the width
                        height: 200,
                        child: Image.network('https://t4.ftcdn.net/jpg/04/21/04/31/240_F_421043104_1oKfElVCsMAEot7sASsEqAxQ7sOTzxdr.jpg', fit: BoxFit.cover,),
                      )),
                ],
              ),

            ],
          ),
        ));
  }
}


