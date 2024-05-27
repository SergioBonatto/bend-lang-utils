type BinaryTree:
  Null
  Leaf { val }
  Node { ~lft, ~rgt }

type Bits:
  E  
  O { ~pred}
  I { ~pred}

def del_bits(key, tree):
  match key:
    case Bits/E:
      match tree:
        case BinaryTree/Null:
          return BinaryTree/Null
        case BinaryTree/Leaf:
          return BinaryTree/Null
        case BinaryTree/Node:
          return BinaryTree/Null
    case Bits/O:
      match tree:
        case BinaryTree/Null:
          return BinaryTree/Null
        case BinaryTree/Leaf:
          return BinaryTree/Leaf(tree.val)
        case BinaryTree/Node:
          return BinaryTree/Node(del_bits(key.pred, tree.lft), tree.rgt)
    case Bits/I:
      match tree:
        case BinaryTree/Null:
          return BinaryTree/Null
        case BinaryTree/Leaf:
          return BinaryTree/Leaf(tree.val)
        case BinaryTree/Node:
          return BinaryTree/Node(tree.lft, del_bits(key.pred, tree.rgt))