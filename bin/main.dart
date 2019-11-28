// Challenge
// Find the best move given the state of Towers of Hanoi board


List<List<List<int>>> possibleMoves(List<List<int>> input){
  List<List<List<int>>> result = [];

  for(int i = 0; i< input.length; i++){
    for(int j = 0; j< input.length; j++){
      if(validMove(input, i, j)){
        List<List<int>> copy=[];
        for (List<int> columns in input){
          copy.add(List.from(columns));
        }
        copy[j].insert(0, input[i][0]);
        copy[i].remove(input[i][0]);
        result.add(copy);
      }
    }
  }
  //print('after func $input = input  || $copy = copy');
  return result;
}

List<List<int>> winInOneMove(List<List<int>> currentInput){
  for(List<List<int>> list in possibleMoves(currentInput)){
    if(list[0].isEmpty && list[1].isEmpty){
      return currentInput;
    }
  }
  return null;
}

List<List<int>> winInTwoMove(List<List<int>> currentInput){

  for(List<List<int>> iteration in (possibleMoves(currentInput))){
    if(winInOneMove(iteration) != null){
      return currentInput;
    }
  }
}

bool validMove(List<List<int>> input, int from, int to){
  if(input[from].isEmpty) return false;
  //print('to = $to & from = $from');
  return(input[to].isEmpty || input[to].first > input[from].first);
}

main() {
  //print(possibleMoves([[3,4],[1,2],[]]));
  print(winInTwoMove([[1],[2],[3,4]]));
  print(winInOneMove([[1],[],[2,3,4]]));

}
