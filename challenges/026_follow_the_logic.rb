#!/usr/bin/ruby

# from source code

# <script language="javascript" type="text/javascript">
#   function ff(answer) {
#     var x = 2;
#     var y = 5;
#     var z = 3;
#     var a = new Array(6, 5, 4, 9, 3, 7);
#     var v = y * a[y] + z * a[z] - y * x * z + a[y] * a[x] * a[3];
#     a.reverse;
#     v = v + a[z] + a[y] + 11 * a[1] + a[0] - 1;
#     if (answer == v) {
#       return true;
#     }
#     else {
#       alert("not it!");
#     return false;
#     }
#   }
# </script>

x,y,z,a = 2,5,3,[6,5,4,9,3,7]

v = (y * a[y] + z * a[z] - y * x * z + a[y] * a[x] * a[3]) + (a[z] + a[y] + 11 * a[1] + a[0] - 1)

print v
