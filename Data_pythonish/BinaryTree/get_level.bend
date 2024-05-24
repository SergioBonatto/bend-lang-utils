type BinaryTree:
  Null
  Leaf { val }
  Node { ~lft, ~rgt }

type Bits:
  E  
  O { ~pred}
  I { ~pred}

type Option:
  None 
  Some { value }  
  
def get_level_bits(key, tree):
  match key:
    case Bits/E:
      match tree:
        case BinaryTree/Null:
          return Option/None
        case BinaryTree/Leaf:
          return Option/Some(tree.val)
        case BinaryTree/Node:
          return Option/None
    case Bits/O:
      match tree:
        case BinaryTree/Null:
          return Option/None
        case BinaryTree/Leaf:
          return Option/None
        case BinaryTree/Node:
          return get_level(key.pred, tree.lft)
    case Bits/I:
      match tree:
        case BinaryTree/Null:
          return Option/None
        case BinaryTree/Leaf:
          return Option/None
        case BinaryTree/Node:
          return get_level(key.pred, tree.rgt)