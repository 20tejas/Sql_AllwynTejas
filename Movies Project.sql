use etl1;
select * from movies;
-- retrive names of bolly movies whose genre are drama type from data set.
select movie_name from movies where genre ='drama';
-- retrive movies of amir khan in dataset.
select movie_name from movies where  lead_star='Aamir khan';
-- retrive all movies directed by ram gopal verma.
select movie_name from movies where director ='Ram gopal verma';
-- retrive all names of bollywood movies which are been released over more than 1000 numbers of screens in dataset.
select movie_name from movies where number_of_screens >1000;
-- retrive names of bollywood movies which have generated revenue 700000000.
select movie_name from movies where revenue > 700000000;
-- retrive names of bollywood movies which have budget less than 1cr in datase
select movie_name from movies where budget < 10000000;
-- retrive names of movies which are flop in dataset.
select movie_name from movies where revenue - budget ;
-- retrive names of movies which has profit in dataset.
select movie_name from movies where revenue - budget >0;
-- retrive names of movies which has loss in dataset.
select movie_name from movies where revenue - budget < 0;
-- retrive names of movies which have been released on holiday in dataset.
select movie_name from movies where release_period ='holiday';
-- retrive names of movies which has akshay kumar as lead and directed by priyadarshini.
select movie_name from movies where lead_star='akshay kumar' and director ='priyadarshan';
-- retrive names of movies stars starting with a.
select lead_star from movies where lead_star like'a%';
-- retrive names of movies stars having with a at second place.
select lead_star from movies where lead_star like'_a%';
-- retrive names of movies having songs of amit trivedi.
select lead_star from movies where music_director ='Amit Trivedi';
-- retrive names of all comedy movies of akshay kumar.
select * from movies where lead_star ='Akshay kumar' and genre ='comedy';
-- retrive names of movies and star name staring khan in dataset
select movie_name,lead_star from movies where lead_star like '%khan%';
-- retrive all info of movies race and race2.
select * from movies where movie_name in('race','race 2');
-- retrive the names of all thriller movies in bollywood.
select movie_name from movies where genre='thriller';
-- retrive names of all movies from high to low budget.
select movie_name,budget from movies order by budget desc;
-- retrive names of top 5 budget movies
select movie_name,budget from movies order by budget desc limit 5;
-- retrive names of movies with high revenue generated top 5.
select movie_name from movies order by revenue desc limit 10;
-- retrive movies of top 5 by salman khan.
select movie_name from movies where lead_star='Salman khan' order by revenue desc limit 5;
-- retrive names of top 5 hit movies in data set.
select movie_name from movies order by revenue desc limit 5;
-- which is second movie released on maximum screen.
select movie_name from movies order by number_of_screens limit 1,1;
-- which is the 10th movie with highest budget.
select movie_name from movies order by budget desc limit 9,1;
-- which is 2nd movie of amitabh bachan with highest budget.
select movie_name from movies where lead_star='Amitabh bachchan'order by budget  limit 1,1;
-- which are flopped movies of akshay kumar.
select movie_name from movies where revenue < budget and lead_star='Akshay kumar';
-- with which director does sharukh khan has biggest hit movie.
select director from movies where lead_star='Shahrukh khan' order by revenue desc limit 1;
-- 