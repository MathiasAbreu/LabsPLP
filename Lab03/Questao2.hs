
functionRecursive :: Int -> [Int] -> [[Int]]
functionRecursive 9 arrayOriginal = [retornaCount 9 arrayOriginal]
functionRecursive n arrayOriginal = [(retornaCount n arrayOriginal)] ++ functionRecursive (n + 1) arrayOriginal

retornaCount :: Int -> [Int] -> [Int]
retornaCount n [] = []
retornaCount n (head:tail)
  | (head == n) = [n] ++ retornaCount n tail
  | otherwise = retornaCount n tail

main :: IO ()
main = do
  entrada <- getLine
  let lista = read entrada
  putStrLn(show(functionRecursive 1 lista))
