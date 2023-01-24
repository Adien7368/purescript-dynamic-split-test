module Flows.Flow1 where

import Prelude

import Effect.Aff (Aff)
import Effect.Class (liftEffect)
import Effect.Console (log)

flow :: Aff String
flow = do
  liftEffect $ log "Flow 1"
  pure $ "Flow 1"