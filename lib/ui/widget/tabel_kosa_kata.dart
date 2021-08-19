part of 'widgets.dart';

class TabelKosaKata extends StatelessWidget {
  // const KosaKata({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // KosaKata kosakata;
    return BlocBuilder<KosakataCubit, KosakataState>(builder: (_, state) {
      if (state is KosakataLoaded) {
        return Container(
          margin: EdgeInsets.only(top: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 24, bottom: 24),
                child: Text("Vocabullary",
                    style: GoogleFonts.poppins().copyWith(
                        color: greenColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w500)),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    headingRowColor: MaterialStateColor.resolveWith(
                      (states) {
                        return aquaColor;
                      },
                    ),
                    columns: <DataColumn>[
                      DataColumn(
                        label: Text(
                          "Reguler Verb",
                          style: GoogleFonts.poppins().copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          "Verb 1",
                          style: GoogleFonts.poppins().copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          "Verb 2",
                          style: GoogleFonts.poppins().copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          "Memorized",
                          style: GoogleFonts.poppins().copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                    rows: mockKosaKata
                        .map((kosakata) => DataRow(cells: [
                              DataCell(Text(
                                kosakata.kataDasar,
                                style: GoogleFonts.poppins().copyWith(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              )),
                              DataCell(Text(
                                kosakata.verb1,
                                style: GoogleFonts.poppins().copyWith(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              )),
                              DataCell(Text(
                                kosakata.verb2,
                                style: GoogleFonts.poppins().copyWith(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              )),
                              DataCell(OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  side: BorderSide(width: 2, color: aquaColor),
                                ),
                                onPressed: () {},
                                child: Text((kosakata.status == 0)
                                    ? 'memorized'
                                    : 'finish'),
                              ))
                            ]))
                        .toList()),
              ),
            ],
          ),
        );
      } else {
        return Center(child: loadingIndicator);
      }
    });
  }
}
