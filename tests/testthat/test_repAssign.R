test_that("can parse example rep1", {
    aa <- c("MARCH1 /// MMA", "MARC1", "MARCH2 /// MARCH3", 
        "MARCH3 /// MARCH4", "MARCH1")
    bb <- c("2.969058399", "4.722410064", "8.165514853",
        "8.24243893", "8.60815086")
    cc <- c("3.969058399", "5.722410064", "7.165514853", 
        "6.24243893", "7.60815086")
    input_file <- data.frame(aa = aa, bb = bb, cc = cc)
    
    repAssign_result <- repAssign(input_file, " /// ")
    expect_true(!(" /// " %in% repAssign_result[, 1]))
})
