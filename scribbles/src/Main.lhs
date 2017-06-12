\begin{code}
module Main where

import qualified Graphics.UI.GLUT as GLUT
import qualified Bindings as BND
import qualified Display as DSP


main :: IO()
main = do
    (_progName, _args) <- GLUT.getArgsAndInitialize
    _window <- GLUT.createWindow "Hello World"
    GLUT.displayCallback GLUT.$= DSP.display
    GLUT.reshapeCallback GLUT.$= Just BND.reshape
    GLUT.keyboardMouseCallback GLUT.$= Just BND.keyboardMouse
    GLUT.mainLoop

\end{code}
