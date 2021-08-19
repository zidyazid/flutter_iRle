part of 'pages.dart';

class MainPage extends StatefulWidget {
  // const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // SafeArea(child: Container(color: "FAFAFC".toColor())),
          SafeArea(
              child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                selectedPage = index;
              });
            },
            children: [
              Center(
                child: MateriListItem(),
              ),
              Center(child: KosaKataPage()),
              Center(
                child: ScorePage(),
              ),
            ],
          )),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                    bottom: defaultMargin,
                    left: defaultMargin,
                    right: defaultMargin),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 + 60,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(ChabotPage());
                          },
                          child: InkWell(
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/chaty.png"))),
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomTopNavbar(
                      selectedIndex: selectedPage,
                      onTap: (index) {
                        setState(() {
                          selectedPage = index;
                        });
                        pageController.jumpToPage(selectedPage);
                      },
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
