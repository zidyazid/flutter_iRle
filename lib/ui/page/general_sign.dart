part of 'pages.dart';

class GeneralSign extends StatelessWidget {
  // const GeneralPage({ Key? key }) : super(key: key);
  final String title;
  final String subtitle;
  final Function onBackButtonPressed;
  final Widget child;
  final Color backcolor;

  GeneralSign(
      {this.title = "Title",
      this.subtitle = "SubTitle",
      this.onBackButtonPressed,
      this.child,
      this.backcolor});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: bgDarkBlue,
      child: Stack(
        children: [
          Container(
            color: bgDarkBlue,
          ),
          SafeArea(child: Container(color: backcolor ?? "FAFAFC".toColor())),
          SafeArea(
            child: Scaffold(
              body: ListView(
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: defaultMargin),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // jika onBackbuttonpress tidak null maka tampilkan button
                                  onBackButtonPressed != null
                                      ? GestureDetector(
                                          onTap: () {
                                            if (onBackButtonPressed != null) {
                                              onBackButtonPressed();
                                            }
                                          },
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: defaultMargin,
                                                right: 16,
                                                top: 16),
                                            width: 24,
                                            height: 24,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/back_arrow.png"))),
                                          ),
                                        )
                                      : Container(
                                          width: 30,
                                        ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            child: Text(title,
                                                style: GoogleFonts.poppins(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black))),
                                        Text(subtitle,
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: "8D92A3".toColor(),
                                                fontWeight: FontWeight.w300)),
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
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: defaultMargin,
                          color: Colors.white,
                        ),
                        child ?? SizedBox()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
