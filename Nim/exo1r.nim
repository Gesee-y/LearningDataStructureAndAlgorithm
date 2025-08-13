proc is_multiple(n:int, m:int): bool = (n mod m) == 0
proc is_even(n:int): bool =
  var v = n
  while v != 0:
    if v == 1 :
      return false

    v -= 2

  return true
proc minmax(A: seq[int]): (int, int) =
  var mn = A[0]
  var mx = A[0]

  for elt in A.items:
    if elt < mn:
      mn = elt
    if elt > mx:
      mx = elt

  return (mn, mx)
proc sum_square(n:int): int = (n*(n-1)*(2*n-1)/6).int

echo is_multiple(10, 5)
echo is_even(3)
echo minmax(@[1,7,5,6,4,9,12,2,8,8])
echo sum_square(5)
