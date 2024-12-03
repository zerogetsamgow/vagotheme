

# Define and name VAGO colours -------------------------------
# Primary, blues and teals
vago.blue = palettes::pal_colour("#054894")
usethis::use_data(vago.blue, overwrite = TRUE)

vago.darkblue =  palettes::pal_colour("#04366F")
usethis::use_data(vago.darkblue, overwrite = TRUE)

vago.teal = palettes::pal_colour("#2BB5B6")
usethis::use_data(vago.teal, overwrite = TRUE)

vago.darkteal = palettes::pal_colour("#208888")
usethis::use_data(vago.darkteal, overwrite = TRUE)

vago.lightteal = palettes::pal_colour("#A3E9E9")
usethis::use_data(vago.lightteal, overwrite = TRUE)

vago.green = palettes::pal_colour("#00A86B")
usethis::use_data(vago.green, overwrite = TRUE)

vago.cerulean = pal_colour("#2F8DF8")
usethis::use_data(vago.cerulean, overwrite = TRUE)

vago.purple = palettes::pal_colour("#2D1A78")
usethis::use_data(vago.purple, overwrite = TRUE)

vago.magenta = palettes::pal_colour("#930073")
usethis::use_data(vago.magenta, overwrite = TRUE)

vago.red = palettes::pal_colour("#D60000")
usethis::use_data(vago.red, overwrite = TRUE)

vago.amber = palettes::pal_colour("#FFC000")
usethis::use_data(vago.amber, overwrite = TRUE)

vago.white = palettes::pal_colour("#FFFFFF")
usethis::use_data(vago.white, overwrite = TRUE)

vago.lilac = palettes::pal_colour("#E3E3ED")
usethis::use_data(vago.lilac, overwrite = TRUE)

vago.grey = palettes::pal_colour("#BFBFBF")
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
      ),
    background =
      c(
        vago.white,
        vago.lilac
      )
  )

usethis::use_data(vago_colours, overwrite = TRUE)
