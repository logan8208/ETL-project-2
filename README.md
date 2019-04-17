# ETL-project-2
Using two different databases (Youtube data and world population datasets) in an ETL project in which we join the datasets after cleaning, and load it into an SQL database

# Data Sources:

- Youtube data
: https://www.kaggle.com/datasnaek/youtube-new 

- World population data 
: http://www.geoba.se/population.php?pc=world&page=3&type=28&st=rank&asde=DESC&year=2019 

- Youtube category index 
: https://gist.github.com/dgp/1b24bf2961521bd75d6c 

# Exctaction:

<img src="readme-media/pop.PNG" alt="pop pic">

<br>

<img src="readme-media/yt-countries-data-names.PNG" alt="yt format -data">

<br>

<img src="readme-media/yt-data-description.PNG" alt="yt format -desc">

<br>

<img src="readme-media/load3.PNG" alt="excelex">

<br>
<br>


* Each 5 countries youtube trending files (.csv) into each pandas DataFrames

* Youtube categories file (.csv) into pandas DataFrame

* World population CSV file (.csv) into pandas DataFrame

<br><br>

## Tranformation:
<br><br>
<img src="readme-media/trans1.PNG" alt="t1">
<br>





* `5 country youtube trending DataFrames`

**Copy** new data frames with only three columns that we need from the YouTube trending data frame in five countries
 
  ['trending_date', 'category_id', 'views']
  
<br><br>
  
<img src="readme-media/trans2.PNG" alt="t2">

<br>
  
<img src="readme-media/trans3.PNG" alt="t3">

<br><br>

* `Youtube category DataFrame`

 **Rename** `id` column to `category_id`column.
 
<br>
 
<img src="readme-media/trans4.PNG" alt="t4">

<br>

* `World population DataFrame `

**Extracts** the population of five countries.

  ['Canada', 'United States of America', 'United Kingdom', 'France', 'Germany']

**Create** the `country_id` column for each country.

<br>

<img src="readme-media/trans5.PNG" alt="t5">


<br><br>
# Load:
<br><br>
  * Create a connection to the SQLdatabase.
  
  <img src="readme-media/trans6.PNG" alt="t6">
  
  * Join between `population table` and `youtube table`on `country_id`
  
  **Foreign key** : `country_id` in population table
  **Reference key** : `country_id` in youtube table
  
  * Join between `category table` and `youtube table` on `category_id`
  
  **Foreign key** : `category_id` in category table
  **Reference key** : `category_id` in youtube table
  
 
 
  
  ![GitHub Logo](/img/EER_diagram.png)
