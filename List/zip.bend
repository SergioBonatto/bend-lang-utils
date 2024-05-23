def zip(xs, ys):
  match xs:
    case List/Nil:
      return List/Nil
    case List/Cons:
      match ys:
        case List/Nil:
          return List/Nil
        case List/Cons:
          return List/Cons((xs.head, ys.head), zip(xs.tail, ys.tail))

