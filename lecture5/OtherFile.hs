import MyData
import BinaryTree

reportMeasurement :: Measurement -> String
reportMeasurement (MyData.MetricMeasurement x u) = (show x) ++ " " ++ (show u)
reportMeasurement m = reportMeasurement (convert m)

tree = (Node 5 (Node 6 EmptyTree EmptyTree) (Node 12 EmptyTree EmptyTree))
treeSum = add tree
