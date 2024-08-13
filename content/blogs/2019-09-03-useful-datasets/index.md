---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Useful Datasets"
subtitle: ""
summary: "List of open datasets related to my work"
authors: [admin]
tags: []
categories: [Research Tool]
date: 2019-09-03T16:58:10-04:00
lastmod: 2020-10-10T17:06:22-04:00

featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: "Shape of Hong Kong generated from GADM"
  focal_point: Smart
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

*The below datasets or documentation are open to all. Hope it will benefit your research.*

#### Climate

* [National Centers for Environmental Predictions (NCEP) Reanalysis II: air temperature, precipitation water, and other meteorological variables at various pressure levels](https://www.esrl.noaa.gov/psd/data/gridded/data.ncep.reanalysis2.surface.html) (daily & monthly over 1979–present; 2.5º-by-2.5º) [[Kanamitsu et al, 2012](https://journals.ametsoc.org/doi/10.1175/BAMS-83-11-1631)]

#### Ammonia (NH<sub>3</sub>)

* [IASI satellite-measured column concentration](https://doi.pangaea.de/10.1594/PANGAEA.894736) (0.01º-by-0.01º) [[Van Damme et al. 2018]](https://www.nature.com/articles/s41586-018-0747-1)

* [Ammonia Monitoring Network (AMoN) in situ ground measurement of the 2-m concentration](http://nadp.slh.wisc.edu/data/AMoN/) (site data) [[National Atmospheric Deposition Program 2014]](http://nadp.slh.wisc.edu/amon/sites/AMoNMetadata.pdf)

* [MASAGE_NH3 – a global agricultural emission inventory](https://mycuhk-my.sharepoint.com/:u:/g/personal/1155013803_link_cuhk_edu_hk/EaAlyS_IyKlHi5Otu7NK56IBoQLZukLFyJ6pd8NMHrEMgQ?e=UKCEGs) (monthly; 2º-by-2.5) [[Paulot et al. 2014](http://acmg.seas.harvard.edu/publications/2014/paulot2014_emissions.pdf)]

* [A Chinese agricultural emission inventory by Peking University](http://www.phy.pku.edu.cn/~acaq/data/nh3_agr_emis.html) (monthly; 0.5°×0.667°) [[Zhang et al. 2018](https://www.atmos-chem-phys.net/18/339/2018/)]

#### Nitrogen Dioxide (NO<sub>2</sub>)

* [Gridded concentration derived from OMI satellite measurement by the University of Wisconsin-Madison](https://nelson.wisc.edu/sage/data-and-models/OMI_NO2.php) (monthly over 2006–2018; 12 km-by-12 km) [[Harkey et al. 2015](https://agupubs.onlinelibrary.wiley.com/doi/full/10.1002/2015JD023316)]

#### Fine Particulate Matter (PM<sub>2.5</sub>)

* [A global concentration estimate based on the Bayesian hierarchical model](https://pubs.acs.org/doi/suppl/10.1021/acs.est.8b02864) (annually over 2010–2016; 0.1° × 0.1°) [[Shaddick et al. 2018](https://pubs.acs.org/doi/10.1021/acs.est.8b02864)]

#### Agriculture

* [Crop calendar dataset by the University of Wisconsin-Madison](https://nelson.wisc.edu/sage/data-and-models/crop-calendar-dataset/index.php) (5'-by-5' & 0.5º-by-0.5º ) [[Sacks et al. 2010](https://nelson.wisc.edu/sage/data-and-models/crop-calendar-dataset/sacksetalGEB2010.pdf)]

* [Harvest area and yield for 175 Crops by EarthStat](http://www.earthstat.org/harvested-area-yield-175-crops/) (for the year 2000; 5'-by-5') [[Monfreda et al. 2008](https://agupubs.onlinelibrary.wiley.com/doi/full/10.1029/2007GB002947)]

* [Crop allocation to food, feed, and nonfood by EarthStat](http://www.earthstat.org/crop-allocation-food-feed-nonfood/) (5'-by-5') [[Cassidy et al. 2013](http://iopscience.iop.org/article/10.1088/1748-9326/8/3/034015/meta)]

* [Nutrient Application for Major Crops](http://www.earthstat.org/nutrient-application-major-crops/) (for the year 2000; 5'-by-5') [[Mueller et al. 2012](https://www.nature.com/articles/nature11420)]

#### Soil

* [Harmonized World Soil Database v1.2](http://www.fao.org/soils-portal/soil-survey/soil-maps-and-databases/harmonized-world-soil-database-v12/en/) [[Fischer et al. 2008](http://pure.iiasa.ac.at/id/eprint/13290/)]
  * Land mask, terrain elevation, slope  (30"-by-30" &amp; 5'-by-5')
  * Land use and land cover: rain-fed cultivated land, irrigated land, forest land, grass/scrub/woodland, built-up land (residential/infrastructure), barren/very sparsely vegetated land, or water bodies  (5'-by-5')
  * Soil qualities for crop production: nutrient availability, nutrient retention capacity, rooting conditions, oxygen availability for roots, excess salts, toxicity, and workability (5'-by-5')

#### Geography

* [GADM database of Global Administrative Areas](https://gadm.org/about.html) (shapefiles; check out my [GitHub repo](https://github.com/kamingfung/CLM-Analysis-Tools) on how to use it in R)
