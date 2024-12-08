# DataEng 2024 Template Repository

![Insalogo](./images/logo-insa_0.png)

Project [DATA Engineering](https://www.riccardotommasini.com/courses/dataeng-insa-ot/) is provided by [INSA Lyon](https://www.insa-lyon.fr/).

Students: LARIOZA Andrea, SIA Zhong Qing

### Abstract
This repo contains a jupyter notebook, where you will find the code for the population of relations from csv into postgresql, and the outputs for the sql code used to answer the natural language queries below. Most pre-processing steps were completed using a csv file manager, and can be found in the commit history. They include replacement of '\N' values, improper date-time formats, and special characters in names and circuits. It was simply easier to clean them using excel rather than python. 

## Datasets Description 
We are using the data on Formula 1 Races from 1950 to 2024 and can be obtained on [Kaggle](https://www.kaggle.com/datasets/rohanrao/formula-1-world-championship-1950-2020?select=drivers.csv). It consists of several separate csv files; circuits, results, races, constructors, drivers and pit stops.

## Queries 
1. List circuits in the USA
2. List race count of the top 10 drivers in order.
3. Which driver has the most wins?
4. Which drivers have the same nationality as the constructor?
5. Show across time who drove the fastest in the Singapore Grand Prix?
6. Which constructors have not gotten first place before?
7. Which races have the tightest outcome?
8. Who are the constructors within the top 10 fastest pitstops of all time?
9. List all drivers who have driven for Mclaren
10. Which constructor and driver-pairs have the most podium finishes?

## Requirements
All you will have to do is open the .ipynb file and click Run-All. As some files contain over 25,000 records and there are 7 files, please expect a waiting time of around 2 minutes. 

