module MyData
       (MetricUnit(..),
        ImperialUnit(..),
        Measurement(..),
        convert)
where

data MetricUnit = Meter | Liter | KiloGram deriving (Show, Eq)
data ImperialUnit = Yard | Gallon | Pound deriving (Show)
data Measurement = MetricMeasurement Double MetricUnit
                 | ImperialMeasurement Double ImperialUnit
                 deriving (Show)

symbol :: MetricUnit -> String
symbol Meter = "m"
symbol Liter = "L"
symbol KiloGram = "kg"

symbol' :: MetricUnit -> String
symbol' t
  | t == Meter = "m"
  | t == Liter = "L"
  | t == KiloGram = "kg"

convert :: Measurement -> Measurement
convert (MetricMeasurement x u) =
  case u of
    Meter -> ImperialMeasurement (x * 1.09361) Yard
    Liter -> ImperialMeasurement (x * 0.264172) Gallon
    KiloGram -> ImperialMeasurement (x * 2.204622) Pound
convert (ImperialMeasurement x u) =
  case u of
    Yard -> MetricMeasurement (x / 1.09361) Meter
    Gallon -> MetricMeasurement (x / 0.264172) Liter
    Pound -> MetricMeasurement (x / 2.20462) KiloGram
