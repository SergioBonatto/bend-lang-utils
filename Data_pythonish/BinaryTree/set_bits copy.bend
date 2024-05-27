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

def set_bits(key, value, btree):
  match key:
    case Bits/E:
      match btree:
        case BinaryTree/Empty:
          return BinaryTree/Both { val: Option/Some(value), lft: BinaryTree/Empty, rgt: BinaryTree/Empty }
        case BinaryTree/Both:
          return map((lambda x: Option/Some(x)), (BinaryTree/Both {val: value, lft: btree.lft, rgt: btree.rgt}))
    case Bits/O:
      match btree:
        case BinaryTree/Empty:
          return BinaryTree/Both { val: Option/None, lft: set_bits(key.pred, value, BinaryTree/Empty), rgt: BinaryTree/Empty }
        case BinaryTree/Both:
          return set_bits_lft(btree.val, set_bits(key.pred, value, lft), rgt)
    case Bits/I:
      match btree:
        case BinaryTree/Empty:
          return BinaryTree/Both { val: Option/None, lft: BinaryTree/Empty, rgt:  set_bits(key.pred, value, BinaryTree/Empty)  }
        case BinaryTree/Both:
          return set_bits_rgt(btree.val, lft, set_bits(key.pred, value, rgt))


def set_bits_lft(value, lft, rgt):
  return BinaryTree/Both { val: Option/Some(value), lft: lft, rgt:  map((lambda x: Option/Some(x)), rgt)}


def set_bits_rgt(value, lft, rgt):
  return BinaryTree/Both { val: Option/Some(value), lft:map((lambda x: Option/Some(x)), lft), rgt: rgt}

BinaryTree.set (Bits/e) val (BinaryTree/Empty) = (BinaryTree/Root (Option/Some val) (BinaryTree/Empty) (BinaryTree/Empty))
BinaryTree.set (Bits/o pred) val (BinaryTree/Empty) = (BinaryTree/Root (Option/None) (BinaryTree.set pred val (BinaryTree/Empty)) (BinaryTree/Empty))
BinaryTree.set (Bits/i pred) val (BinaryTree/Empty) = (BinaryTree/Root (Option/None) (BinaryTree/Empty) (BinaryTree.set pred val (BinaryTree/Empty)))
BinaryTree.set (Bits/e) val (BinaryTree/Root value lft rgt) = (BinaryTree.map (@x ((Option/Some x))) (BinaryTree/Root val lft rgt))
BinaryTree.set (Bits/o pred) val (BinaryTree/Root value lft rgt) = (BinaryTree.set.lft value (BinaryTree.set pred val lft) rgt)
BinaryTree.set (Bits/i pred) val (BinaryTree/Root value lft rgt) = (BinaryTree.set.rgt value lft (BinaryTree.set pred val rgt))


BinaryTree.set.lft val lft rgt = (BinaryTree/Root (Option/Some val) lft (BinaryTree.map (@x ((Option/Some x))) rgt))


BinaryTree.set.rgt val lft rgt = (BinaryTree/Root (Option/Some val) (BinaryTree.map (@x ((Option/Some x))) lft) rgt)



# Map/get map key =
#   match map {
#     Map/Leaf: (*, map)
#     Map/Node:
#       switch _ = (== 0 key) {
#         0: switch _ = (% key 2) {
#           0:
#             let (got, rest) = (Map/get map.left (/ key 2))
#             (got, (Map/Node map.value rest map.right))
#           _:
#             let (got, rest) = (Map/get map.right (/ key 2))
#             (got, (Map/Node map.value map.left rest))
#         }
#         _: (map.value, map)
#       }
#   }

# Map/set map key value =
#   match map {
#     Map/Node:
#       switch _ = (== 0 key) {
#         0: switch _ = (% key 2) {
#           0: (Map/Node map.value (Map/set map.left (/ key 2) value) map.right)
#           _: (Map/Node map.value map.left (Map/set map.right (/ key 2) value))
#         }
#         _: (Map/Node value map.left map.right)
#       }
#     Map/Leaf:
#       switch _ = (== 0 key) {
#         0: switch _ = (% key 2) {
#           0: (Map/Node * (Map/set Map/Leaf (/ key 2) value) Map/Leaf)
#           _: (Map/Node * Map/Leaf (Map/set Map/Leaf (/ key 2) value))
#         }
#         _: (Map/Node value Map/Leaf Map/Leaf)
#       }
#   }