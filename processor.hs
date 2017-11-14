import GHC
import DynFlags
import Outputable (Outputable, showPpr)
import qualified GHC.Paths as Paths

import Data.Functor

runGhc' :: Ghc a -> IO a
runGhc' ga = do
    runGhc (Just Paths.libdir) $ do
        dflags <- getDynFlags
        let dflags2 = dflags { ghcLink   = NoLink
                             , hscTarget = HscNothing
                             }
        setSessionDynFlags dflags2
        ga

compileExample :: Ghc CoreModule
compileExample = compileToCoreModule "sample.hs"

showPpr' :: (Functor m, Outputable a, HasDynFlags m) => a -> m String
showPpr' a = (flip showPpr) a <$> getDynFlags

main = runGhc' (compileExample >>= showPpr') >>= putStrLn
