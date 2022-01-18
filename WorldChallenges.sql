
select count(name) from city where countrycode = 'USA';

Select population, lifeExpectancy from country where name = 'Argentina';

select name from country where lifeExpectancy IS NOT NULL order by lifeExpectancy DESC limit 1;

select co.name, ci.name from country co join city ci on co.capital = ci.id where co.name = 'Spain';

select distinct language from country co join city ci on co.code = ci.countryCode join countrylanguage cl on cl.countryCode = co.code where region = 'Southeast Asia';

select name from city where name Like 'F%' limit 25;

select count(ci.name) from country co join city ci on co.code = ci.countrycode where co.name = 'China'; #363

select name, population from country where population IS NOT NULL AND population !=0 order by population asc limit 1;

select count(Name)from country;

select name, SurfaceArea from country order by surfacearea desc limit 10;

select ci.name, ci.population from city ci join country co on co.code = ci.countryCode where co.name = 'japan' order by ci.population desc limit 5;

SET SQL_SAFE_UPDATES=0;
UPDATE country set HeadOfState = 'Elizabeth II' where HeadOfState = 'Elisabeth II';
SET SQL_SAFE_UPDATES=1;

select name, code from country where HeadOfState = 'Elizabeth II';

select name, population, surfacearea , (population/surfacearea) as ratio from country where population IS NOT NULL AND population !=0 order by ratio asc limit 10;

select distinct language from countrylanguage;

select name, GNP from country order by GNP desc limit 10;

select co.name, cl.language from countrylanguage cl join country co on cl.countryCode = co.code;

select name, count(name) as numOfLang from countrylanguage cl join country co on cl.countryCode = co.code group by co.name order by numOfLang desc limit 10;

select co.name from countrylanguage cl join country co on cl.countryCode = co.code where language = 'German' and  percentage > 50.0;

select name, lifeExpectancy from country where lifeExpectancy IS NOT NULL order by lifeExpectancy asc limit 1;

select governmentform, count(governmentform) as amount from country group by governmentform order by amount desc limit 3;

select count(name) from country where indepyear is Not Null;





