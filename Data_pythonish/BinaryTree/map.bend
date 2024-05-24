type BinaryTree:
  Null
  Leaf { val }
  Node { ~lft, ~rgt }
  
def map(func, tree):
  match tree:
    case BinaryTree/Null:
      return BinaryTree/Null
    case BinaryTree/Leaf:
      return BinaryTree/Leaf(func(tree.val))
    case BinaryTree/Node:
      return BinaryTree/Node(map(func, tree.lft), map(func, tree.rgt))