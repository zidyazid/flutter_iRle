part of 'widgets.dart';

class ListScore extends StatelessWidget {
  // const ListSqore({ Key? key }) : super(key: key);
  final Status status;
  final Materi materi;

  ListScore({this.status, this.materi});
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> extendedMateri = [];
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Builder(builder: (_) {
              Map<String, dynamic> getExtendedMateri(String judul, int score) {
                final Map<String, dynamic> data = new Map<String, dynamic>();
                // data["id"] = id;
                data["judul"] = judul;
                data["score"] = score.toString();
                return data;
              }

              mockStatus.forEach((element) {
                mockMateries.forEach((e) {
                  if (e.id == element.id) {
                    extendedMateri
                        .add(getExtendedMateri(e.judul, element.score));
                    print(extendedMateri[0]['judul']);
                    ;
                  }
                });
              });

              return Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < mockStatus.length; i++)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                // color: Colors.grey,
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                    extendedMateri[i]['judul'].toString(),
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black))),
                            Container(
                                alignment: Alignment.centerRight,
                                // color: Colors.red,
                                width: MediaQuery.of(context).size.width / 5,
                                child: Text(
                                    extendedMateri[i]['score'].toString(),
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: blueColor))),
                          ],
                        )
                    ]),
              );
            }),
          )
        ],
      ),
    );
  }
}
