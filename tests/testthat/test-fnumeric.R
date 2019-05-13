context("Converting factors to numbers asis")

test_that("fnumeric() converts factors to numbers asis", {
    x <- as.factor(c("2","4","6"))
    a <- fnumeric(x)
    b <- as.numeric(as.character(x))


    expect_identical(fnumeric(x), b)
})
