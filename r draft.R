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

if (df$review_scores_rating < 87){review_scores_rating <- "bad"
}else 
  {
    if (87 <= df$review_scores_rating & df$review_scores_rating < 95){
  df$review_scores_rating <- "fair"
}else 
  {if (95 <= df$review_scores_rating & df$review_scores_rating < 98){
  df$review_scores_rating <- "good"
}else {df$review_scores_rating <- "excellent"}
}}

table(df$review_scores_rating)