let rec max list = match list with
    [] -> 0
  | first :: rest -> 
    let max_rest = max rest in
    if first > max_rest
    then first
    else max_rest

let test1 = max [] = 0
let test2 = max [1] = 1
let test3 = max [1;2] = 2
let test4 = max [4;1;2;6;5] = 6