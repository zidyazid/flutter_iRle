part of 'widgets.dart';

class Chatty extends StatelessWidget {
  // const Chatty({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.snackbar("Chat", "To chat with irle chatbot");
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.green,
            boxShadow: [
              BoxShadow(
                color: Colors.green[900],
                spreadRadius: 3,
                blurRadius: 8,
                offset: Offset(0, 0),
              )
            ]),
        child: Icon(Icons.chat, color: Colors.white),
      ),
    );
  }
}
