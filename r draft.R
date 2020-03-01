df$review_scores_rating["0" <= df$review_scores_ratinge <= "87"] <- "bad"
df$review_scores_rating[ "87" < df$review_scores_rating <= "95"] <- "fair"
df$review_scores_rating[ "95" < df$review_scores_ratinge <= "98"]  <- "good"
df$review_scores_rating[ "98" < df$review_scores_ratinge <= "100"]  <- "excellent"

sample_n <- nrow(rawdata)
df <- rawdata
glimpse(df)

df$review_scores_rating[is.na(df$review_scores_rating)] <- 0
table(df$review_scores_rating)
summary(df$review_scores_rating)


if (df$review_scores_rating < 87) {df$review_rating <- "bad"
} else 
   {
    if (df$review_scores_rating >= 87 & df$review_scores_rating < 95) {
  df$review_rating <- "fair"
} else 
   {if (df$review_scores_rating >= 95 & df$review_scores_rating < 98) {
  df$review_rating <- "good"
} else {df$review_rating <- "excellent"}
}}

table(df$review_scores_rating)

i = 0
for (i in 1:length(df$review_scores_rating)) {
  if (df$review_scores_rating[i] < 87) {df$review_rating[i] <- "bad"
  } else 
  {
    if (df$review_scores_rating[i] >= 87 & df$review_scores_rating[i] < 95) {
      df$review_rating[i] <- "fair"
    } else 
    {if (df$review_scores_rating[i] >= 95 & df$review_scores_rating[i] < 98) {
      df$review_rating[i] <- "good"
    } else {df$review_rating[i] <- "excellent"}
    }}
  i = i + 1
  
}


