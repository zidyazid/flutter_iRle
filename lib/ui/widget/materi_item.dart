part of 'widgets.dart';

class MateriItem extends StatelessWidget {
  // const MateriItem({ Key? key }) : super(key: key);
  final Materi materi;

  MateriItem({this.materi});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(MateriPage(materi: materi));
            // Get.snackbar('id', materi.rumus);
            // Get.to(MateriPage(
            //   idMateri: materi.id,
            //   isi: materi.isi,
            //   contoh: materi.contoh,
            //   rumus: materi.rumus,
            //   judul: materi.judul,
            // ));
          },
          child: Container(
            color: Colors.white,
            margin: EdgeInsets.fromLTRB(24, 0, 24, 16),
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 150,
              padding: EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      // margin: EdgeInsets.only(top: 0, left: 0),
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              materi.judul,
                              style: GoogleFonts.poppins()
                                  .copyWith(color: blueColor, fontSize: 22),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              materi.desc,
                              style: GoogleFonts.poppins().copyWith(
                                  color: Colors.black87, fontSize: 12),
                              // maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 45,
                    // padding: EdgeInsets.all(5),
                    child: Center(
                        child: Text("Start",
                            style: GoogleFonts.poppins()
                                .copyWith(color: blueColor, fontSize: 18))),
                    decoration: BoxDecoration(
                        border: Border.all(color: blueColor),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
