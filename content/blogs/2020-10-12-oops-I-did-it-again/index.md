---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Oops! I did it again."
subtitle: ""
summary: "Hugo is just faster."
authors: [admin]
tags: []
categories: [Casual]
date: 2020-10-12T13:00:00-04:00

featured: true
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: "https://gohugo.io/"
  focal_point: smart
  preview_only: true

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

I did it again. A day after my Jekyll-generated site was launched, I discovered Hugo, another SSG (static site generator) written in Go :sparkles:. Six hours later, my Hugo-powered site is up and running. Here in this post, I am explaining why.

## Dr. J and Mr. H

- **Hugo is Faster** - website generating is a process of conversion from a collection of scripts into html and other media files for website hosts. With multimedia content, such as pictures and videos, Jekyll took 8 seconds to render my site vs Hugo's <1 second. Some users tested that Hugo can generate 600k pages within 5 minutes.

- **Hugo is Neater** - I forked my site from [Wowchemy's Academic Theme](https://github.com/wowchemy/starter-academic). This template groups all relevant contents, including source markdown scripts, pictures etc. of each post/page under individual folders. On the contrary, the Jekyll al-folio classifies required files by file types

- **Hugo is Newer** - one long page, fast scrolling, no BS. Just like Insta. :camera:

## Jekyll for flexibility

Based on Ruby, Jekyll is still a more customizable tool for website builders. It encourages users to add contents using HTML, liquid syntax, and markdown all at once, sounding perfect for picky geeks :nerd_face:.
