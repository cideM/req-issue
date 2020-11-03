{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Map
import Data.Text
import Network.HTTP.Req

main :: IO ()
main = do
  r <-
    runReq defaultHttpConfig $
      req
        GET
        (https "www.googleapis.com" /: "robot" /: "v1" /: "metadata" /: "x509" /: "securetoken@system.gserviceaccount.com")
        NoReqBody
        jsonResponse
        mempty
  print (responseBody r :: Map Text Text)
  return ()
