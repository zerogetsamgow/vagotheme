#' background colour to white and text colours to black.
#'
#' Colours are sourced from `vagotheme` and are vago style guide compliant.
#'
#' @family vagotheme
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 element_rect


theme_vago_white <- function(base_colour="white",
                             base_size=15,
                             text_colour="black") {

  thm <- vagotheme::theme_vago_foundation()

  thm +
    ggplot2::theme(
      # Set colours
      text=element_text(size = base_size, colour = text.colour),
      plot.background = element_rect(fill=base_colour, colour=NA),
      axis.line = element_line(colour=line_colour),
      axis.text = element_text(colour=text_colour)
    )

}
