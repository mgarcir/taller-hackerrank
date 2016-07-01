solve :: Double -> Double
solve n = sum $ map (\x -> calculatePoliElement n x) [0.0..10.0]

calculatePoliElement :: Double -> Double -> Double
calculatePoliElement value position = (value**position) / (factorial position)

factorial n = foldl (*) 1 [1..n]
