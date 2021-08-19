part of 'pages.dart';

class SignInPage extends StatefulWidget {
  // const SignInPage({ Key? key }) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GeneralSign(
      title: "Sign In",
      subtitle: "Lets learning english with us",
      child: Container(
        color: Colors.white,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: defaultMargin, right: 24, top: 16),
                  width: MediaQuery.of(context).size.width - 48,
                  height: 250,
                  decoration: BoxDecoration(
                      // color: Colors.grey,
                      image: DecorationImage(
                          image: AssetImage("assets/signinImage.png"))),
                ),
              ],
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
                    hintText: 'type your email address'),
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
                  ? loadingIndicator
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: blueColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      onPressed: () async {
                        setState(() {
                          isLoading = true;
                        });
                        await context.bloc<UserCubit>().signIn(
                            emailcontroller.text, passwordcontroller.text);

                        UserState state = context.bloc<UserCubit>().state;

                        if (state is UserLoaded) {
                          context.bloc<MateriCubit>().getMateries();
                          context.bloc<KosakataCubit>().getKosaKata();
                          context.bloc<KuisCubit>().getKuises();
                          Get.to(MainPage());
                        }
                      },
                      child: Text("Sign In",
                          style: GoogleFonts.poppins().copyWith(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300)),
                    ),
            ),
            Container(
                width: double.infinity,
                // color: Colors.grey,
                // margin: EdgeInsets.only(top: 24),
                // padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: isLoading
                    ? SpinKitFadingCircle(
                        size: 45,
                        color: purpleColor,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Dont have account?"),
                          TextButton(
                              onPressed: () {
                                Get.to(SignUpPage());
                              },
                              child: Text("Sign Up",
                                  style: GoogleFonts.poppins().copyWith(
                                      color: blueColor, fontSize: 14)))
                        ],
                      ))
          ],
        ),
      ),
    );
  }
}
