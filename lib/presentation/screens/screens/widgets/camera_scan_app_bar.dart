import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_smile/core/constants/theme_provider.dart';

class CameraScanAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CameraScanAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Consumer<ThemeProvider>(
      builder: (context, value, child) => AppBar(
        title: Text('Camera'),
        // Container(
        //   alignment: Alignment.bottomCenter,
        //   width: screenWidth * 0.3,
        //   height: screenHeight * 0.1,
        //   child: Text(
        //     'Camera',
        //     style: value.mainPageTitleStyle,
        //   ),
        // ),
        centerTitle: true,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: value.iconColor,
        //   ),
        // ),
      ),
    );
  }

  // Container(
  //       color: Colors.red,
  //       width: screenWidth * 0.1,
  //       // height: screenHeight * 0.1,
  //       child: Row(
  //         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           IconButton(
  //             onPressed: () {
  //               //go to home page
  //             },
  //             icon: Icon(
  //               Icons.arrow_back,
  //               color: value.iconColor,
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.only(left: 8.0),
  //             child: SizedBox(
  //               width: screenWidth * 0.2,
  //               child: Text(
  //                 'Camera',
  //                 style: value.mainPageTitleStyle,
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
