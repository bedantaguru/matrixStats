###########################################################################/**
# @RdocFunction rowCollapse
# @alias colCollapse
# \alias{rowCollapse,matrix-method}
# \alias{colCollapse,matrix-method} 
#
# @title "Extracts one cell per row (column) from a matrix"
#
# \description{
#  @get "title".
#  The implementation is optimized for memory and speed.
# }
# 
# \usage{
#   rowCollapse(x, idxs, ...)
#   colCollapse(x, idxs, ...) 
# }
#
# \arguments{
#   \item{x}{An NxK @matrix.}
#   \item{idxs}{An index @vector of (maximum) length N (K) specifying the
#    columns (rows) to be extracted.}
#   \item{...}{Not used.}
# }
# 
# \value{
#   Returns a @vector of length N (K).
# }
#
# @examples "../incl/rowCollapse.Rex"
#
# @author
#
# \seealso{
#   \emph{Matrix indexing} to index elements in matrices and arrays, 
#   cf. @see "base::[".
# }
#
# @keyword utilities
#*/########################################################################### 
setGeneric("rowCollapse", function(x, idxs, ...) {
  standardGeneric("rowCollapse")
}) 

setMethod("rowCollapse", signature("matrix"), function(x, idxs, ...) {
  dim <- dim(x);
  colOffsets <- c(0, cumsum(rep(dim[1], times=dim[2]-1)));
  rowOffsets <- seq_len(dim[1]);
  idxs <- rep(idxs, length.out=dim[1]);
  colOffsets <- colOffsets[idxs];
  idxs <- rowOffsets + colOffsets;
  x[idxs];
})

setGeneric("colCollapse", function(x, idxs, ...) {
  standardGeneric("colCollapse")
}) 

setMethod("colCollapse", signature("matrix"), function(x, idxs, ...) {
  rowCollapse(t(x), idxs=idxs, ...);
})


############################################################################
# HISTORY:
# 2008-06-13
# o BUG FIX: rowCollapse(x) was broken and returned the wrong elements.
# 2008-04-13
# o Added Rdocs.
# o Added colCollapse().
# 2007-10-21
# o Created.
############################################################################