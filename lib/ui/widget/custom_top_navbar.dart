part of 'widgets.dart';

class CustomTopNavbar extends StatelessWidget {
  // const CustomTopNavbar({ Key? key }) : super(key: key);
  final int selectedIndex;
  final Function(int index) onTap;

  CustomTopNavbar({this.selectedIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 14),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: greenColor, borderRadius: BorderRadius.circular(35)),
      child: Container(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            GestureDetector(
              onTap: () {
                if (onTap != null) {
                  onTap(0);
                }
              },
              child: Container(
                margin: EdgeInsets.only(top: 0, left: 50),
                width: ((selectedIndex == 0) ? 100 : 24),
                height: ((selectedIndex == 0) ? 30 : 24),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/aktif_icon_home' +
                            ((selectedIndex == 0) ? '.png' : '_non.png')),
                        fit: BoxFit.contain)),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (onTap != null) {
                  onTap(1);
                }
              },
              child: Container(
                // padding: EdgeInsets.only(top: 3),
                // margin: EdgeInsets.symmetric(horizontal: 83),
                margin: EdgeInsets.only(top: 0),
                width: ((selectedIndex == 1) ? 100 : 24),
                height: ((selectedIndex == 1) ? 30 : 24),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/aktif_icon_list' +
                            ((selectedIndex == 1) ? '.png' : '_non.png')),
                        fit: BoxFit.contain)),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (onTap != null) {
                  onTap(2);
                }
              },
              child: Container(
                margin: EdgeInsets.only(top: 0, right: 50),
                width: ((selectedIndex == 2) ? 100 : 24),
                height: ((selectedIndex == 2) ? 30 : 24),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/aktif_icon_score' +
                            ((selectedIndex == 2) ? '.png' : '_non.png')),
                        fit: BoxFit.contain)),
              ),
            ),
            // GestureDetector(
            //   onTap: () {
            //     if (onTap != null) {
            //       onTap(3);
            //     }
            //   },
            //   child: Container(
            //     margin: EdgeInsets.only(top: 11, right: 50),
            //     width: 32,
            //     height: 32,
            //     decoration: BoxDecoration(
            //         image: DecorationImage(
            //             image: AssetImage('assets/graph' +
            //                 ((selectedIndex == 3) ? '_normal.png' : '.png')),
            //             fit: BoxFit.contain)),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
