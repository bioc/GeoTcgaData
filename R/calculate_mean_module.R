#' Find the mean value of the gene in each module
#'
#' @param geneExpress a data.frame of gene expression data. 
#' Each column is a sample, and each row is a gene. 
#' @param module a data.frame of two column. The first column is module name, 
#' the second column are genes in this module.
#'
#' @return a data.frame, means the mean of gene expression value in
#' the same module
#' @export
#'
#' @examples
#' data(geneExpress)
#' data(module)
#' result <- cal_mean_module(geneExpress, module)
cal_mean_module <- function(geneExpress, module) {
    genes <- rownames(geneExpress)
    output_module <- matrix(0, nrow(module), 2)
    rownames(output_module) <- module[, 1]
    for (i in seq_len(nrow(module))) {
        modulen <- unlist(strsplit(module[i, 2], ","))
        modulen <- intersect(modulen, genes)
        modulenDf <- geneExpress[modulen, ]
        output_module[i, ] <- colMeans(modulenDf)
    }
    as.data.frame(output_module)
}
