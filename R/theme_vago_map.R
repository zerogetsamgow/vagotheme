#' VAGO Map Theme
#'
#' This theme is designed to be be used when creating maps.
#'
#' This theme takes \code{\link[ggthemes]{theme_map}()} and sets
#' base text family and size to `Noto Sans` and `15`.
#'
#' @inheritParams ggthemes::theme_foundation
#'
#' @family vagothemes
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggthemes theme_foundation

theme_vago_map <-
  function(
    base_colour = c("white","lilac"),
    base_size = 15,
    base_family = "Noto Sans") {



    thm <- ggthemes::theme_map(base_size = base_size, base_family = base_family)

    if(is.null(base_colour)) {base_colour="white"}
    if(length(base_colour)>1) {base_colour="white"}
    .base_colour = switch(
      base_colour,
      "white" = "white",
      "lilac" = vago.lilac)

    .text_colour=switch(
      base_colour,
      "white" = "black",
      "lilac" = "white")

    .line_colour=switch(
      base_colour,
      "white" = "black",
      "lilac" = "white")

    thm +
      ggplot2::theme(
        # Clear background for clean charts
        rect = ggplot2::element_blank(),
        line = ggplot2::element_blank(),
        panel.background = ggplot2::element_rect(colour="transparent",fill=.base_colour),
        plot.background = ggplot2::element_rect(colour="transparent",fill=.base_colour),
        panel.border = ggplot2::element_blank(),
        # Define cube_founcation text parameters
        text =
          ggplot2::element_text(
            family=base_family,
            size=base_size,
            colour=.text_colour
          ),
        plot.title =
          ggplot2::element_text(
            size=ggplot2::rel(1.2),
            face="bold",
            lineheight = 0.5,
            margin = margin(0, 0, 5, 0, "mm")
          ),
        # Define axis foundation parameters
        legend.background = ggplot2::element_blank(),
        legend.key = ggplot2::element_blank(),
        legend.key.size = ggplot2::unit(4,"mm"),
        legend.position.inside = c(0,0),
        legend.title.position = "top",
        legend.direction = "horizontal",
        legend.margin = ggplot2::margin(1, 1, 1, 1, "mm"),
        legend.title = ggplot2::element_text(family=base_family),
        legend.text = ggplot2::element_text(family=base_family),
        # Define foundation margin parameters
        plot.margin = ggplot2::margin(1, 1, 1, 1, "mm"),
        # Define foundation title parameters
        plot.title.position = "plot"
      )

  }
