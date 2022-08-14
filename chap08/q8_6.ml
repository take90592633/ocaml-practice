#use "q8_5.ml"

let station1 = {kanji = "大手町"; kana = "おおてまち"; romaji = "otemachi"; traffic = "東西線"}

let show_kana station = match station with
{kanji = kanji; kana = kana; romaji = romaji; traffic = traffic} ->
  traffic ^ ", " ^ kanji ^ "(" ^ kana ^ ")"

let test1 = show_kana station1 = "東西線, 大手町(おおてまち)"