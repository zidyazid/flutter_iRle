part of 'pages.dart';

class KuisPage extends StatefulWidget {
  // const KuisPage({ Key? key }) : super(key: key);
  final int idMateri;
  KuisPage({this.idMateri});
  @override
  _KuisPageState createState() => _KuisPageState();
}

class _KuisPageState extends State<KuisPage> {
  int indexpertanyaan = 0; // set index pertanyaan
  TextEditingController jawabancontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: mockUser.name,
      subtitle: "Finish the test to see your understanding",
      child: Container(
          color: "F8F8F8".toColor(),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 4,
                // color: Colors.grey,
                child: Center(
                  child: Text("Quiz",
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 48,
                        color: greenColor,
                      )),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(24, 0, 24, 24),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: KuisList(id: widget.idMateri)),
            ],
          )
          // KuisList(),

          ),
    );
  }
}
