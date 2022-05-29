import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../Provider/theme_provider.dart';
import 'customButton.dart';

class libraryScreen extends StatefulWidget {
  libraryScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<libraryScreen> createState() => _libraryScreenState();
}

class _libraryScreenState extends State<libraryScreen> {
  var YoutubeHistoryList = [
    {
      'main_title':
          'Office Lift - Part 3 | RJ Naved | Pankit | Mirchi Murga | Hello World Long Text',
      'image': 'https://uhdwallpapers.org/uploads/converted/19/08/03/huawei-mediapad-m6-stock-wallpaper-1280x720_666874-mm-90.webp',
      'sub_title': 'Mirchi Murga',
      'duration': '5:25',
      'progress': '0.2',
    },
    {
      'main_title': 'Do You Think Men Are Important? - After Dark Edit',
      'image': 'https://uhdwallpapers.org/uploads/converted/19/08/03/huawei-mediapad-m6-stock-wallpaper-1280x720_666874-mm-90.webp',
      'sub_title': 'Yes2Day',
      'duration': '1:31',
      'progress': '1.0',
    },
    {
      'main_title': 'Nothing Comes Easy | TBG',
      'image': 'https://uhdwallpapers.org/uploads/converted/19/08/03/huawei-mediapad-m6-stock-wallpaper-1280x720_666874-mm-90.webp',
      'sub_title': 'The Business Gyan',
      'duration': '1:25',
      'progress': '0.4',
    },
    {
      'main_title': 'Work Ethic - Dwayne Johnson',
      'image': 'https://uhdwallpapers.org/uploads/converted/19/08/03/huawei-mediapad-m6-stock-wallpaper-1280x720_666874-mm-90.webp',
      'sub_title': 'Ben Lionel Scott',
      'duration': '2:58',
      'progress': '0.7',
    },
    {
      'main_title': 'Lift Wala Murga | Part 6 | Hum Saath Saath Hai',
      'image': 'https://uhdwallpapers.org/uploads/converted/19/08/03/huawei-mediapad-m6-stock-wallpaper-1280x720_666874-mm-90.webp',
      'sub_title': 'Mirchi Murga',
      'duration': '4:03',
      'progress': '0.9',
    },
    {
      'main_title':
          'Change Your Mind And Get Anything You Want | Ed Mylett, Dave',
      'image': 'https://uhdwallpapers.org/uploads/converted/19/08/03/huawei-mediapad-m6-stock-wallpaper-1280x720_666874-mm-90.webp',
      'sub_title': 'Ivlup survival',
      'duration': '4:43',
      'progress': '1.0',
    },
    {
      'main_title': 'Pro-Insights with @Tanmay Bhat | How Tanmay thinks?',
      'image': 'https://uhdwallpapers.org/uploads/converted/19/08/03/huawei-mediapad-m6-stock-wallpaper-1280x720_666874-mm-90.webp',
      'sub_title': 'Aman Dhattarwal',
      'duration': '34:23',
      'progress': '0.1',
    },
  ];

  var youtubePlaylist = [
    {
      'main_title': 'Developing Spotify Using Flutter',
      'username': 'BrainMentors Pvt Ltd',
      'image':
          'https://images.unsplash.com/photo-1612603810075-b714656621d6?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=40&ixid=MnwxfDB8MXxyYW5kb218MHx8Ym13fHx8fHx8MTY1MzY1NDg2Mg&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=40',
      'total videos': '40 videos',
    },
    {
      'main_title': 'Anurag Rishi',
      'username': 'Attain Better Life',
      'image':
          'https://images.unsplash.com/photo-1612603810075-b714656621d6?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=40&ixid=MnwxfDB8MXxyYW5kb218MHx8Ym13fHx8fHx8MTY1MzY1NDg2Mg&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=40',
      'total videos': '34 videos',
    },
    {
      'main_title': 'Anurag Rishi',
      'username': 'Easy Engineering Classes',
      'image':
          'https://images.unsplash.com/photo-1612603810075-b714656621d6?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=40&ixid=MnwxfDB8MXxyYW5kb218MHx8Ym13fHx8fHx8MTY1MzY1NDg2Mg&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=40',
      'total videos': '5 videos',
    },
    {
      'main_title': 'Hello World',
      'username': 'Anurag Rishi',
      'image':
          'https://images.unsplash.com/photo-1562878850-0c4bbe871f48?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=40&ixid=MnwxfDB8MXxyYW5kb218MHx8Ym13fHx8fHx8MTY1MzczNTcxMQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=40',
      'total videos': '19 videos',
    },
  ];

