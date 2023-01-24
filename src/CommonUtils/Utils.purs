module CommonUtils.Utils where

import Prelude

import Effect.Aff (Aff)
import Effect.Class (liftEffect)
import Effect.Random (randomInt)


randomString :: Aff String
randomString = do
  int <- liftEffect (randomInt 1 100000)
  pure $ show int