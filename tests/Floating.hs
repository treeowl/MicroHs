module Floating(main) where
import Prelude

main :: IO ()
main = do
  print $ logBase 10 (1000::Double)
  print $ cos (pi::Double)
  print $ sqrt (4::Double)
