

to.plain <- function(s) {
    # 1 character substitutions
    old1 <- "çğşıüöÇĞŞİÖÜ"
    new1 <- "cgsiuocgsiou"
    s1 <- chartr(old1, new1, s)
    # 2 character substitutions
    old2 <- c("œ", "ß", "æ", "ø")
    new2 <- c("oe", "ss", "ae", "oe")
    s2 <- s1
    for(i in seq_along(old2)) s2 <- gsub(old2[i], new2[i], s2, fixed = TRUE)
    s2
}

names(merkez_sonuc) <- make.names(to.plain(tolower(names(merkez_sonuc))))


ozet <- function(x) {
    ortalama <- mean(x)
    ortanca <- median(x)
    ssapma <- sd(x)
    min  <- min(x)
    max <- max(x)
    cat(names(x), "ortalama+ssapma:",ortalama,"+",ssapma)
}

ozet(merkez_sonuc$X1.kasetteki.parca.sayisi)






