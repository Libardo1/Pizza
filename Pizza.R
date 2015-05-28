

require(acs)
require(dplyr)
require(zipcode)

data(zipcode)

geo = geo.make(zip.code = '*')
pop.acs = acs.fetch(endyear = 2013, 
              geo=geo, 
              variable ="B01003_001",
              col.names = 'pop')

pop <- data.frame(
  zip = geography(pop.acs)[,2],
  pop = estimate(pop.acs),
  stringsAsFactors = F,
  row.names = NULL) %>%
  inner_join(zipcode,by = 'zip') %>%
  top_n(5000,pop)
  

  


str(x)

z <- estimate(pop.acs)
z <- geography(x)
