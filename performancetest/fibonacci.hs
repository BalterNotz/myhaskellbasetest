module Main where

--import Data.Time.Clock as Clock

fib :: Integer -> Integer
fib 1 = 1
fib 2 = 1
fib n = fib (n-1) + fib (n-2)

fibs = 1 : scanl (+) 1 fibs
fibsN x = fibs !! x

main = do
    putStrLn("Hello World! 你好世界！")
--    begin <- Clock.getCurrentTime
--    putStrLn("Input a num to calculate fibonacci:")
--    n <- getLine
    print(fibsN (1000000 - 1))
--    end <- Clock.getCurrentTime