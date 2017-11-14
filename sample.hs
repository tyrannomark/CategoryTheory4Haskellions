import Data.List

-- Example 1
example :: Int -> Int -> Int
example x y = x + y

-- Example 2
factorial :: [ Int ]
factorial = map (\ (a,b) -> a * b) $ zip (1:[1..]) (1:factorial)

-- Example 3
main = undefined
