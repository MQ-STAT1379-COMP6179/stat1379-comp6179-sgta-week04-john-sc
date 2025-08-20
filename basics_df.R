# data frames are a 2-D version of lists
# they group column vectors into a 2-D table

df <- data.frame(face = c("ace", "two", "six"),  
                suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3))
df
typeof(df)
class(df)
str(df)
df2 <- data.fr

card_values <- rep(2:14,4)
card_faces <- c(as.character(card_values[1:9]), "Jack","Queen","King","Ace")
card_suits <- c(rep("Heart", 13), rep("Spade", 13), rep("Club", 13), rep("Diamond",13))

cards_df = data.frame(suit = card_suits
                      ,face = card_faces
                      ,value = card_values
)
print(cards_df)
cards_df[1,]
cards_df[,2]
cards_df[,"suit"]
cards_df$suit
