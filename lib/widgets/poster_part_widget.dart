import 'package:flutter/material.dart';
import 'package:interview_task_bengaluru/constants/responsive.dart';

class OfferPart extends StatelessWidget {
  const OfferPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.only(
        top: ResponsiveSize.width(20, context),
        left: ResponsiveSize.width(20, context),
        right: ResponsiveSize.width(20, context),
      ),
      decoration: BoxDecoration(
        color: const Color(0xff111E24),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Get 50% off on your first order. ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFA6A02),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text(
                      "Order Now",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ),
          SizedBox(
              width: ResponsiveSize.width(150, context),
              child: Image.asset(
                "assets/images/cheeseburger.png",
                fit: BoxFit.cover,
              ))
        ],
      ),
    );
  }
}
