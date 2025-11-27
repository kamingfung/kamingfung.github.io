---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Atlantic Centered Map"
subtitle: ""
summary: "This is an example to plot a world map with Atlantic centered map using
R and ggplot2."
authors: [admin]
tags: [R]
categories: [Skill Share]
date: 2019-09-10T17:06:22-04:00
lastmod: 2019-09-10T17:06:22-04:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption:
  focal_point: Smart
  preview_only: true

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

<!-- *Created by [Ka Ming Fung](kamingfung@link.cuhk.edu.hk)* -->

Here is an example of how to plot an Atlantic-centered world map using R and ggplot2. :earth_americas:

```r
library(ggplot2) # for plotting

ggplot() + borders("world2") + coord_fixed(expand = FALSE) + theme_bw()
```

![](unnamed-chunk-1-1.png)<!-- -->

…and with a bit more informative axes.

```r
library(scales)  # for formatting axes labels

ggplot() + borders("world2") + coord_fixed(expand = FALSE) + theme_bw() +
  scale_x_continuous(breaks = c(90, 180, 270), labels = label_number(suffix = "ºE")) +
  scale_y_continuous(breaks = c(-60, -30, 0, 30, 60), labels = label_number(suffix = "ºN"))
```

![](unnamed-chunk-2-1.png)<!-- -->

You can then add other geometry objects onto the map.
