{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty
import qualified Data.Text.Lazy as T

fac :: Integer -> Integer
fac n = product [1..n]

main :: IO ()
main = scotty 3000 $ do
  get "/" $ text "Hello world!"
  get "/fac/:num" $ do
    num <- param "num"
    text . T.pack . show $ fac num
