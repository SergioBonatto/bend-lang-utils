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
  
def got_bits(key, tree):
  match key:
    case Bits/E:
      match tree:
        case BinaryTree/Null:
          return (BinaryTree/Null, Option/None)
        case BinaryTree/Leaf:
          return (tree, Option/Some(tree.val))
        case BinaryTree/Node:
          return (tree, Option/None)
    case Bits/O:
      match tree:
        case BinaryTree/Null:
          return (BinaryTree/Null, Option/None)
        case BinaryTree/Leaf:
          return (tree, Option/None)
        case BinaryTree/Node:
          (tree2, elem) = got_bits(key.pred, tree.lft)
          return (BinaryTree/Node(tree2, tree.rgt), elem)
    case Bits/I:
      match tree:
        case BinaryTree/Null:
          return (BinaryTree/Null, Option/None)
        case BinaryTree/Leaf:
          return (tree, Option/None)
        case BinaryTree/Node:
          (tree2, elem) = got_bits(key.pred, tree.rgt)
          return (BinaryTree/Node(tree.lft, tree2), elem)