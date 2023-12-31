test_that("can parse example countToTpm_matrix", {
    data(gene_cov)
    lung_squ_count2 <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), ncol = 3)
    rownames(lung_squ_count2) <- c("DISC1", "TCOF1", "SPPL3")
    colnames(lung_squ_count2) <- c("sample1", "sample2", "sample3")
    result <- countToTpm(lung_squ_count2,
        keyType = "SYMBOL",
        gene_cov = gene_cov
    )
    expect_equal(dim(lung_squ_count2), dim(result))
})
