let rec max list = match list with
    [] -> 0
  | first :: rest -> 
    if first > max rest
    then first
    else max rest 

let test1 = max [] = 0
let test2 = max [1] = 1
let test3 = max [1;2] = 2
let test4 = max [4;1;2;6;5] = 6