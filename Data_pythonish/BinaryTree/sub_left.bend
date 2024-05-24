type BinaryTree:
  Null
  Leaf { val }
  Node { ~lft, ~rgt }

def sub_left(tree):
  match tree:
    case BinaryTree/Null:
      return BinaryTree/Null
    case BinaryTree/Leaf:
      return BinaryTree/Null
    case BinaryTree/Node:
      return tree.lft