#' A ggplot2 theme with background colour lilac and text colours to black.
#'
#' Colours are sourced from `vagotheme` and are vago style guide compliant.
#'
#' @param text_colour a  string with default "black"
#'
#' @param base_size a numeric with default 15
#'
#'
#' @family vagotheme
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 element_rect


theme_vago_lilac <- function(base_size = 15,
                             text_colour = "black") {

  thm <- vagotheme::theme_vago_foundation()

  thm +
    ggplot2::theme(
      # Set colours
      text = ggplot2::element_text(size = base_size, colour = text_colour),
      plot.background = ggplot2::element_rect(fill = vagotheme::vago.lilac, colour=NA),
      axis.text = ggplot2::element_text(colour = vagotheme::vago.lilac)
    )

}
