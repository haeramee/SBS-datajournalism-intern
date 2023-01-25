library(readxl)
library(tidyverse)
library(ggplot2)
library(plotly)

original <- read_excel("WPP2022_GEN_F01_DEMOGRAPHIC_INDICATORS_REV1.xlsx", sheet = 1, skip = 16)
oecd <- read_csv("OECD.csv")

# check catagories
original %>% distinct(Type)
groups <- original %>% filter(Type == "Label/Separator")

colnames(original)

# leave necessary columns
df.1 <- original %>% 
  select(c("Region, subregion, country or area *", Year, "Total Fertility Rate (live births per woman)")) %>% 
  rename(Region = "Region, subregion, country or area *") %>% 
  rename(TFR = "Total Fertility Rate (live births per woman)") %>% 
  as_tibble()

# check for NAs
sum(is.na(df.1$TFR))

# check distinct values in each Label

# SDG group
SDG <- df.1 %>% 
  slice(74:649) %>% 
  distinct(Region)

# UN development group 
UN <- df.1 %>% 
  slice(651:1154) %>% 
  distinct(Region)

# World Bank income group
WB <- df.1 %>% 
  slice(1156:1587) %>% 
  distinct(Region)

# geographic region
GR <- df.1 %>% 
  slice(1589:20596) %>% 
  distinct(Region)


# 1. graph TFR over year by Geographic Region

GR <- df.1 %>% 
  slice(1:72, 1589:20596)

glimpse(GR)
options(digits = 3)

GR$TFR <- as.numeric(GR$TFR) 
na_where <- GR[is.na(GR$TFR),] # Holy see
GR <- drop_na(GR) 

GR %>% 
  ggplot(aes(Year, TFR, group=Region))+
  geom_line()

# 2. graph TFR over year for OECD countries

# check if OECD names == General Region names
x <- oecd$name
y <- distinct(GR, Region) %>% 
  rename(name = "Region")

x[!(x %in% str_to_upper(y$name))]

# change names of GR to match OECD names
GR$Region <- str_replace(GR$Region, "United States of America", "UNITED STATES")
GR$Region <- str_replace(GR$Region, "Republic of Korea", "KOREA")
GR$Region <- str_replace(GR$Region, "Slovakia", "SLOVAK REPUBLIC")
GR$Region <- str_replace(GR$Region, "Czechia", "CZECH REPUBLIC")
GR$Region <- str_to_upper(GR$Region)

# keep only OECD countries + WORLD
oecd.data <- oecd %>% 
  left_join(GR, by = c("name" = "Region"))
world <- GR %>% filter(Region == "WORLD") %>% 
  rename(name =Region)

oecd.data <- rbind(oecd.data, world)

# graph
p <- oecd.data %>% 
  ggplot(aes(Year, TFR, group = name, color = name,
             text = paste0("country: ", name, "\nyear: ", Year, "\nTFR: ", TFR))) +
  geom_line() + 
  theme_bw() +
  scale_color_manual(values = c('WORLD'='black', 'KOREA'='red')) +
  labs(title = "OECD Total Fertility Rates", y = "Total Fertility Rate(live births per woman)") +
  theme(legend.position = "none")

ggplotly(p, tooltip = "text")
