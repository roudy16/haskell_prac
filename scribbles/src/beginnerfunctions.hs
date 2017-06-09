import Graphics.UI.GLUT

myPoints :: Float -> [(GLfloat, GLfloat, GLfloat)]
myPoints rad = [ (rad*(sin ( 2*pi*k/12)),rad*(cos (2*pi*k/12)), 0) | k <- [1..12] ]

main :: IO()
main = do
    (_progName, _args) <- getArgsAndInitialize
    _window <- createWindow "Hello World"
    displayCallback $= display
    reshapeCallback $= Just reshape
    mainLoop

reshape :: ReshapeCallback
reshape size = do
    viewport $= (Position 0 0, size)
    postRedisplay Nothing

display :: DisplayCallback
display = do
    let color3f r g b = color $ Color3 r g (b :: GLfloat)
        vertex3f x y z = vertex $ Vertex3 x y (z :: GLfloat)
    clear [ColorBuffer]
    --renderPrimitive Triangles $
        --mapM_ (\(x, y, z) -> vertex $ Vertex3 x y z) (myPoints 0.75)

    renderPrimitive Quads $ do
        color3f 1 0 0
        vertex3f 0 0 0
        vertex3f 0 0.2 0
        vertex3f 0.2 0.2 0
        vertex3f 0.2 0 0

        color3f 0 1 0
        vertex3f 0 0 0
        vertex3f 0 (-0.2) 0
        vertex3f 0.2 (-0.2) 0
        vertex3f 0.2 0 0

        color3f 0 0 1
        vertex3f 0 0 0
        vertex3f 0 (-0.2) 0
        vertex3f (-0.2) (-0.2) 0
        vertex3f (-0.2) 0 0

        color3f 0.5 0.5 1
        vertex3f 0 0 0
        vertex3f 0 0.2 0
        vertex3f (-0.2) 0.2 0
        vertex3f (-0.2) 0 0
    flush


addFloat :: Float -> Float
addFloat n = n + 10.0

