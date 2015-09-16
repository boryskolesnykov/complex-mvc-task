create table if not exists user (
				id serial primary key,
				login varchar (50),
				password varchar (30),
				email varchar (100),
				reg_date date
			);
            
create table if not exists music (
				id serial primary key,
				name varchar (80),
				rating int
			);     
            
create table if not exists role (
				id serial primary key,
				name varchar (30)
			);            

create table if not exists address (
				id serial primary key,
				postcode int unsigned,
				city varchar (120),
				street varchar (120),
				house int unsigned,
				flat int unsigned
			);
            
create table if not exists user_music (
				user_id bigint unsigned not null,
				music_id bigint unsigned not null,
				primary key (user_id, music_id),
				foreign key(user_id) references user(id) on delete restrict on update cascade,
				foreign key(music_id) references music(id) on delete restrict on update cascade
			);            
            
create table if not exists user_role (
				user_id bigint unsigned not null unique,
				role_id bigint unsigned not null,
				primary key (user_id, role_id),
				foreign key(user_id) references user(id) on delete restrict on update cascade,
				foreign key(role_id) references role(id) on delete restrict on update cascade
			);        
            
create table if not exists user_address (
				user_id bigint unsigned not null unique,
				address_id bigint unsigned not null,
				primary key (user_id, address_id),
				foreign key(user_id) references user(id) on delete restrict on update cascade,
				foreign key(address_id) references address(id) on delete restrict on update cascade
			);            
            