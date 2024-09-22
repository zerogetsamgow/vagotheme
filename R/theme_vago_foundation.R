#' VAGO Foundation Theme
#'
#' This theme is designed to be a foundation from which to build new
#' themes, and not meant to be used directly. \code{theme_vago_foundation()}
#' is a complete theme with only minimal number of elements defined.
#' It is easier to create new Cube themes by extending this one rather
#' than \code{\link[ggplot2]{theme_gray}()} or \code{\link[ggplot2]{theme_bw}()},
#' because those themes define elements deep in the hierarchy.
#'
#' This theme takes \code{\link[ggthemes]{theme_foundations}()} and sets
#' base text family and size to `Noto Sans` and `15`.
#'
#' @inheritParams ggthemes::theme_foundation
#'
#' @family vagotheme
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggthemes theme_foundation

theme_vago_foundation <- function(base_size = 15, base_family = "Noto Sans") {
  install_vago_fonts()
  showtext::showtext_auto()
  thm <- ggthemes::theme_foundation(base_size = base_size, base_family = base_family)

  thm +
    ggplot2::theme(
      # Clear background for clean charts
      rect = ggplot2::element_blank(),
      line = ggplot2::element_blank(),
      panel.background = ggplot2::element_blank(),
      panel.border = ggplot2::element_blank(),
      # Define cube_founcation text parameters
      # Define cube_founcation text parameters
      text =
        ggplot2::element_text(
          family=base_family
        ),
      plot.title =
        ggplot2::element_text(
          size=rel(1.2),
          face="bold",
          lineheight = 0.5,
          margin = margin(0, 0, 2, 0, "mm")
        ),
      plot.subtitle =
        ggplot2::element_text(
          size=rel(1),
          lineheight = 0.5,
          margin = margin(0, 0, 5, 0, "mm")
        ),
      legend.text =
        ggplot2::element_text(
          size=rel(1)),
      legend.title =
        ggplot2::element_text(
          size=rel(1),
          lineheight=.3,
          margin = margin(0,0,0,0,"cm")),
      plot.caption = ggplot2::element_text(size=rel(1),hjust = 0),
      strip.text = ggplot2::element_text(size=rel(1)),
      # Define axis foundation parameters
      axis.line = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank(),
      axis.text =
        ggplot2::element_text(
          size=ggplot2::rel(1)
        ),
      axis.title.x =
        ggplot2::element_text(
          size=ggplot2::rel(1),
          hjust = .9,
          face = "bold"
        ),
      axis.title.y =
        ggplot2::element_text(
          size=ggplot2::rel(1),
          hjust = .9,
          face = "bold",
          angle = 90,
        ),
      # Define foundation legend parameters
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      legend.key.size = ggplot2::unit(4,"mm"),
      legend.position = "bottom",
      legend.margin = ggplot2::margin(1, 1, 1, 1, "mm"),
      # Define foundation margin parameters
      plot.margin = ggplot2::margin(1, 1, 1, 1, "mm"),
      # Define foundation title parameters
      plot.title.position = "plot"
    )

}
