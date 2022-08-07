(* discriminantを読み込む *)
#use "q5_4.ml"

let number_of_answers a b c = 
  if discriminant a b c > 0 then 2
  else if discriminant a b c = 0 then 1
  else 0

let test1 = number_of_answers 1 2 3 = 0
let test2 = number_of_answers 2 4 2 = 1
let test3 = number_of_answers 3 6 1 = 2