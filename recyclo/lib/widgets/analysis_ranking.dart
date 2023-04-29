import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/item.dart';
import '../models/user.dart';

class Ranking extends StatelessWidget {
  User user;
  Map<String, int> percentages = {};
  
  Ranking({super.key, required this.user}) {
    percentages = user.categoryTally;
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
  
  List<String> calcPercentageRank() {
    List<String> rankings = [];
    int totalCount = user.item.length;

    // Calculate the percentage of total for each category.
    for(String key in percentages.keys) {
      // Currently asserting not null for percentages[key].
      percentages[key] = ((percentages[key]! ~/ totalCount) * 100);
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