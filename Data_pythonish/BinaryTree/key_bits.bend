type BinaryTree:
  Null
  Leaf { val }
  Node { ~lft, ~rgt }

type Bits:
  E  
  O { ~pred}
  I { ~pred}

def key_bits(tree):
  return key_bits_aux(tree, Bits/E, List/Nil)

def key_bits_aux(tree, key, lst):
  match tree:
    case BinaryTree/Null:
      return lst
    case BinaryTree/Leaf:
      return List/Cons(key, lst)
    case BinaryTree/Node:
      return key_bits_aux(tree.lft, (Bits/O(key)), key_bits_aux(tree.rgt, (Bits/I(key)), lst))