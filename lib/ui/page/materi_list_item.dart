part of 'pages.dart';

class MateriListItem extends StatefulWidget {
  // const MateriListItem({ Key? key }) : super(key: key);

  @override
  _MateriListItemState createState() => _MateriListItemState();
}

class _MateriListItemState extends State<MateriListItem> {
  // final Materi materi;

  // _MateriListItemState(this.materi);
  @override
  Widget build(BuildContext context) {
    // Materi materi;
    return GeneralPage(
      title: mockUser.name,
      subtitle: "Welcome",
      child: Container(
        color: "F8F8F8".toColor(),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/teori.png'),
                          fit: BoxFit.contain)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 30, left: 30),
                  child: Text("Tenses List",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Container(
                  width: double.infinity,
                  color: "F8F8F8".toColor(),
                  child: BlocBuilder<MateriCubit, MateriState>(
                      builder: (_, state) {
                    if (state is MateriLoaded) {
                      List<Materi> materies = state.materi;
                      return Column(
                          children: materies
                              .map(
                                (e) => MateriItem(materi: e),
                              )
                              .toList());
                    } else {
                      return Center(child: loadingIndicator);
                    }
                  }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
