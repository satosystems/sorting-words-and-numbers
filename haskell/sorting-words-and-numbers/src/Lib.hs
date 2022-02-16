{-# LANGUAGE OverloadedStrings #-}

module Lib
  ( someFunc
  ) where

import           Data.Char                      ( isNumber )
import           Data.Foldable                  ( foldl' )
import qualified Data.Text                     as T

sort :: T.Text -> ([T.Text], [T.Text])
sort input =
  foldl'
      (\acc cur -> if T.all isNumber cur
        then (fst acc, snd acc ++ [cur])
        else (fst acc ++ [cur], snd acc)
      )
      ([], [])
    $ T.splitOn " " input

someFunc :: IO ()
someFunc = getLine >>= print . sort . T.pack >> someFunc
