part of 'pages.dart';

class MateriPage extends StatefulWidget {
  // const MateriPage({ Key? key }) : super(key: key);
  final Materi materi;
  // final int idMateri;
  // final String isi;
  // final String contoh;
  // final String rumus;
  // final String judul;
  // MateriPage({this.idMateri, this.isi, this.contoh, this.rumus, this.judul});

  MateriPage({this.materi});

  @override
  _MateriPageState createState() => _MateriPageState();
}

class _MateriPageState extends State<MateriPage> {
  // int id = idMateri;
  // List<Materi> withId =
  //     mockMateries.where((element) => element.id == id).toList();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MateriCubit, MateriState>(builder: (_, state) {
      if (state is MateriLoaded) {
        return Scaffold(
          body: GeneralPage(
              title: mockUser.name,
              subtitle: "now you will learn how to use " + widget.materi.judul,
              child: Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.materi.judul,
                      style: blackFontStyle1,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Theory",
                      style: blackFontStyle2,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      widget.materi.isi,
                      style: blackFontStyle3,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 100,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Structure",
                      style: blackFontStyle2,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      widget.materi.rumus,
                      style: blackFontStyle3,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 100,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Example",
                      style: blackFontStyle2,
                    ),
                    Text(
                      widget.materi.contoh,
                      style: blackFontStyle3,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: ElevatedButton(
                              style:
                                  ElevatedButton.styleFrom(primary: greyColor),
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Back")),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: ElevatedButton(
                              style:
                                  ElevatedButton.styleFrom(primary: blueColor),
                              onPressed: () {
                                Get.to(KuisPage(
                                  idMateri: widget.materi.id,
                                ));
                              },
                              child: Text("Quiz")),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        );
      } else {
        return Center(child: loadingIndicator);
      }
    });
  }
}
