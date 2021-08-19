part of 'pages.dart';

class OnBoardingPage extends StatefulWidget {
  // const OnBoardingPage({ Key? key }) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int contentstate = 0;

  List onboardingTitle = [
    'Easy to Learn',
    'Interactive Fitur',
    'Get Ready',
  ];
  List onboardingDescription = [
    'Make learning to be easier and more fun with us',
    'We will help you learning with our interactive fitur',
    'Ready to start your journey? Let`s Go..',
  ];
  List onboardingImgUrl = [
    'assets/onboardingImg1.png',
    'assets/onboardingImg2.png',
    'assets/onboardingImg3.png',
  ];

  String getTitle(int contentstate) {
    if (contentstate == 0) {
      return onboardingTitle[0];
    } else if (contentstate == 1) {
      return onboardingTitle[1];
    } else {
      return onboardingTitle[2];
    }
  }

  String getDesc(int contentstate) {
    if (contentstate == 0) {
      return onboardingDescription[0];
    } else if (contentstate == 1) {
      return onboardingDescription[1];
    } else {
      return onboardingDescription[2];
    }
  }

  String getImgUrl(int contentstate) {
    if (contentstate == 0) {
      return onboardingImgUrl[0];
    } else if (contentstate == 1) {
      return onboardingImgUrl[1];
    } else {
      return onboardingImgUrl[2];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: SafeArea(
          child: ListView(
        children: [
          Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2 + 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: (contentstate < 2)
                          ? BorderRadius.only(bottomRight: Radius.circular(48))
                          : BorderRadius.only(
                              bottomRight: Radius.circular(48),
                              bottomLeft: Radius.circular(48),
                            )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      (contentstate < 2)
                          ? GestureDetector(
                              onTap: () {
                                setState(() {
                                  Get.to(SignInPage());
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(15.0),
                                child: Text("Skip",
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                decoration: BoxDecoration(
                                    color: greenColor,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(24))),
                              ),
                            )
                          : SizedBox(),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height / 2 - 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(getImgUrl(contentstate)))),
                        ),
                      )
                    ],
                  )),
              Center(
                child: Column(children: [
                  Container(
                      margin: (contentstate < 2)
                          ? EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 2 + 100)
                          : EdgeInsets.only(
                              top:
                                  MediaQuery.of(context).size.height / 2 + 100),
                      child: Text(getTitle(contentstate),
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                  Container(
                      // alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 2 + 100,
                      // color: Colors.grey,
                      margin: EdgeInsets.only(top: 0),
                      child: Text(getDesc(contentstate),
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[300]))),
                  Container(
                    margin: (contentstate < 2)
                        ? EdgeInsets.only(top: 48, left: 30, right: 30)
                        : EdgeInsets.only(top: 18),
                    width: double.infinity,
                    child: (contentstate < 2)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: (contentstate == 0)
                                            ? Colors.white
                                            : Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    width: 20,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: (contentstate == 1)
                                            ? Colors.white
                                            : Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  Container(
                                    width: 20,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: (contentstate == 2)
                                            ? Colors.white
                                            : Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                ],
                              ),
                              Container(
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white),
                                    onPressed: () {
                                      setState(() {
                                        if (contentstate >= 0) {
                                          contentstate++;
                                        }
                                      });
                                    },
                                    child: Text("Next >",
                                        style: GoogleFonts.poppins().copyWith(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: blueColor))),
                              )
                            ],
                          )
                        : Container(
                            margin:
                                EdgeInsets.only(top: 8, left: 30, right: 30),
                            width: MediaQuery.of(context).size.width - 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24)),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white),
                                onPressed: () {
                                  Get.to(SignInPage());
                                },
                                child: Text("Get Started",
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: blueColor))),
                          ),
                  )
                ]),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
