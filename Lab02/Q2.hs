retornaAsterisco :: Int -> Int -> String
retornaAsterisco iterator limite
  |iterator == limite = ""
  |otherwise = "*" ++ retornaAsterisco (iterator + 1) limite

retornaEspaco :: Int -> Int -> String
retornaEspaco iterator limite
  |iterator > limite = ""
  |otherwise = " " ++ retornaEspaco (iterator + 1) limite

functionAltura :: Int -> Int -> IO()
functionAltura iterator alturaFinal
  | iterator > alturaFinal = ""
  | otherwise = print((retornaEspaco (alturaFinal - iterator) alturaFinal) ++ retornaAsterisco 0 iterator) ++ functionAltura (iterator + 1) alturaFinal

main :: IO()
main = do
  altura <- readLn :: IO Int
  functionAltura 1 altura
