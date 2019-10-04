functionRecursive :: Int -> [Int]
functionRecursive 0 = []
functionRecursive n = functionRecursive (n - 1) ++ [recebeValores]

recebeValores :: Int
recebeValores = do
  expression <- readLn :: IO Int
  return expression

main :: IO()
main = do
  quantidadeValores <- readLn :: IO Int
  putStrLn(show(functionRecursive quantidadeValores))
