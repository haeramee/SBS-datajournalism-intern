### Data

[World Population Prospects - Population Division - United Nations](https://population.un.org/wpp/Download/Standard/MostUsed/)

<details>
<summary>The file I used contains the following indicators</summary>
    - Total Population, as of 1 January (thousands)
    - Total Population, as of 1 July (thousands)
    - Male Population, as of 1 July (thousands)
    - Female Population, as of 1 July (thousands)
    - Population Density, as of 1 July (persons per square km) (UPDATED on 14 July 2022)
    - Population Sex Ratio, as of 1 July (males per 100 females)
    - Median Age, as of 1 July (years)
    - Natural Change, Births minus Deaths (thousands)
    - Rate of Natural Change (per 1,000 population)
    - Population Change (thousands)
    - Population Growth Rate (percentage)
    - Population Annual Doubling Time (years)
    - Births (thousands)
    - Births by women aged 15 to 19 (thousands)
    - Crude Birth Rate (births per 1,000 population)
    - Total Fertility Rate (live births per woman)
    - Net Reproduction Rate (surviving daughters per woman)
    - Mean Age Childbearing (years)
    - Sex Ratio at Birth (males per 100 female births)
    - Total Deaths (thousands)
    - Male Deaths (thousands)
    - Female Deaths (thousands)
    - Crude Death Rate (deaths per 1,000 population)
    - Life Expectancy at Birth, both sexes (years)
    - Male Life Expectancy at Birth (years)
    - Female Life Expectancy at Birth (years)
    - Life Expectancy at Age 15, both sexes (years)
    - Male Life Expectancy at Age 15 (years)
    - Female Life Expectancy at Age 15 (years)
    - Life Expectancy at Age 65, both sexes (years)
    - Male Life Expectancy at Age 65 (years)
    - Female Life Expectancy at Age 65 (years)
    - Life Expectancy at Age 80, both sexes (years)
    - Male Life Expectancy at Age 80 (years)
    - Female Life Expectancy at Age 80 (years)
    - Infant Deaths, under age 1 (thousands)
    - Infant Mortality Rate (infant deaths per 1,000 live births)
    - Live Births Surviving to Age 1 (thousands)
    - Under-Five Deaths, under age 5 (thousands)
    - Under-Five Mortality (deaths under age 5 per 1,000 live births)
    - Mortality before Age 40, both sexes (deaths under age 40 per 1,000 live births)
    - Male Mortality before Age 40 (deaths under age 40 per 1,000 male live births)
    - Female Mortality before Age 40 (deaths under age 40 per 1,000 female live births)
    - Mortality before Age 60, both sexes (deaths under age 60 per 1,000 live births)
    - Male Mortality before Age 60 (deaths under age 60 per 1,000 male live births)
    - Female Mortality before Age 60 (deaths under age 60 per 1,000 female live births)
    - Mortality between Age 15 and 50, both sexes (deaths under age 50 per 1,000 alive at age 15)
    - Male Mortality between Age 15 and 50 (deaths under age 50 per 1,000 males alive at age 15)
    - Female Mortality between Age 15 and 50 (deaths under age 50 per 1,000 females alive at age 15)
    - Mortality between Age 15 and 60, both sexes (deaths under age 60 per 1,000 alive at age 15)
    - Male Mortality between Age 15 and 60 (deaths under age 60 per 1,000 males alive at age 15)
    - Female Mortality between Age 15 and 60 (deaths under age 60 per 1,000 females alive at age 15)
    - Net Number of Migrants (thousands)
    - Net Migration Rate (per 1,000 population)
</details>

- Complete (estimates and all projection scenarios) (XLSX, 93.17 MB)
- Demographic indicators by region, subregion and country, annually for 1950-2100

### Approach

- Out of the many indicators, I used the Total Fertility Rate (live births per woman). I wanted to see how quickly Korea’s fertility rate drops compared to the rest of the world.
- There are a lot of countries in the data and includes sub categories like continents, SDG groups, UN development groups and World Bank income groups. I decided that was too much info and using all of it would it hinder me from spotting any trends. So I only used OECD countries’ data and the WORLD average.

### Visualization
<iframe src="TFR.html" width="100%" height="400" id="igraph" scrolling="no" seamless="seamless" frameBorder="0"> </iframe>
- You can see the R code for this graph in fertilityRate.R 

### Comments

- Though all OECD countries’ TFRs are dropping, Korea’s TFR drops remarkably quickly

### Article

[인구 감소는 처음이라...어떻게 해야 할까?](https://premium.sbs.co.kr/article/zcK7ME96D_R)

- This was the article I was working on when I made this graph
- DISCLAIMER: I did NOT write this article. As an intern I researched the topic, drew graphs of my own and compiled data.

