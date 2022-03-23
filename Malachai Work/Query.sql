Select
	*
 From
	all_games;
	
Select
	a.name,
	p.platform
 From
 	all_games as a
 	Join platform_junc as j ON j.game_id= a.game_id
	Join platforms as p on p.platform_id = j.platform_id;
	
Select
	a.name,
	g.genre
 From
 	all_games as a
 	Join genre_junc as gj ON gj.game_id= a.game_id
	Join genre_id as g on g.genre_id = gj.genre_id;	
	

Select
	a.name,
	a.user_score,
	a.critic_score,
	p.platform
 From
 	all_games as a
 	Join platform_junc as j ON j.game_id= a.game_id
	Join platforms as p on p.platform_id = j.platform_id;
	
	
Select
	a.name,
	a.year,
	a.global_sales
 From
 	all_games as a;