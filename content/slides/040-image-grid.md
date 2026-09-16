+++
title = "Image Grid and Text"
weight = 60
template = "slide-image-grid.html"

[extra]
images = [
  "images/placeholder.svg",
  "images/placeholder.svg",
  "images/placeholder.svg",
  "images/placeholder.svg",
  "images/placeholder.svg",
]
image_alt = "Describe the image here for accessibility"
image_first = false
intro = "An optional line that sits below the heading — useful for a subtitle or context. It will grow to contain your content."
notes = "Use this layout to build up a slide over several versions, adding one image to the list each time, without the grid moving around."
+++

This is the text that sits alongside the image grid. Write it as normal Markdown.

- You can use bullets here
- Or plain paragraphs
- Or mix in **bold** and *italic*

The grid is a fixed 3x3 layout. List up to 9 images in `images` in the frontmatter; they fill the grid left to right, top to bottom, and empty cells stay empty. Set `image_first` to `true` or `false` in the frontmatter, same as the image + text layout.
