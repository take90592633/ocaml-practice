type persion = {
  name:string;
  month:int;
  day:int;
  blood_type:string;
}

let list1 = []
let list2 = [{name = "aaa"; month = 1; day = 1; blood_type = "O"}]
let list3 = [
              {name = "aaa"; month = 1; day = 1; blood_type = "O"};
              {name = "bbb"; month = 6; day = 20; blood_type = "B"};
            ]
let list4 = [
              {name = "aaa"; month = 1; day = 1; blood_type = "O"};
              {name = "bbb"; month = 6; day = 20; blood_type = "B"};
              {name = "ccc"; month = 8; day = 31; blood_type = "A"};
            ]
let list5 = [
              {name = "aaa"; month = 1; day = 1; blood_type = "O"};
              {name = "bbb"; month = 6; day = 20; blood_type = "B"};
              {name = "ccc"; month = 8; day = 31; blood_type = "A"};
              {name = "dddd"; month = 9; day = 22; blood_type = "A"};
            ]

let rec count_A list = match list with
  [] -> 0
  | {name = n; month = m; day = d; blood_type = b} :: rest 
    -> if b = "A" then 1 + count_A rest
       else count_A rest
    

let test1 = count_A list1 = 0
let test2 = count_A list2 = 0
let test3 = count_A list3 = 0
let test4 = count_A list4 = 1
let test5 = count_A list5 = 2