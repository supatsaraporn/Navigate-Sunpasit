import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  Widget _appBar(BuildContext context) {
    return SafeArea(
      child: Container(
        constraints: BoxConstraints.expand(height: 40),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: <Widget>[
        //     Icon(
        //       Icons.menu,
        //       size: 30,
        //       color: Colors.white,
        //     ),
        //     Container(
        //       child: Row(
        //         children: <Widget>[
        //           Icon(
        //             Icons.search,
        //             size: 30,
        //             color: Colors.white,
        //           ),
        //           Padding(padding: EdgeInsets.only(right: 8)),
        //           Icon(
        //             Icons.notifications,
        //             size: 30,
        //             color: Colors.white,
        //           ),
        //           Padding(padding: EdgeInsets.only(right: 8)),
        //           Icon(
        //             Icons.account_circle,
        //             size: 30,
        //             color: Colors.white,
        //           ),
        //           Padding(padding: EdgeInsets.only(right: 4)),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  constraints: BoxConstraints.expand(height: 230),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("image/homepageImage.png"),
                        colorFilter: ColorFilter.mode(
                            Colors.blueGrey.withOpacity(0.7),
                            BlendMode.srcOver),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          _appBar(context),
                          Text(
                            " อาคาร ๕๐ พรรษา มหาวชิราลงกรณ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Itim'),
                          )
                        ],
                      ),
                    ),
                  )),
              Container(
                height: 180,
                margin: EdgeInsets.only(top: 125),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 275,
                  children: <Widget>[
                    Card(
                      elevation: 5.0,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Stack(
                        children: [
                          Ink.image(
                            image: NetworkImage(
                                "https://scontent.fnak4-1.fna.fbcdn.net/v/t1.6435-9/187363702_863598041178518_2792230537775121274_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=0debeb&_nc_ohc=koymFf1O8vkAX_3PHxE&_nc_ht=scontent.fnak4-1.fna&oh=efd0c4625c3f37f270d9e962911935d6&oe=60D8479C"),
                            child: InkWell(
                              onTap: () {
                                // This Will Call When User Click On ListView Item
                                showDialogFunc(
                                    context,
                                    "https://scontent.fnak4-1.fna.fbcdn.net/v/t1.6435-9/187363702_863598041178518_2792230537775121274_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=0debeb&_nc_ohc=koymFf1O8vkAX_3PHxE&_nc_ht=scontent.fnak4-1.fna&oh=efd0c4625c3f37f270d9e962911935d6&oe=60D8479C",
                                    "ชั้น 1");
                              },
                            ),
                            height: 240,
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 180),
                            child: Text(
                              "ชั้น 1",
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 0.9,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                    ),
                    Card(
                      elevation: 5.0,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Stack(
                        children: [
                          Ink.image(
                            image: NetworkImage(
                                "https://scontent.fnak4-1.fna.fbcdn.net/v/t1.6435-9/187159054_863598084511847_9061714346913379827_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=0debeb&_nc_ohc=ubTips8k-oYAX-kdReK&_nc_ht=scontent.fnak4-1.fna&oh=329c3c44fabf9abcb4d7b8e8ec44ce4f&oe=60DA7D9A"),
                            child: InkWell(
                              onTap: () {
                                // This Will Call When User Click On ListView Item
                                showDialogFunc(
                                    context,
                                    "https://scontent.fnak4-1.fna.fbcdn.net/v/t1.6435-9/187159054_863598084511847_9061714346913379827_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=0debeb&_nc_ohc=ubTips8k-oYAX-kdReK&_nc_ht=scontent.fnak4-1.fna&oh=329c3c44fabf9abcb4d7b8e8ec44ce4f&oe=60DA7D9A",
                                    "ชั้น 2");
                              },
                            ),
                            height: 240,
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 180),
                            child: Text(
                              "ชั้น 2",
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 0.9,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                    ),
                    Card(
                      elevation: 5.0,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Stack(
                        children: [
                          Ink.image(
                            image: NetworkImage(
                                "https://scontent.fnak4-1.fna.fbcdn.net/v/t1.6435-9/189527744_863598157845173_1287624779437531401_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=0debeb&_nc_ohc=Itqh95lf4dcAX-_qPxM&_nc_ht=scontent.fnak4-1.fna&oh=40fab4eca25cd3dda118c850a24c4af9&oe=60D835EE"),
                            child: InkWell(
                              onTap: () {
                                // This Will Call When User Click On ListView Item
                                showDialogFunc(
                                    context,
                                    "https://scontent.fnak4-1.fna.fbcdn.net/v/t1.6435-9/189527744_863598157845173_1287624779437531401_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=0debeb&_nc_ohc=Itqh95lf4dcAX-_qPxM&_nc_ht=scontent.fnak4-1.fna&oh=40fab4eca25cd3dda118c850a24c4af9&oe=60D835EE",
                                    "ชั้น 3");
                              },
                            ),
                            height: 240,
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 180),
                            child: Text(
                              "ชั้น 3",
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 0.9,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                    ),
                    Card(
                      elevation: 5.0,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Stack(
                        children: [
                          Ink.image(
                            image: NetworkImage(
                                "https://scontent.fnak4-1.fna.fbcdn.net/v/t1.6435-9/186543000_863598217845167_8477607751111769249_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=0debeb&_nc_ohc=E92xmHFcH9cAX-2yST4&_nc_ht=scontent.fnak4-1.fna&oh=ca7cfc682c34e29a49fa5f4e9bd99b9f&oe=60D7034A"),
                            child: InkWell(
                              onTap: () {
                                // This Will Call When User Click On ListView Item
                                showDialogFunc(
                                    context,
                                    "https://scontent.fnak4-1.fna.fbcdn.net/v/t1.6435-9/186543000_863598217845167_8477607751111769249_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=0debeb&_nc_ohc=E92xmHFcH9cAX-2yST4&_nc_ht=scontent.fnak4-1.fna&oh=ca7cfc682c34e29a49fa5f4e9bd99b9f&oe=60D7034A",
                                    "ชั้น 4");
                              },
                            ),
                            height: 240,
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 180),
                            child: Text(
                              "ชั้น 4",
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 0.9,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

showDialogFunc(context, img, floor) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(2),
            height: 330,
            width: MediaQuery.of(context).size.width * 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InteractiveViewer(
                  maxScale: 5,
                  minScale: 1,
                  child: Image.network(
                    img,
                    width: 700,
                    height: 300,
                  ),
                ),
                Text(floor),
              ],
            ),
          ),
        ),
      );
    },
  );
}
