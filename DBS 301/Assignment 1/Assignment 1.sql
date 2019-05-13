/****** ques1 ******/
update movie
set movie_year = 2008
where movie_num = 1245;

select movie_year
from movie
where movie_num = 1245;
/****** ques ******/

update movie
set price_code = 3
where movie_genre = 'ACTION';

select price_code
from movie
where movie_genre = 'ACTION';


/****** ques ******/

update price
set price_rentfee = price_rentfee+0.50;

select price_rentfee
from price;


/****** ques ******/
select movie_title AS "Movie_Title", movie_year "Movie_Year", movie_genre "Movie_Genre"
from movie;


/****** ques2 ******/
select movie_year AS "Movie_Year", movie_title "Movie_Title", movie_cost "Movie_Cost"
from movie
Order by Movie_cost desc;

/****** ques ******/
select movie_title AS "Movie_Title", movie_year "Movie_Year", movie_genre "Movie_Genre"
from movie
order by movie_genre, movie_year desc;
/****** ques ******/

select movie_num "Movie_Num", movie_title "Movie_Title", price_code "Price_Code"
from movie
where movie_title like 'R%';


/****** ques ******/

select movie_num "Movie_Num", movie_title "Movie_Title", movie_cost "Movie_Cost"
from movie
where movie_title like '%Hope%' or movie_title like '%hope%'
order by movie_title;
/****** ques ******/

select movie_title "Movie_Title", movie_year "Movie_Year", movie_genre "Movie_Genre"
from movie
where movie_genre = 'ACTION';

/****** ques ******/
select movie_num "Movie_Num", movie_title "Movie_Title", movie_cost "Movie_Cost"
from movie
where movie_cost > 40;



/****** ques ******/

select movie_num "Movie_Num", movie_title "Movie_Title", movie_cost "Movie_Cost", movie_genre "Movie_Genre"
from movie
where movie_cost < 50 and (movie_genre = 'ACTION' ) or (movie_genre = 'COMEDY')
order by movie_genre;
/****** ques ******/
select movie_num "Movie_Num", movie_title || q'[(]'|| movie_year || q'[)]'|| movie_genre AS "Movie Description"
from movie;


/****** ques ******/
select movie_genre "Movie_Genre", COUNT(movie_genre) "Number Of Movie"
from movie
group by movie_genre
order by movie_genre;



/****** ques ******/

select avg(movie_cost)
from movie;

/****** ques ******/
select movie_genre "Movie_Genre", round(avg(movie_cost),2) "Average Cost"
from movie
group by movie_genre
order by movie_genre;

/****** ques ******/
select m.movie_title "Movie_Tile", m.movie_genre "Movie_Genre", p.price_description, p.price_rentfee
from movie m, price p
where m.price_code = p.price_code
order by  1 desc;


/****** ques ******/
select m.movie_genre "Movie_Genre", avg(p.price_rentfee) "Average Rental Fee"
from movie m, price p
where m.price_code = p.price_code
group by movie_genre
order by movie_genre;




/****** ques ******/

