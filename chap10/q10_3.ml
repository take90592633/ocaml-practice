#use "q10_1.ml"

type gakusei = {
  name:string;
  score:int;
  result:string;
}

let gakusei90 = {name = "aaa"; score = 90; result = "S"}
let gakusei70 = {name = "bbb"; score = 70; result = "B"}
let gakusei80 = {name = "ccc"; score = 80; result = "A"}

let list1 = []
let list2 = [gakusei90]
let list3 = [gakusei90;gakusei70]

let rec gakusei_insert list gakusei0 = match list with
    [] -> [gakusei0]
  | ({name = n; score = s; result = r} as gakusei) :: rest -> 
    match gakusei0 with {name = n0; score = s0; result = r0} ->
      if s < s0 then gakusei :: gakusei_insert rest gakusei0 
      else gakusei0 :: list 

let test1 = gakusei_insert [] gakusei90 = [gakusei90]
let test2 = gakusei_insert [gakusei90] gakusei70 = [gakusei70;gakusei90]
let test3 = gakusei_insert [gakusei70] gakusei90 = [gakusei70;gakusei90]
let test4 = gakusei_insert [gakusei70;gakusei90] gakusei80 = [gakusei70;gakusei80;gakusei90]

let rec gakusei_sort list = match list with
    [] -> []
  | first :: rest -> gakusei_insert (gakusei_sort rest) first
  
let test5 = gakusei_sort [] = []
let test6 = gakusei_sort [gakusei70] = [gakusei70]
let test7 = gakusei_sort [gakusei70;gakusei90] = [gakusei70;gakusei90]
let test8 = gakusei_sort [gakusei90;gakusei70] = [gakusei70;gakusei90]
let test9 = gakusei_sort [gakusei90;gakusei70;gakusei80] = [gakusei70;gakusei80;gakusei90]