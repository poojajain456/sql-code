select current_user();

select*from mysql.user;

-- creating role
create role sales;
grant all privileges on sakila.test to sales;

create user"pooja" identified by "pooja";
show grants for "pooja";

grant sales to pooja;

-- assiging role to user
set default role all to pooja;

-- to check the role
-- select current_role()

-- to delete user
drop user pooja;


