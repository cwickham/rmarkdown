\name{pandoc_path_arg}
\alias{pandoc_path_arg}
\title{Transform path for passing to pandoc}
\usage{
pandoc_path_arg(path)
}
\arguments{
  \item{path}{Path to transform}
}
\value{
Transformed path that can be passed to pandoc on the
command line
}
\description{
Transform a path for passing to pandoc on the command line.
Calls \code{\link[base:path.expand]{path.expand}} on all
platforms. On Windows, transform it to a short path name if
it contains spaces, and then convert backslashes to forward
slashes
}

