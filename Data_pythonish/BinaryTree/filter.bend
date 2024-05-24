type BinaryTree:
  Null
  Leaf { val }
  Node { ~lft, ~rgt }
  
def filter(cond, tree):
  match tree:
    case BinaryTree/Null:
      return BinaryTree/Null
    case BinaryTree/Leaf:
      if cond(tree.val):
        return BinaryTree/Leaf(tree.val)
      else:
        return BinaryTree/Null
    case BinaryTree/Node:
      return BinaryTree/Node(filter(cond, tree.lft), filter(cond, tree.rgt))