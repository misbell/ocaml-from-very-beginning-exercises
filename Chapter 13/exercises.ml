let rec forloop f n m =
  if n <= m then
    begin
      f n;
      forloop f (n + 1) m
    end

let array_sum a =
  let sum = ref 0 in
    for x = 0 to Array.length a - 1 do
      sum := !sum + a.(x)
    done;
    !sum

let array_rev a =
  if Array.length a > 1 then
    for x = 0 to Array.length a / 2 - 1 do
      let t = a.(x) in
        a.(x) <- a.(Array.length a - 1 - x);
        a.(Array.length a - 1 - x) <- t
    done

let table n =
  let a = Array.make n [||] in
    for x = 0 to n - 1 do
      a.(x) <- Array.make n 0
    done;
    for y = 0 to n - 1 do
      for x = 0 to n - 1 do
        a.(x).(y) <- (x + 1) * (y + 1)
      done
    done;
    a

let uppercase x =
  if int_of_char x >= 97 && int_of_char x <= 122
    then char_of_int (int_of_char x - 32)
    else x

let lowercase x =
  if int_of_char x >= 65 && int_of_char x <= 90
    then char_of_int (int_of_char x + 32)
    else x
