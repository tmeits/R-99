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

# 1.04 (*) Find the number of elements of a list.
r99.1.04 <- function(lst){
  length(lst)
}
r99.1.04(test)

# 1.05 (*) Reverse a list.
r99.1.05 <- function(lst){
  rev(lst)
}
r99.1.05(test)

# 1.06 (*) Find out whether a list is a palindrome. 
# A palindrome can be read forward or backward; e.g. [x,a,m,a,x].

test<-list('x', 'a', 'm', 'a', 'x')
test.bad<-list('x', 'a', 'm', 'a', 'z')
r99.1.06 <- function(lst){
  #r<-TRUE
  rlst<-rev(lst)
  for(i in 1:length(lst)) {
    ch1<-as.character(lst[i])
    ch2<-as.character(rlst[i])
    if(ch1!=ch2) {
      r<-FALSE
      #print('Bad')
      #break
      return(FALSE)
    }
  }
  #return(r)
  TRUE
}

r99.1.06(test)
r99.1.06(test.bad)










