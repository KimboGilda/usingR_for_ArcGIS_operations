# Functions to facilitate the filtering
# and cleaning of existing datasets

# helper function for selecting only the columns we want at the end
cleaning <- function(datensatz) {
  vec_keep <- c("GMDNR","GMDNAME", "KTNR","Shape_Length","Shape_Area")
  datensatz <- datensatz %>%
    dplyr::select(.,vec_keep) %>%
    dplyr::rename(.,c("GemeindeNo"="GMDNR", "Name"="GMDNAME", "KantonNo"="KTNR","Shape_Leng"="Shape_Length"))
  # col_order <- c("GemeindeNo", "Name", "KantonNo",
  #                "KantonKurz", "Shape_Leng", "Shape_Area")
  # datensatz <- datensatz[, col_order]
  return(datensatz)
}

# helper function for reordering the columns as we wish
reorder <- function(datensatz) {
  col_order <- c("GemeindeNo", "Name", "KantonNo",
                 "KantonKurz", "Shape_Leng", "Shape_Area")
  datensatz <- datensatz[, col_order]
  
  return(datensatz)
}


## milder version of reorder
# helper function for reordering the columns as we wish
reorder2 <- function(datensatz) {
  col_order <- c("GemeindeNo", "Name", "KantonNo",
                 "KantonKurz")
  datensatz <- datensatz[, col_order]
  
  return(datensatz)
}
