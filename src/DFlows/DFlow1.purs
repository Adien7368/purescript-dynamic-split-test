module DFlows.DFlow1 where


import Effect.Aff (Aff)
import Effect.Aff.Compat (EffectFnAff, fromEffectFnAff)


foreign import dflow :: EffectFnAff String

flow :: Aff String
flow = fromEffectFnAff dflow