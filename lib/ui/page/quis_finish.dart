part of 'pages.dart';

class QuisFinish extends StatelessWidget {
  // const QuisFinish({ Key? key }) : super(key: key);
  final int score;
  QuisFinish({this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: greenColor,
        child: Container(
          margin: EdgeInsets.only(top: 80),
          padding: EdgeInsets.only(bottom: 0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 430,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(500),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                            // color: Colors.white,
                            // color: Colors.grey,
                            image: DecorationImage(
                                image: AssetImage('assets/star.png'))),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 0),
                        // color: Colors.white,
                        height: 300,
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(
                                  bottom: 0,
                                ),
                                child: Text(
                                  (score == 0) ? "0" : score.toString(),
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 62,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )),
                            Text("Welldone",
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white)),
                            Text(
                                "Wow! you have finished a leason,\n ready to learn another leason?",
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white)),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.fromLTRB(24, 0, 24, 30),
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: blueColor),
                      onPressed: () {
                        Get.to(MainPage());
                      },
                      child: Text("Next",
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w100,
                              color: Colors.white))),
                ),
              )
              // decoration: BoxDecoration(
              //     color: Colors.grey,
              //     image: DecorationImage(image: AssetImage('assets/star.png'))),
            ],
          ),
        ),
      ),
    );
  }
}
