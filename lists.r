# Ninety-Nine Problems In R. Sequences.
# The first element in the list is number 1.

# 1.01 (*) Find the last but one box of a list.
r99.1.01 <- function(lst){
  stopifnot(is.list(lst) & (length(lst) > 0))
  lst[length(lst)]
}
# Test
test<-list("one",2,"3",c(4,5))
r99.1.01(list())
r99.1.01(c(1, 2))
r99.1.01(test)

# 1.02 (*) Find the last but one box of a list.
r99.1.02 <- function(lst){
  stopifnot(is.list(lst) & (length(lst) > 0))
  if(length(lst) == 1) stop('1 - Bad length')
  lst[length(lst)-1]
}
# Test
r99.1.02(test)
r99.1.02(list(1))

# 1.03 (*) Find the K'th element of a collections / sequences / lists.
r99.1.03 <- function(lst, k){
  lst[k]
}
r99.1.03(test, 1)

# 1.03 (*) Find the K'th element of a collections / sequences / lists.
# Recursive R solution
r99.1.03.r <- function(lst, k){
  if(k == 1) lst[1]
  else{
    r99.1.03.r(lst[2: length(lst)], k-1)
  }
}
r99.1.03.r(test, 3)








