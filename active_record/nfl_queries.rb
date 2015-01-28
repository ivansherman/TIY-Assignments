
## Select Team by Division and Conference ##
Team.where(conference: 'NFC');

## Select every team with at least 11 wins##
Team.where("wins >= 11").map{|team| team.name};

## Select every team with at least 8 wins that did not make the playoffs ##
# After this one, none of the queries here seem to be working properly
Team.where("wins >= 8 AND playoff = 0").map{|team| team.name}

Rename every team with fewer than 4 wins "Losers"
UPDATE * FROM teams SET name = "Losers" WHERE wins < 4;

## Select every team that plays in a city of fewer than 5 million people, and the name of the city ##
SELECT * FROM teams, City.name FROM cities, teams WHERE(teams.city_id = cities.id) AND (cities.population_2013 < 5000000);

## Select every AFC team that plays in a city that is shrinking in population ##
## need help ##

## Select every city that has a team ##
City.joins(:teams).map{|city| city.name};

Select every state that has a team
State.joins(cities: :teams).map{|state| state.name}.uniq

# Select every team that plays in California
# ???????




