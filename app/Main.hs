module Main where

{-# LANGUAGE OverloadedStrings #-}
import Network.HTTP.Types (status200)
import Network.Wai
import Network.Wai.Handler.Warp (run)

main :: IO ()
main = run 8000 $ \_req send ->
  send $ responseBuilder
    status200
    [("Content-Type", "text/plain; charset=utf-8")]
    "Hello, World!"
