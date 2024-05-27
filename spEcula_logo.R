library(showtext)
showtext_auto(enable = TRUE)
font_add("ShineTypewriter", regular = "./ShineTypewriter-lgwzd.ttf")
library(hexSticker)
library(magick)

sticker(
  subplot = "./logo1.png",
  s_x = .97,
  s_y = .9,
  s_width = .8,
  s_height = .8,
  package = "spEcula",
  p_family = "ShineTypewriter",
  p_size = 25,
  p_color = ggplot2::alpha("#3e3221",.9),
  p_x = 1.05,
  p_y = 0.95,
  dpi = 300,
  asp = 1,
  h_size = .75,
  h_color = "#3e3221",
  h_fill = '#e9f7f9',
  white_around_sticker = F,
  filename = "spEcula_logo.png"
)

image_read('./spEcula_logo.png') |> 
  image_resize("256x256")|> 
  image_write('./spEcula_logo.png')

specula_logo = image_read('./spEcula_logo.png')
p = image_read('./logo3.png') |> 
  image_resize("80x50")

image_composite(specula_logo,p,
                gravity = "northwest",
                offset = "+85+30") |> 
  image_write('./spEcula_logo.png')