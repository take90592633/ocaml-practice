let rec insert list n = match list with
  [] -> [n]
  | first :: rest -> if first >= n then n :: list
                     else first :: insert rest n 

let test1 = insert [] 1 = [1]
let test2 = insert [1;3] 2 = [1;2;3]
let test3 = insert [1;2;3] 4 = [1;2;3;4]
