part of 'pages.dart';

class ScorePage extends StatefulWidget {
  // const ScorePage({ Key? key }) : super(key: key);

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: mockUser.name,
      subtitle: "Lets see your",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Text("Total Score",
                style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[400],
                    fontSize: 32)),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(24, 24, 24, 24),
            width: double.infinity,
            // height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [ListScore()]
                // Text(totalScore.toString(),
                //     style: GoogleFonts.poppins().copyWith(
                //         fontWeight: FontWeight.w500,
                //         color: blueColor,
                //         fontSize: 32)),
                // Container(
                //   margin: EdgeInsets.fromLTRB(24, 24, 24, 24),
                //   child: ListScore(status: ,),
                // )
                ,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
