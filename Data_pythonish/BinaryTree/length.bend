type BinaryTree:
  Null
  Leaf { val }
  Node { ~lft, ~rgt }

def length(tree):
  match tree:
    case BinaryTree/Null:
      return 0
    case BinaryTree/Leaf:
      return 1
    case BinaryTree/Node:
      return length(tree.lft) + length(tree.rgt)