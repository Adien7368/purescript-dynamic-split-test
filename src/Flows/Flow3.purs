module Flows.Flow3 where

import CommonUtils.Utils (randomString)
import Prelude

import Effect.Aff (Aff)
import Effect.Class (liftEffect)
import Effect.Console (log)

flow :: Aff String
flow = do
  str <- randomString
  liftEffect $ log ("Flow 3" <> str)
  pure $ "Flow 3"