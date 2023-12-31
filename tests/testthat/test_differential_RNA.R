test_that("can parse example differential_RNA", {
    skip_on_cran()
    df <- matrix(rnbinom(400, mu = 4, size = 10), 25, 16)
    df <- as.data.frame(df)
    rownames(df) <- paste0("gene", 1:25)
    colnames(df) <- paste0("sample", 1:16)
    group <- sample(c("group1", "group2"), 16, replace = TRUE)
    result <- differential_RNA(counts = df, group = group, 
        filte = FALSE, method = "Wilcoxon")
    expect_true( "P.Value"    %in% colnames(result))
})
