type BinaryTree:
  Null
  Leaf { val }
  Node { ~lft, ~rgt }

type Option:
  None 
  Some { value }  

def bst_max(tree):
  match tree:
    case BinaryTree/Null:
      return Option/None
    case BinaryTree/Leaf:
      return Option/Some(tree.val)
    case BinaryTree/Node:
      if tree.rgt == BinaryTree/Null:
        return bst_max(tree.lft)
      else:
        return bst_max(tree.rgt)
