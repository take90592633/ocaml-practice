let bmi height weight = weight /. (height *. height)

let determine_bmi height weigh = 
if bmi height weigh < 18.5 then "thin"
else if bmi height weigh >= 18.5 && bmi height weigh < 25.0 then "normal"
else "fat"

let test1 = determine_bmi 1.7 60.0 = "normal"
let test2 = determine_bmi 1.8 50.0 = "thin"
let test3 = determine_bmi 1.6 80.0 = "fat"