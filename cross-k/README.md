## Musings about the cross K function

I wrote a blog post about some explorations on the cross K function and came up with an interactive visualization made by D3.js. These are the materials to reproduce those steps.

Visit the blog post [here](http://blog.jlevente.com/understanding-the-cross-k-function/).

If you find these materials useful and looking for an research paper that uses the cross K function to cite, you might want to consider the following paper:


Juhász, Levente, and Hartwig H. Hochmair. 2017. "Where to catch ‘em all? – a geographic analysis of Pokémon Go locations." Geo-spatial Information Science:1-11. [doi: 10.1080/10095020.2017.1368200](http://dx.doi.org/10.1080/10095020.2017.1368200). [[RG]](https://www.researchgate.net/publication/319472127_Where_to_catch_%27em_all_-_a_geographic_analysis_of_Pokemon_Go_locations)

#### Content of this repo:

- `calc_crossk.R` - R script to compute the cross K-function with spatstat and to relabel points with Monte Carlo simulation
- `index.html` - Interactive tool to illustrate how the function changes with the point pattern (made with D3.js)
- `data.json` - Array of json objects for D3.js (point coordinates)
- `data.csv` - Data file containing individual points in the examples
- `crossk_out.csv` - Results of the cross K computation and the simulation
