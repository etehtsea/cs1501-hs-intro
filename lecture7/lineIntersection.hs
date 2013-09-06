import Data.Maybe (fromJust)
import Graphics.Gloss.Data.Point
import Graphics.Gloss.Geometry.Line

intersection = fromJust $ intersectLineLine (-5, -3.85) (5, 5) (-2, 2) (2, 1.8)
