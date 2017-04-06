## Musings about the cross K function

I wrote a blog post about some explorations on the cross K function and came up with an interactive visualization made by D3.js. These are the materials to reproduce those steps.

Visit the blog post [here](http://blog.jlevente.com/understanding-the-cross-k-function/).

If you find these materials useful and looking for an research paper that uses the cross K function to cite, you might want to consider the following paper. [to be updated once published]

```
Juhász, L. and Hochmair, H. H. (under review). Where to catch ‘em all? – A geographic analysis of Pokémon Go locations. Geo-spatial Information Science.
```

- `calc_crossk.R` - R script to compute the cross K-function with spatstat and to relabel points with Monte Carlo simulation
- `index.html` - Interactive tool to illustrate how the function changes with the point pattern (made with D3.js)
- `data.json` - Array of json objects for D3.js (point coordinates)
- `data.csv` - Data file containing individual points in the examples
- `crossk_out.csv` - Results of the cross K computation and the simulation