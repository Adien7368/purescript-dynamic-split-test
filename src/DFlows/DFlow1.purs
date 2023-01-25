module DFlows.DFlow1 where

import Prelude
import Effect.Aff (Aff)
import Effect.Aff.Compat (EffectFnAff, fromEffectFnAff)


foreign import dflow :: EffectFnAff (Aff String)

flow :: Aff String
flow = do
  aff <- fromEffectFnAff dflow
  aff
