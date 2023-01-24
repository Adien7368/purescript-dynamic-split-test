module Flows.Flow2 where

import Prelude

import Effect.Aff (Aff)
import Effect.Class (liftEffect)
import Effect.Console (log)
import Effect.Random (randomInt)

flow :: Aff Int
flow = do
  int <- liftEffect $ randomInt 1 100000 
  liftEffect $ log ("Flow 2" <> show int)
  pure int