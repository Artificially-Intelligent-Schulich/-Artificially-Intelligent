import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:recyclo/widgets/ranking_element.dart';

import '../models/item.dart';
import '../models/user.dart';

class AnalysisRanking extends StatelessWidget {
  User user;
  Map<String, int> percentages = {};
  List<String> ranking = [];
  
  AnalysisRanking({super.key, required this.user}) {
    percentages = user.categoryTally;
    ranking = calcPercentageRank();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Your Waste Profile"),
          RankingElement(
            rank: 1,
            type: ranking[0],
            percentage: percentages[ranking[0]]!.toInt()
          ),
          RankingElement(
            rank: 2,
            type: ranking[1],
            percentage: percentages[ranking[1]]!.toInt()
          ),
          RankingElement(
            rank: 3,
            type: ranking[2],
            percentage: percentages[ranking[2]]!.toInt()
          ),
                    RankingElement(
            rank: 4,
            type: ranking[3],
            percentage: percentages[ranking[3]]!.toInt()
          ),
                    RankingElement(
            rank: 5,
            type: ranking[4],
            percentage: percentages[ranking[4]]!.toInt()
          )
        ]
      )
    );
  }
  
  List<String> calcPercentageRank() {
    List<String> rankings = [];
    int totalCount = user.item.items.length;

    // Calculate the percentage of total for each category.
    for(String key in percentages.keys.toList()) {
      percentages[key] = ((percentages[key]! ~/ totalCount) * 100);
      print("Total count: " + totalCount.toString());
      // Currently asserting not null for percentages[key].
      /*
      if(totalCount != 0) {
        percentages[key] = ((percentages[key]! ~/ totalCount) * 100);
      }
      else{
        percentages[key] = 0;
      }
      */
    }

    // Use quicksort to rank the items from high to low.
    List<int> values = percentages.values.toList();
    rankings = quicksort(percentages.keys.toList(), values, 1, values.length-1);
    return rankings;
  }

  List<String> quicksort(List<String> keys, List<int> values, int low, int high) {
    // Partition the values list.
    if (low < high) {
      int pivot = values[high];
      int tempNum = 0;
      String tempStr = '';

      int i = low - 1;

      for(int j = low; j < high; j++) {
        if(values[j] > pivot) {
          // Swap values.
          tempNum = values[i];
          values[i] = values[j];
          values[j] = tempNum;

          // Swap corresponding keys.
          tempStr = keys[i];
          keys[i] = keys[j];
          keys[j] = tempStr;
        }
      }
    
      // Swap the values.
      tempNum = values[i+1];
      values[i+1] = values[high];
      values[high] = tempNum;

      // Swap corresponding keys.
      tempStr = keys[i+1];
      keys[i+1] = keys[high];
      keys[high] = tempStr;

      // Sort sections both higher and lower than the new pivot.
      quicksort(keys, values, low, i);
      quicksort(keys, values, i + 2, high);
  }

  // The quicksort has been completed by here.
  return keys;
  }
}