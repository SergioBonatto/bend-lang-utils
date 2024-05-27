type BinaryTree:
  Null
  Leaf { val }
  Node { ~lft, ~rgt }
  
def to_list(tree):
  return to_list_go(tree, [])

def to_list_go(tree, lst):
  match tree:
    case BinaryTree/Null:
      return lst
    case BinaryTree/Leaf:
      return List/Cons(tree.val, lst)
    case BinaryTree/Node:
      return to_list_go(tree.lft, to_list_go(tree.rgt, lst))