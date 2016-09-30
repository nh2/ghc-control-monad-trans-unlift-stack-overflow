#!/usr/bin/env stack
-- stack --resolver lts-7.1 --install-ghc runghc --package monad-unlift-0.2.0

{-# LANGUAGE FlexibleContexts #-}

import Control.Monad.Trans.Unlift

f :: (MonadBaseUnlift m IO) => m a
f = do

  _ <- askUnliftBase

  return ()
