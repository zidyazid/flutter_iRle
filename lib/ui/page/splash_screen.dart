part of 'pages.dart';

class SplashScreen extends StatefulWidget {
  // const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Get.to(OnBoardingPage());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomRight,
                    colors: <Color>[greenColor, "94E1E6".toColor()]),
              ),
              child: Center(
                  child: Stack(
                children: [
                  Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 1,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: BoxShape.circle)),
                  Center(
                      child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/logo_chatbot.png"))),
                  )),
                ],
              )))),
    );
  }
}
