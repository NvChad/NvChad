let rec fib n =
    if n <= 1 then 1 else fib (n - 1) + fib (n - 2)
