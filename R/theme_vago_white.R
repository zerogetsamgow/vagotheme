#' A ggplot2 theme with background colour white and text colours to black.
#'
#' Colours are sourced from `vagotheme` and are vago style guide compliant.
#'
#' @param base_size a numeric with default 15
#'
#' @param text_colour a (character) string with default "Black"
#'
#' @family vagotheme
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 element_rect


theme_vago_white <- function(base_size = 15,
                             text_colour = "black") {

  thm <- vagotheme::theme_vago_foundation()

  thm +
    ggplot2::theme(
      # Set colours
      text = ggplot2::element_text(size = base_size, colour = text_colour),
      plot.background = ggplot2::element_rect(fill = vagotheme::vago.white, colour=NA),
      axis.text = ggplot2::element_text(colour=text_colour)
    )

}
