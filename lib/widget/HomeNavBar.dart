import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomeNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            color: Colors.black,
            size: 32,
          ),
          InkWell(
            onTap: () {
              _showSlidingBottomSheet(context); // Panggil metode _showSlidingBottomSheet
            },
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 32,
            ),
          ),
          Icon(
            Icons.format_list_bulleted_add,
            color: Colors.black,
            size: 32,
          ),
        ],
      ),
    );
  }

  void _showSlidingBottomSheet(BuildContext context) {
    showSlidingBottomSheet(
      context,
      builder: (context) {
        return SlidingSheetDialog(
          elevation: 8,
          cornerRadius: 16,
          builder: (context, state) {
            return BottomCartSheet();
          },
        );
      },
    );
  }
}
