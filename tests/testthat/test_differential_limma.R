test_that("can parse example Diff_limma", {
    df <- matrix(runif(200), 25, 8)
    df <- as.data.frame(df)
    rownames(df) <- paste0("gene", 1:25)
    colnames(df) <- paste0("sample", 1:8)
    group <- sample(c("group1", "group2"), 8, replace = TRUE)
    result <- differential_limma(df = df, group = group)
    expect_true( "P.Value"  %in% colnames(result))
})
