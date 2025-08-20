# matrices and arrays are special cases of atomic vectors
# all contain only homogeneous element data type

die <- c(1,2,3,4,5,6)
is.vector(die)
typeof(die)
int_die <- c(1L,2L,3L,4L,5L,6L)
five <- 5
typeof(int_die)
is.vector(5)
rm(five)
die
ddie <- c(1.1,2,3,4,5,6)
ddie
rm(ddie)
sqrt(2)^2 - 2
hh <- "hello"
hh
is.vector((hh))
hh[1]
die[2]
my_comp <- c(1 + 1i, 2 - 1i, 3 + 1i)
comp <-    c(1 + 1i, 1 - 2i, 1 + 3i)
comp[2] + comp[3]
comp[1] * comp[2]

names(die) <- c("one", "two", "three", "four", "five", "six")
die
attributes(die)
dim(die) <- c(2,3)
print(die)
int_die
names(int_die) <- c("one", "two", "three", "four", "five", "six")
dim(int_die) <- c(2,3)

c(11:14, 21:24, 31:34)
ar <- array(c(11:14, 21:24, 31:34), dim = c(2, 2, 3))
print(ar)

rm(ar)
card_matrix <- matrix(rep(0, 10), nrow = 5,ncol = 2)
card_matrix[,1] = c("Ace", "King", "Queen", "Jack", "Ten")
card_matrix[,2] = rep("Spades", 5)
card_matrix
class(card_matrix)

# time is represented by the number of seconds that have passed between the time and 12:00 AM January 1st 1970
# (in the Universal Time Coordinated (UTC) zone)
today <- Sys.Date()
print(today)
typeof(today)
now <- Sys.time()
print(now)
cat(today, now, Sys.Date())
cat(today)
glue::glue(now)
class(now)
now

# Factors are R’s way of storing categorical information, like ethnicity, gender or eye color.
gender <- factor(c("Female", "Male", "Non-binary", "Other", "CNTD"))
typeof(gender)
class(gender)
# see under the hood
unclass(gender)

fdie <- factor(die)
# get the data back to not factor
fdie
dfdie <- as.character(fdie)
dfdie
idfdie <- as.integer(dfdie)
idfdie

#####################
list1 <- list(100:130, "R", list(TRUE, FALSE))
list1

card_list <- list(c("Ace", "King"), c("Hearts", "Hearts"), c(14,13))
card_list
