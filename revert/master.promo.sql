-- Deploy spottrek:master.promo to pg

BEGIN;

drop table master.promo;

create table master.promo (
	  id serial,
	  brand_id integer,
	  title text,
	  titlecode integer,
	  created_on timestamp default current_timestamp,
	  primary key (id),
	  foreign key (brand_id) references master.brand (id)
);

COMMIT;
