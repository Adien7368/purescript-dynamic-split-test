module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Effect.Aff (launchAff_) 
import Effect.Class (liftEffect)
-- import Flows.Flow1 as Flow1
import DFlows.DFlow1 as Flow1
import Flows.Flow2 as Flow2
import Flows.Flow3 as Flow3

main :: Effect Unit
main = launchAff_ $ do
  liftEffect $ log "Starting App"
  _ <- Flow1.flow
  _ <- Flow2.flow
  _ <- Flow3.flow
  liftEffect $ log "Ending App"
