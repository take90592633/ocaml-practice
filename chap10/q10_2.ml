#use "q10_1.ml"

let rec ins_sort list = match list with
  [] -> []
  | first :: rest -> insert (ins_sort rest) first

let test1 = ins_sort [] = []
let test2 = ins_sort [1] = [1]
let test3 = ins_sort [2;1] = [1;2]
let test4 = ins_sort [5;3;8;1;7;4] = [1;3;4;5;7;8]