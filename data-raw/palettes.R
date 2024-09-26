## code to prepare `dohac_palettes` dataset goes here

library(palettes)

# Define and name VAGO colours -------------------------------
# Primary, blues and teals
vago.blue = pal_colour("#054894")
usethis::use_data(vago.blue, overwrite = TRUE)

vago.darkblue =  pal_colour("#04366F")
usethis::use_data(vago.darkblue, overwrite = TRUE)

vago.teal = pal_colour("#2BB5B6")
usethis::use_data(vago.teal, overwrite = TRUE)

vago.darkteal = pal_colour("#208888")
usethis::use_data(vago.darkteal, overwrite = TRUE)

vago.lightteal = pal_colour("#A3E9E9")
usethis::use_data(vago.lightteal, overwrite = TRUE)

vago.green = pal_colour("#00A86B")
usethis::use_data(vago.green, overwrite = TRUE)

vago.cerulean = pal_colour("#2F8DF8")
usethis::use_data(vago.cerulean, overwrite = TRUE)

vago.purple = pal_colour("#2D1A78")
usethis::use_data(vago.purple, overwrite = TRUE)

vago.magenta = pal_colour("#930073")
usethis::use_data(vago.magenta, overwrite = TRUE)

vago.red = pal_colour("#D60000")
usethis::use_data(vago.red, overwrite = TRUE)

vago.amber = pal_colour("#FFC000")
usethis::use_data(vago.amber, overwrite = TRUE)

vago.lilac = pal_colour("#E3E3ED")
usethis::use_data(vago.lilac, overwrite = TRUE)

vago.grey = pal_colour("#BFBFBF")
usethis::use_data(vago.grey, overwrite = TRUE)



# Create
vago_colours =
  pal_palette(
    #primary colours
    base =
      c(
        vago.blue,
        vago.teal,
        vago.green,
        vago.cerulean,
        vago.purple,
        vago.magenta,
        vago.red
      ),
    #theme colours
    theme =
      c(
        vago.blue,
        vago.cerulean,
        vago.teal,
        vago.green,
        vago.purple,
        vago.magenta,
        vago.red
      ),
    #chart colours
    chart =
      c(
        vago.darkblue,
        vago.darkteal,
        vago.teal,
        vago.lightteal,
        vago.grey
      ),
    #traffic light colours
    traffic =
      c(
        vago.red,
        vago.amber,
        vago.green
      )
  )

usethis::use_data(vago_colours, overwrite = TRUE)
