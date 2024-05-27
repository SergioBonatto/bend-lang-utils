type BinaryTree:
  Null
  Leaf { val }
  Node { ~lft, ~rgt }
  
def to_binary_tree(lst):
  fold lst:
    case List/Nil:
      return BinaryTree/Null
    case List/Cons:
      return BinaryTree/Node(BinaryTree/Leaf(lst.head), lst.tail)