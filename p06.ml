let is_palindrome list = list = List.rev list;;

assert (is_palindrome [1; 2; 3; 2; 1]);;
assert (not (is_palindrome [1; 2; 3]));;
