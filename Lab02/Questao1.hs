retornaPrecoFruta :: String -> Float -> Float
retornaPrecoFruta nome quantidade

  | nome == "uva" = quantidade * 8.00
  | nome == "banana" = quantidade * 3.50
  | nome == "laranja" = quantidade * 3.75
  | nome == "melancia" = quantidade * 2.20
  | nome == "goiaba" = quantidade * 5.20
  | otherwise = 0

func :: Int -> Float -> IO()
func 0 total = putStrLn(show total)
func n total = do
  fruta <- getLine
  quant <- readLn :: IO Float
  func (n -1) (total + (retornaPrecoFruta fruta quant))

main :: IO()
main = do
  quantidadeFrutas <- readLn :: IO Int
  func quantidadeFrutas 0
