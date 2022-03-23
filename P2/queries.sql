Select
    a.game_id, p.platform_id
From
    all_games as a
inner join platforms as p on a.platform=p.platform;


Select
     a.game_id, g.genre_id
From
     all_games as a
inner join genre_id as g on a.genre=g.Genre;
		

select
    v.name, v.critic_score, v.user_score, v.year, v.global_sales, v.game_id, i.genre
from 
    videogames as v 
join genre_junc as g on g.game_id=v.game_id
join genre_id as i on i.genre_id=g.genre_id;

		
select
   v.name, v.critic_score, v.user_score, v.year, v.global_sales, v.game_id, p.platform
from 
   videogames as v 
join platform_junc as j on j.game_id=v.game_id
join platforms as p on p.platform_id=j.platform_id;


select
    v.name, v.critic_score, v.user_score, v.year, v.global_sales, v.game_id, g.genre_id, j.platform_id
from 
    videogames as v 
join genre_junc as g on g.game_id=v.game_id
join platform_junc as j on j.game_id=g.game_id;
		
		