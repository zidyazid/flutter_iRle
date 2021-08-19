part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  // const GeneralPage({ Key? key }) : super(key: key);
  final String title;
  final String subtitle;
  // final Function onBackButtonPressed;
  final Widget child;
  final Color backcolor;

  GeneralPage(
      {this.title = "Title",
      this.subtitle = "SubTitle",
      this.child,
      this.backcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: "F8F8F8".toColor(),
      child: Stack(
        children: [
          SafeArea(
            child: Scaffold(
              body: ListView(
                children: [
                  Container(
                    width: double.infinity,
                    color: greenColor,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: defaultMargin),
                          // color: Colors.grey,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // jika onBackbuttonpress tidak null maka tampilkan button
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(title,
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white)),
                                                Text(subtitle,
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 12,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w300)),
                                              ]),
                                        ),
                                        SizedBox()
                                      ],
                                    ),
                                  ),
                                  // Container(
                                  //   width: 100,
                                  //   height: 100,
                                  //   // child: Text("gambar"),
                                  //   decoration: BoxDecoration(
                                  //       image: DecorationImage(
                                  //           image: AssetImage(
                                  //               'assets/Vector10.png'))),
                                  // )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  child
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
