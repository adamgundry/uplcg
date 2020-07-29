{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# LANGUAGE TemplateHaskell #-}
module Cafp.Main.GenerateElmTypes
    ( main
    ) where

import Cafp.Messages
import Elm.Derive
import Elm.Module
import Data.Proxy

deriveBoth defaultOptions ''ServerMessage

main :: IO ()
main = putStrLn $ makeElmModule "Messages"
    [ DefineElm (Proxy :: Proxy ServerMessage)
    ]