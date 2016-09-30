#!/usr/bin/env stack
-- stack --resolver lts-7.1 --install-ghc runghc --package monad-unlift-0.2.0

-- Running
--   ./MonadBaseUnlift-stack-overflow.hs
-- crashes with
--    *** Exception: stack overflow
-- with GHC 8.0.1.

{-# LANGUAGE FlexibleContexts #-}

import Control.Monad.Trans.Unlift

f :: (MonadBaseUnlift m IO) => m a
f = do

  _ <- askUnliftBase

  return ()
