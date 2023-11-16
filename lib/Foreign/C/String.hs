module Foreign.C.String(
  CChar, CString,
  newCAString, withCAString,
  peekCAString,
  ) where
import Primitives
import Data.Char_Type
import Foreign.Marshal.Alloc

type CChar = Char
type CString = Ptr CChar

newCAString :: String -> IO CString
newCAString = primNewCAString

withCAString :: forall a . String -> (CString -> IO a) -> IO a
withCAString s io =
  newCAString s `primBind` \ cs ->
  io cs `primBind` \ a ->
  free cs `primThen`
  primReturn a

peekCAString :: CString -> IO String
peekCAString = primPeekCAString