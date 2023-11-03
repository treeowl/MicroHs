-- Copyright 2023 Lennart Augustsson
-- See LICENSE file for full license.
module Data.Num(module Data.Num) where
import Primitives
--Yimport PrimFromInteger
import Data.Integer_Type

infixl 6 +,-
infixl 7 *

class Num a where
  (+) :: a -> a -> a
  (-) :: a -> a -> a
  (*) :: a -> a -> a
  negate :: a -> a
  abs :: a -> a
  signum :: a -> a
  fromInteger :: Integer -> a
--Y{-
  negate x = 0 - x
--Y-}

subtract :: forall a . Num a => a -> a -> a
subtract x y = y - x