  late String title;
  int value = 0;

  bool isDarkMode(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    bool isDark = themeProvider.themeMode == ThemeMode.dark;
    return isDark;
  }

  @override
  void initState() {
    super.initState();
    title = items[0];
  }

  var items = [
    "A-Z",
    "Recently added",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Material(
                  //customize
                  color: Theme.of(context).backgroundColor,
                  child: Ink(
                    height: 40,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.history,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "History",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "VIEW ALL",
                              style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemCount: YoutubeHistoryList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        // width: 200,
                        width: 163,
                        height: 120,
                        margin: const EdgeInsets.only(right: 10),
                        child: Material(
                          // color: Theme.of(context).backgroundColor,
                          color: Colors.orange,
                          child: Ink(
                            child: InkWell(
                              onTap: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRect(
                                        child: Container(
                                          color: Colors.greenAccent,
                                          height: 70,
                                          width: 120,
                                          child: Image.network(
                                              YoutubeHistoryList[index]['image']
                                                  .toString()),
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                right: 10, bottom: 6),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 5,
                                              vertical: 1,
                                            ),
                                            color: Colors.black,
                                            child: Text(
                                              YoutubeHistoryList[index]
                                                      ['duration']
                                                  .toString(),
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  LinearProgressIndicator(
                                    backgroundColor: Colors.grey,
                                    valueColor: const AlwaysStoppedAnimation(
                                        Colors.red),
                                    value: double.parse(
                                      YoutubeHistoryList[index]['progress']
                                          .toString(),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 150,
                                        child: Text(
                                          YoutubeHistoryList[index]
                                                  ['main_title']
                                              .toString(),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        ),
                                      ),
                                      //SizedBox(),
                                      Material(
                                        color: Colors.transparent,
                                        child: Ink(
                                          child: InkWell(
                                            onTap: () {},
                                            child: const Icon(
                                              Icons.more_vert,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    YoutubeHistoryList[index]['sub_title']
                                        .toString(),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            Container(
              child: Column(
                children: [
                  CustomButton(
                    iconData: FontAwesomeIcons.video,
                    title: 'Your videos',
                  ),
                  CustomButton(
                    iconData: Icons.download_sharp,
                    title: 'Downloads',
                  ),
                  CustomButton(
                    title: 'Your Movies',
                    iconData: FontAwesomeIcons.youtube,
                  ),
                  CustomButton(
                    iconData: FontAwesomeIcons.scissors,
                    title: 'Your Clips',
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Playlists",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Material(
                    color: Theme.of(context).backgroundColor,
                    child: Ink(
                      child: InkWell(
                        child: PopupMenuButton(
                          initialValue: value,
                          elevation: 20,
                          color: isDarkMode(context)
                              ? Color.fromARGB(255, 48, 48, 48)
                              : Colors.white,
                          child: Row(
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down,
                                size: 30,
                              ),
                            ],
                          ),
                          itemBuilder: (ctx) => [
                            PopupMenuItem(
                              height: 40,
                              child: Text(
                                items[0],
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              value: 0,
                              onTap: () {
                                setState(() {
                                  title = items[0];
                                  value = 0;
                                });
                              },
                            ),
                            PopupMenuItem(
                              child: Text(
                                items[1],
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              value: 1,
                              onTap: () {
                                setState(() {
                                  title = items[1];
                                  value = 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                CustomButton(
                  iconData: Icons.add,
                  title: 'New Playlist',
                  iconSize: 20,
                ),
                CustomButton(
                  iconData: FontAwesomeIcons.clock,
                  title: 'Watch later',
                ),
                CustomButton(
                  title: 'Liked videos',
                  iconData: Icons.thumb_up_outlined,
                ),
                ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: youtubePlaylist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 60,
                      child: Material(
                        color: Theme.of(context).backgroundColor,
                        // color: Colors.redAccent,
                        child: Ink(
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                ClipRect(
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    child: Image.network(youtubePlaylist[index]
                                            ['image']
                                        .toString()),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      youtubePlaylist[index]['main_title']
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                    Row(
                                      // crossAxisAlignment:
                                      // CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          youtubePlaylist[index]['username']
                                              .toString(),
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                          radius: 1.7,
                                          backgroundColor: Colors.grey.shade600,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          youtubePlaylist[index]['total videos']
                                              .toString(),
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
