import 'package:assignmentintern2/utils/constants.dart';
import 'package:assignmentintern2/utils/custom_search_delegate.dart';
import 'package:assignmentintern2/widgets/custom_app_bar.dart';
import 'package:assignmentintern2/widgets/member.dart';
import 'package:assignmentintern2/widgets/modal_bottom_sheet.dart';
import 'package:assignmentintern2/widgets/outlined_badge.dart';
import 'package:assignmentintern2/widgets/rich_text.dart';
import 'package:assignmentintern2/widgets/rounded_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Community',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _switchValue = false;

  ScrollController _scrollViewController = new ScrollController();
  bool isScrollingDown = true;
  bool _showAppbar = false;
  double heightAppBar = 0.0;

  @override
  void initState() {
  super.initState();
  _scrollViewController.addListener(() {
    if (_scrollViewController.position.userScrollDirection == ScrollDirection.reverse) {
      setState(() {
        _showAppbar = true;
        heightAppBar = 100.0;
      });
    }

    if (_scrollViewController.position.userScrollDirection == ScrollDirection.forward) {
      setState(() {
        _showAppbar = false; 
        heightAppBar = 0.0;
      });
      
    }
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
      Center(
        child: SingleChildScrollView(
          controller: _scrollViewController,
          child: SafeArea(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Stack(children: [
                Image.asset(
                  "assets/weeknd.png"
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      
                    },

                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.black.withOpacity(0.5),
                        backgroundImage: Image.asset(
                            "assets/arrow-left.png",
                            fit: BoxFit.fill,
                        ).image,
                      ),
                    ),

                  ),
                ),
              ],),

              Container(
                decoration: const BoxDecoration(color: Color(0xFFC32422)),
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "The weeknd",
                            style: TextStyle(
                              fontFamily: GoogleFonts.lato().fontFamily,
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),                      

                        ),

                        Text(
                          "Community • +11K Members",
                          style: TextStyle(
                            fontFamily: GoogleFonts.lato().fontFamily,
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),

                        const SizedBox(height: 20),
                      ]
                    ),

                    Expanded(
                      child: Container(),
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: FloatingActionButton(
                        onPressed: () {}, 
                        elevation: 0.0,
                        backgroundColor: Color(0xFFC32422),
                        child: Image.asset("assets/sharebutton.png")
                      ),
                    ),

                    const SizedBox(width: 20),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                child: Column(
                  children: [
                    HighlightedText.richText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat nulla efficitur sit amet. Proin eu lorem libero. Sed id enim in urna tincidunt sodales. Vivamus vel semper ame..."),

                    Row(
                      children: [
                        TextBadge.outlined("Outdoor"),                        
                        TextBadge.outlined("Outdoor"),
                        TextBadge.outlined("+1"),
                      ],  
                    ),

                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Media, docs and links",
                            style: TextStyle(
                              fontFamily: GoogleFonts.lato().fontFamily,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            )
                          ),

                          Expanded(
                            child: Container()
                          ),

                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                    
                    const SizedBox(height: 10),

                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ImageDisplay.RoundedDisplay("assets/weeknd.png"),
                            const SizedBox(width: 10),
                            ImageDisplay.RoundedDisplay("assets/weeknd.png"),
                            const SizedBox(width: 10),
                            ImageDisplay.RoundedDisplay("assets/weeknd.png"), 
                            const SizedBox(width: 10),
                            ImageDisplay.RoundedDisplay("assets/weeknd.png")
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Mute notification",
                            style: TextStyle(
                              fontFamily: GoogleFonts.lato().fontFamily,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            )
                          ),

                          Expanded(
                            child: Container()
                          ),
                        
                          CupertinoSwitch(
                            value: _switchValue,
                            onChanged: (value) {
                              setState(() {
                                _switchValue = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image.asset("assets/trash.png"),
                            title: Text(
                              "Clear chat",
                              style: TextStyle(
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold
                              ),

                            ),
                          ),

                          ListTile(
                            leading: Image.asset("assets/lock_light.png"),
                            title: Text(
                              "Encryption",
                              style: TextStyle(
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold
                              ),

                            ),
                          ),

                          ListTile(
                            leading: Image.asset("assets/logout.png"),
                            title: Text(
                              "Exit community",
                              style: TextStyle(
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.red
                              ),

                            ),
                          ),

                          ListTile(
                            leading: Image.asset("assets/dislike.png"),
                            title: Text(
                              "Report",
                              style: TextStyle(
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.red
                              ),

                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Members",
                            style: TextStyle(
                              fontFamily: GoogleFonts.lato().fontFamily,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),

                          Expanded(
                            child: Container()
                          ),
                          
                          InkWell(
                            onTap: () {
                              showSearch(
                                context: context, 
                                delegate: CustomSearchDelegate(heightAppBar: heightAppBar),
                              );
                            },

                            child: const Icon(Icons.search),
                          ),
                          
                        ],
                      ),
                    ),

                    Column(
                      children: [
                        Members.homePageMembers("Yashika", "29", "India", "Following"),
                        Members.homePageMembers("Yashika", "29", "India", "Add"),
                        Members.homePageMembers("Yashika", "29", "India", "Add"),
                        Members.homePageMembers("Yashika", "29", "India", "Add"),
                        Members.homePageMembers("Yashika", "29", "India", "Add"),
                        Members.homePageMembers("Yashika", "29", "India", "Add"),
                        Members.homePageMembers("Yashika", "29", "India", "Add"),
                        Members.homePageMembers("Yashika", "29", "India", "Add"),
                        Members.homePageMembers("Yashika", "29", "India", "Add"),
                      ],
                    ),

                  ],  
                ),
              ),
            ],
          ),
          ),
        ),
      ),

      CustomAppBar.AnimatedAppBar(context, heightAppBar),

      ],)
    );
  }
}
