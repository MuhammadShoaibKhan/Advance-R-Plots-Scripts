library(grid)
library(ComplexHeatmap)
my_matrix <- as.matrix(try2[c(1:20)  ,c(4:100)]) # [all rows, columns 4-100]

class(my_matrix)

head(my_matrix)
# Default parameters
Heatmap(my_matrix)

# Flip rows and columns around
my_matrix <- t(my_matrix)  # "transpose"
Heatmap(my_matrix)

# Keep genome bins in order, not clustered
Heatmap(my_matrix, cluster_columns=FALSE)

fontsize <- 0.6

# Put cell labels on the left side
Heatmap(my_matrix, cluster_columns=FALSE,
        row_names_side = "left", 
        row_hclust_side = "left",
        row_names_gp=gpar(cex=fontsize))

# Make the dendrogram wider
Heatmap(my_matrix, 
        cluster_columns=FALSE,
        row_names_side = "left", 
        row_hclust_side = "left",
        row_names_gp=gpar(cex=fontsize),
        row_hclust_width = unit(3, "cm"))

# Different distance calculation methods
# "euclidean", "maximum", "manhattan", "canberra", "binary", "minkowski", "pearson", "spearman", "kendall"
# euclidean is the default

# Different clustering methods
# "ward.D", "ward.D2", "single", "complete", "average" (= UPGMA), "mcquitty" (= WPGMA), "median" (= WPGMC) or "centroid" (= UPGMC)

# Watch the dendrogram and heatmap change when we change the methods
Heatmap(my_matrix, 
        cluster_columns=FALSE,
        row_names_side = "left", 
        row_hclust_side = "left",
        row_names_gp=gpar(cex=fontsize),
        row_hclust_width = unit(3, "cm"),
        clustering_distance_rows ="maximum",
        clustering_method_rows = "ward.D")


# Coloring clusters in dendrogram

# install dendextend
library(dendextend)
# Need to build dendrogram first so we can use it for the color_brances() function
# 1. calculate distances (method="maximum")
# 2. cluster (method="ward.D")
dend = hclust(dist(my_matrix,method="maximum"),method="ward.D")

Heatmap(my_matrix, 
        cluster_columns=FALSE,
        row_names_side = "left", 
        row_hclust_side = "left",
        row_names_gp=gpar(cex=fontsize),
        row_hclust_width = unit(3, "cm"),
        cluster_rows = color_branches(dend, k = 3))


# We can split the heatmap into clusters

Heatmap(my_matrix, 
        cluster_columns=FALSE,
        row_names_side = "left", 
        row_hclust_side = "left",
        row_names_gp=gpar(cex=fontsize),
        row_hclust_width = unit(3, "cm"),
        clustering_distance_rows ="maximum",
        clustering_method_rows = "ward.D",
        km=2) # number of clusters you want


Heatmap(my_matrix, 
        cluster_columns=FALSE,
        row_names_side = "left", 
        row_hclust_side = "left",
        row_names_gp=gpar(cex=fontsize),
        row_hclust_width = unit(3, "cm"),
        clustering_distance_rows ="maximum",
        clustering_method_rows = "ward.D",
        km=2, # number of clusters you want
        bottom_annotation = HeatmapAnnotation(chromosome_info,col = list(chrom=chromosome.colors),show_legend=FALSE)
)

