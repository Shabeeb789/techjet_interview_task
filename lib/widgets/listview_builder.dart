import 'package:flutter/material.dart';
import 'package:interview_task_bengaluru/constants/category_constants.dart';
import 'package:interview_task_bengaluru/widgets/dish_category._widget.dart';

class ListViews extends StatelessWidget {
  const ListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: CategoryData.dishcategory.length,
        separatorBuilder: (context, index) {
          return const Padding(padding: EdgeInsets.all(8));
        },
        itemBuilder: (context, index) {
          return DishCategory(
              imagetext: CategoryData.dishcategory[index].imagetext,
              text: CategoryData.dishcategory[index].text);
        },
      ),
    );
  }
}
