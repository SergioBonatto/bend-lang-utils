type BinaryTree:
  Null
  Leaf { val }
  Node { ~lft, ~rgt }

type Bits:
  E  
  O { ~pred}
  I { ~pred}

type Bool:
  False 
  True
  
def has_bits(key, tree):
  match key:
    case Bits/E:
      match tree:
        case BinaryTree/Null:
          return Bool/False
        case BinaryTree/Leaf:
          return Bool/True
        case BinaryTree/Node:
          return Bool/True
    case Bits/O:
      match tree:
        case BinaryTree/Null:
          return Bool/False
        case BinaryTree/Leaf:
          return Bool/False
        case BinaryTree/Node:
          return has_bits(key.pred, tree.lft)
    case Bits/I:
      match tree:
        case BinaryTree/Null:
          return Bool/False
        case BinaryTree/Leaf:
          return Bool/False
        case BinaryTree/Node:
          return has_bits(key.pred, tree.rgt)
