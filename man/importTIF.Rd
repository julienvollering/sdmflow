% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/importTIF.R
\name{importTIF}
\alias{importTIF}
\title{Imports raster files in .tif format (geotiff) to a raster stack or brick}
\usage{
importTIF(
folder,
crs = "+init=epsg:4326",
to.memory = TRUE
)
}
\arguments{
\item{folder}{Folder storing the .tif raster files.}

\item{crs}{Character string defining a coordinate reference system as per the PROJ.4 standard. The default crs is \emph{"+init=epsg:4326"}, valid for data using latitude and longitude degrees as coordinates, and the global datum WGS84. Check the help file of \code{\link[sp]{CRS}} for further details. The argument can be set to NULL, or "unknown" if the coordinate reference system is unknown.}

\item{to.memory}{If TRUE (default option), the function returns a raster brick residing in memory. Otherwise it returns a stack, which resides in the hard disk, and slows down most operations. If the computer has enough RAM memory, use TRUE to speed up any operation on the outcome of this function.}
}
\value{
A raster brick or stack.
}
\description{
Wrapper of the functions \code{\link[raster]{stack}}, \code{\link[raster]{brick}}, and \code{\link[sp]{CRS}} that facilitates loading .tif raster files into R as a stack or a brick.
}
\author{
Blas Benito <blasbenito@gmail.com>
}
