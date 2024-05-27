type BinaryTree:
  Null
  Leaf { val }
  Node { ~lft, ~rgt }

type Bits:
  E  
  O { ~pred}
  I { ~pred}

def apply_bits(key, func, init, tree):
  match key:
    case Bits/E:
      match tree:
        case BinaryTree/Null:
          return BinaryTree/Leaf(func(init))
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
          return BinaryTree/Node(tree_app_bits(key.pred, func, init, tree.lft), tree.rgt)
    case Bits/I:
      match tree:
        case BinaryTree/Null:
          return BinaryTree/Null
        case BinaryTree/Leaf:
          return BinaryTree/Leaf(tree.val)
        case BinaryTree/Node:
          return BinaryTree/Node(tree.lft, tree_app_bits(key.pred, func, init, tree.rgt))