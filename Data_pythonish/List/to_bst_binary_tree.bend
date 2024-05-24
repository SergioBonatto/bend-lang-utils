type BinaryTree:
  Null
  Leaf { val }
  Node { ~lft, ~rgt }

type Option:
  None 
  Some { value }  

def default(v, default):
  match v:
    case Option/None:
      return default
    case Option/Some:
      return v.value
      
def bst_insert(elem, tree):
  match tree:
    case BinaryTree/Null:
      return BinaryTree/Leaf(elem)
    case BinaryTree/Leaf:
      switch (elem < tree.val):
        case 0:
          return BinaryTree/Node(tree, BinaryTree/Leaf(elem))
        case _:  
          return BinaryTree/Node(BinaryTree/Leaf(elem), tree)
    case BinaryTree/Node:
      switch elem < default(bst_min(tree.lft), elem):
        case 0: 
          return BinaryTree/Node(tree.lft, bst_insert(elem, tree.rgt))
        case _:  
          return BinaryTree/Node(bst_insert(elem, tree.lft), tree.rgt)

def bst_min(tree):
  match tree:
    case BinaryTree/Null:
      return Option/None
    case BinaryTree/Leaf:
      return Option/Some(tree.val)
    case BinaryTree/Node:
      if tree.lft == BinaryTree/Null:
        return bst_min(tree.rgt)
      else:
        return bst_min(tree.lft)


def to_bst_binary_tree(lst):
  fold lst:
    case List/Nil:
      return BinaryTree/Null
    case List/Cons:
      return bst_insert(lst.head, lst.tail)