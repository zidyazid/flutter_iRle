part of 'pages.dart';

class KosaKataPage extends StatefulWidget {
  // const KosaKataPage({ Key? key }) : super(key: key);

  @override
  _KosaKataPageState createState() => _KosaKataPageState();
}

class _KosaKataPageState extends State<KosaKataPage> {
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: mockUser.name,
      subtitle: "Lets memmorized some vocabularies",
      child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Center(child: TabelKosaKata())),
    );
  }
}
