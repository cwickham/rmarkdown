\name{beamer_presentation}
\alias{beamer_presentation}
\title{Convert to a Beamer presentation}
\usage{
beamer_presentation(toc = FALSE, slide_level = NULL, incremental = FALSE,
  fig_width = 10, fig_height = 7, fig_crop = TRUE, fig_caption = FALSE,
  theme = "default", colortheme = "default", fonttheme = "default",
  highlight = "default", template = "default", keep_tex = FALSE,
  includes = NULL, data_dir = NULL, pandoc_args = NULL)
}
\arguments{
  \item{toc}{\code{TRUE} to include a table of contents in
  the output (only level 1 headers will be included in the
  table of contents).}

  \item{slide_level}{The heading level which defines
  indvidual slides. By default this is the highest header
  level in the hierarchy that is followed immediately by
  content, and not another header, somewhere in the
  document.  This default can be overridden by specifying
  an explicit \code{slide.level}.}

  \item{incremental}{\code{TRUE} to render slide bullets
  incrementally. Note that if you want to reverse the
  default incremental behavior for an individual bullet you
  can preceded it with \code{>}. For example: \emph{\code{>
  - Bullet Text}}}

  \item{theme}{Beamer theme (e.g. "AnnArbor").}

  \item{colortheme}{Beamer color theme (e.g. "dolphin").}

  \item{fonttheme}{Beamer font theme (e.g.
  "structurebold").}

  \item{fig_crop}{\code{TRUE} to automatically apply the
  \code{pdfcrop} utility (if available) to pdf figures}

  \item{highlight}{Syntax highlighting style. Supported
  styles include "default", "tango", "pygments", "kate",
  "monochrome", "espresso", "zenburn", and "haddock". Pass
  \code{NULL} to prevent syntax highlighting.}

  \item{template}{Pandoc template to use for rendering.
  Pass "default" to use the rmarkdown package default
  template; pass \code{NULL} to use pandoc's built-in
  template; pass a path to use a custom template that
  you've created.  See the documentation on
  \href{http://johnmacfarlane.net/pandoc/demo/example9/templates.html}{pandoc
  templates} for more details.}

  \item{keep_tex}{Keep the intermediate tex file used in
  the conversion to PDF}

  \item{fig_width}{Default width (in inches) for figures}

  \item{fig_height}{Default width (in inches) for figures}

  \item{fig_caption}{\code{TRUE} to render figures with
  captions}

  \item{includes}{Named list of additional content to
  include within the document (typically created using the
  \code{\link{includes}} function).}

  \item{data_dir}{Additional directory to resolve relatives
  paths of templates and included content against (the
  directory of the input file is used by default).}

  \item{pandoc_args}{Additional command line options to
  pass to pandoc}
}
\value{
R Markdown output format to pass to \code{\link{render}}
}
\description{
Format for converting from R Markdown to a Beamer
presentation.
}
\details{
Creating Beamer output from R Markdown requires that LaTeX
be installed.

For more information on markdown syntax for presentations
see
\href{http://johnmacfarlane.net/pandoc/demo/example9/producing-slide-shows-with-pandoc.html}{producing
slide shows with pandoc}.

R Markdown documents can have optional metadata that is
used to generate a document header that includes the title,
author, and date. Metadata can also be provided to enable
the use of footnotes and bibliographies. For more details
see the documentation on R Markdown
\link[=rmd_metadata]{metadata} and
\link[=rmd_citations]{citations}.
}
\examples{
\dontrun{

library(rmarkdown)

# simple invocation
render("pres.Rmd", beamer_presentation())

# specify an option for incremental rendering
render("pres.Rmd", beamer_presentation(incremental = TRUE))
}
}

