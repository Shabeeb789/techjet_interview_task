import 'package:flutter/material.dart';
import 'package:interview_task_bengaluru/constants/responsive.dart';
import 'package:interview_task_bengaluru/constants/spaces.dart';

class OfferList extends StatelessWidget {
  const OfferList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: ResponsiveSize.width(180, context),
                width: ResponsiveSize.width(130, context),
                margin: const EdgeInsets.only(right: 10),
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/offerposter.png"),
                        fit: BoxFit.cover)),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    )),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Domino's Pizza",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.all(ResponsiveSize.width(6, context)),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "4.2",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffFA6A02),
                                size: 20,
                              ),
                              Text(
                                "(10k+)",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        const Text(
                          " 25 mins",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const Text(
                      "Pizzas,Italian,Pasta,Pimple Saudagar",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF666464),
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "FREE DELIVERY",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF11CF24),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Color(0xff666464),
                  ))
            ],
          );
        },
        separatorBuilder: (context, index) {
          return Spaces.sizedboxh20(context);
        },
        itemCount: 2);
  }
}
