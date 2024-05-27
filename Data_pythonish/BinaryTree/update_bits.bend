type BinaryTree:
  Null
  Leaf { val }
  Node { ~lft, ~rgt }

type Bits:
  E  
  O { ~pred}
  I { ~pred}

def update_bits(key, func, tree):
  match key:
    case Bits/E:
      match tree:
        case BinaryTree/Null:
          return BinaryTree/Null
        case BinaryTree/Leaf:
          return BinaryTree/Leaf(func(tree.val))
        case BinaryTree/Node:
          return BinaryTree/Node(tree.lft, tree.rgt)
    case Bits/O:
      match tree:
        case BinaryTree/Null:
          return BinaryTree/Null
        case BinaryTree/Leaf:
          return BinaryTree/Leaf(tree.val)
        case BinaryTree/Node:
          return BinaryTree/Node(update_bits(key.pred, func, tree.lft), tree.rgt)
    case Bits/I:
      match tree:
        case BinaryTree/Null:
          return BinaryTree/Null
        case BinaryTree/Leaf:
          return BinaryTree/Leaf(tree.val)
        case BinaryTree/Node:
          return BinaryTree/Node(tree.lft, update_bits(key.pred, func, tree.rgt))