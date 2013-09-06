module BinaryTree
       (Tree(..),
        add)
where

data Tree = EmptyTree | Node { value::Int, leftNode::Tree, rightNode::Tree }

add :: Tree -> Int
add EmptyTree = 0
add (Node x left right) = x + (add left) + (add right)
