retornaNumeros :: Char -> Char
retornaNumeros entrada
  | entrada == 'a' = '4'
  | entrada == 'e' = '3'
  | entrada == 'i' = '1'
  | entrada == 'o' = '0'
  | entrada ==  'u' = '5'
  | otherwise = entrada


functionRecursive :: [Char] -> [Char]
functionRecursive [] = []
functionRecursive (head:tail) = (retornaNumeros head: functionRecursive tail)

main :: IO ()
main = do
  entrada <- getLine
  putStrLn(functionRecursive entrada)
