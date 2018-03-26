module Fibonacci(
    fib_1000000,
    fibN
    )where

fib :: Integer -> Integer
fib 1 = 1
fib 2 = 1
fib n = fib (n-1) + fib (n-2)

fibs :: [Integer]
fibs = 1 : scanl (+) 1 fibs

fibsN :: Int -> Integer
fibsN x = fibs !! x

fib_1000000 = do
    print(fibsN (1000000 - 1))

fibN = do
    putStr("Please a num to calculate: ")
    n <- getLine
    putStrLn $ show (fibsN ((read n) - 1))
