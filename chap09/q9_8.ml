#use "q9_7.ml"

let rec otomeza list = match list with
  [] -> []
  | {name = n; month = m; day = d; blood_type = b} :: rest 
    -> if (((m = 8) && (d >= 23 || d <= 31)) || ((m = 9) && (d >= 1 || d <= 22))) then n :: otomeza rest
       else otomeza rest 

let test1 = otomeza list1 = []
let test2 = otomeza list2 = []
let test3 = otomeza list3 = []
let test4 = otomeza list4 = ["ccc"]
let test5 = otomeza list5 = ["ccc";"ddd"]
