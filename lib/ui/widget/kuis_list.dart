part of 'widgets.dart';

class KuisList extends StatefulWidget {
  const KuisList({Key key, @required this.id}) : super(key: key);
  final int id;

  // KuisList({this.id});
  @override
  _KuisListState createState() => _KuisListState();
}

class _KuisListState extends State<KuisList> {
  int score = 0;
  int indexpertanyaan = 0; // set index pertanyaan

  TextEditingController jawabancontroller = new TextEditingController();

  // List<Kuis> kuises =

  // void kuis() {
  //   String jwbBenar = kuises[indexpertanyaan].jawabanBenar;
  //   var jawab = jawabancontroller.text;

  //   List<String> hasil = jwbBenar.split(jawab.toString());

  //   if (indexpertanyaan > mockKuis.length) {
  //     Get.to(ScoreQuis());
  //   }

  //   if (hasil.length == 2) {
  //     AlertDialog alertDialog = new AlertDialog(
  //       content: new Container(
  //         height: 200.0,
  //         child: new Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             new Text("ok"),
  //             // new Text(indexpertanyaan.toString()),
  //             ElevatedButton(
  //                 onPressed: () {
  //                   // (indexpertanyaan <= kuises.length)
  //                   //     ? Get.to(ScoreQuis())
  //                   //      : Navigator.pop(context);
  //                   setState(() {
  //                     // Get.snackbar("value", indexpertanyaan.toString());
  //                     indexpertanyaan++;
  //                     (indexpertanyaan < kuises.length)
  //                         ? Navigator.pop(context)
  //                         : Get.to(
  //                             ScoreQuis()); // increment index pertanyaan bila kondisi true
  //                     jawabancontroller.text = "";
  //                   });
  //                 },
  //                 child: Text("ok"))
  //           ],
  //         ),
  //       ),
  //     );
  //     showDialog(builder: (context) => alertDialog, context: context);
  //   } else {
  //     AlertDialog alertDialog = new AlertDialog(
  //       content: new Container(
  //         height: 200.0,
  //         child: new Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             new Text("Wrong Answer"),
  //             Center(
  //               child: ElevatedButton(
  //                   onPressed: () {
  //                     Navigator.pop(context);
  //                     jawabancontroller.text = "";
  //                   },
  //                   child: Text("ok")),
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
  //     showDialog(builder: (context) => alertDialog, context: context);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              // color: Colors.grey,
              width: double.infinity,
              // height: MediaQuery.of(context).size.height / 2,
              child: BlocBuilder<KuisCubit, KuisState>(
                builder: (_, state) {
                  List<Kuis> kuises = mockKuis
                      .where((element) => element.idMateri == widget.id)
                      .toList();
                  if (state is KuisLoaded) {}
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (indexpertanyaan < kuises.length)
                              ? kuises[indexpertanyaan]
                                  .pertanyaan //menampilkan pertanyaan
                              : "quis selesai",
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )
                      ]);
                },
              ),
            ),
            Container(
              // color: Colors.blue,
              width: double.infinity,
              // height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Column(
                  children: [
                    TextField(
                      controller: jawabancontroller,
                      style: TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black),
                          fillColor: Colors.black,
                          hintMaxLines: 1,
                          hintText: "Answer"),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 16),
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: blueColor),
                            onPressed: () {
                              List<Kuis> kuises = mockKuis
                                  .where((element) =>
                                      element.idMateri == widget.id)
                                  .toList();
                              // Get.snackbar("data", kuises[0].jawabanBenar);
                              String jwbBenar =
                                  kuises[indexpertanyaan].jawabanBenar;
                              var jawab = jawabancontroller.text;
                              List<String> hasil =
                                  jwbBenar.split(jawab.toString());
                              setState(() {
                                if (hasil.length == 2) {
                                  // Get.snackbar("data",
                                  //     kuises[indexpertanyaan].jawabanBenar);
                                  // jawabancontroller.text = "";

                                  AlertDialog alertDialog = AlertDialog(
                                    content: Container(
                                      height: 200.0,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Berhasil",
                                              style: blackFontStyle1),
                                          // new Text(indexpertanyaan.toString()),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: blueColor),
                                              onPressed: () {
                                                // (indexpertanyaan <= kuises.length)
                                                //     ? Get.to(ScoreQuis())
                                                //      : Navigator.pop(context);
                                                setState(() {
                                                  score = score + 10;
                                                  // Get.snackbar("value", indexpertanyaan.toString());
                                                  // indexpertanyaan++;
                                                  (indexpertanyaan <
                                                          kuises.length)
                                                      ? Navigator.pop(context)
                                                      : Get.to(QuisFinish(
                                                          score: score,
                                                        )); // increment index pertanyaan bila kondisi true
                                                  jawabancontroller.text = "";
                                                });
                                              },
                                              child: Text("next"))
                                        ],
                                      ),
                                    ),
                                  );
                                  showDialog(
                                      builder: (context) => alertDialog,
                                      context: context);

                                  indexpertanyaan++;
                                } else {
                                  print("failed");
                                }
                              });
                            },
                            child: Text(
                              "Submit",
                              style: GoogleFonts.poppins()
                                  .copyWith(color: Colors.white, fontSize: 18),
                            ))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
