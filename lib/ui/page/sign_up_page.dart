part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  // const SignUpPage({ Key? key }) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    // TextEditingController confirmpasswordcontroller = TextEditingController();
    bool isLoading = false;
    return GeneralSign(
      title: "Sign Up",
      subtitle: "Lets learning english with us",
      onBackButtonPressed: () {
        // Get.to(() => SignInPage());
        Get.back();
      },
      child: Container(
        color: Colors.white,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/signUpImage.png"))),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 12, defaultMargin, 6),
              child: Text(
                "Username",
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: blueColor),
              ),
              child: TextField(
                controller: usernamecontroller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: greyFontStyle,
                    hintText: 'Type your username'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
              child: Text(
                "Email Address",
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: blueColor),
              ),
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: greyFontStyle,
                    hintText: 'Type your email address'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
              child: Text(
                "Password",
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: blueColor),
              ),
              child: TextField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: greyFontStyle,
                    hintText: 'type your password'),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 24),
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: isLoading
                  ? SpinKitFadingCircle(
                      size: 45,
                      color: purpleColor,
                    )
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: blueColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      onPressed: () {
                        // Get.snackbar("hi", "how are you");
                      },
                      child: Text("Create account",
                          style: GoogleFonts.poppins().copyWith(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300)),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
