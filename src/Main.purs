module Main where

import Prelude

import Effect (Effect)
import Effect.Class.Console (log)
import Repro (example)
import Simple.JSON (read_)

main :: Effect Unit
main = do
  let
    result2 :: _ {float :: Int } 
    result2 = read_ example
  log "Jusqu'ici, tout va bien"
  let
    result :: _ { int :: Int } 
    result = read_ example
  log "I'm invisible"
  pure unit
