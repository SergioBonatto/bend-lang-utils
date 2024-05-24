# Get the elements of a pair and apply them to a lambda
def get(a, f):
  (x, y) = a
  return f(x, y)
