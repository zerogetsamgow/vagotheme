#' Install VAGO Fonts
#'
#' Themes in this package use the Segoe UI font.
#'
#' This function allows these to be installed within the package
#'
#'
#' @family vagothemes
#' @export
#' @importFrom sysfonts font_add
#' @importFrom showtext showtext_auto

install_vago_fonts <- function(font.path="C:/windows/fonts") {
  # Add fonts
  sysfonts::font_add("Segoe UI",
                     regular = file.path(font.path,"segoeui.ttf"),
                     bold = file.path(font.path,"segoeuib.ttf"),
                     italic = file.path(font.path,"segoeuii.ttf")
  )
  # Tell R to render text using showtext by calling the showtext_auto() function
  showtext::showtext_auto()

}
