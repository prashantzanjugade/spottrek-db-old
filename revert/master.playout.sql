-- Deploy spottrek:master.playout to pg

BEGIN;

/*
create table master.playout (
	  id bigserial,
	  broadcaster_id integer,
	  contenttype_id integer,
	  channel_id integer,
	  advertisement_id integer,
	  contentlanguage_id integer,
	  telecastdate date,
	  telecastday text,
	  telecaststarttime time,
	  telecastendtime time,
	  telecastduration time,
	  descriptor_id integer,
	  breaknumber integer,
	  positioninbreak integer,
	  countinbreak integer,
	  durationinbreak text, -- not sure of data type
	  breakduration text, -- not sure of data type
	  countperprogram integer,
	  durationperprogram text, -- not sure of data type
	  totalbreakcountperprogram integer,
	  totalbreakdurationperprogram integer,
	  promotypecode integer,
	  promocategory_id integer,
	  promosponsorname text,
	  promoprogramnamecode integer,
	  promoprogramthemecode integer,
	  promoprogramgenrecode integer,
	  programtheme_id integer,
	  programgenre_id integer,
	  programsegmentnumber integer,
	  numberofsegmentsinprogram integer,
	  productservicenamecode integer,
	  brand_id integer,
	  subbrandnamecode integer,
	  advertiser_id integer,
	  commercialprogramnamecode integer,
	  commercialprogramthemecode integer,
	  commercialprogramgenrecode integer,
	  sport text,
	  originalorrepeat text,
	  live text,
	  combinedpositioninbreak integer,
	  combinedcountinbreak integer,
	  promoprogramstarttime time,
	  commercialprogramstarttime time,
	  spotid bigint,
	  lastmodifieddate date,
	  adbreakcode text,
	  promobroadcastercode integer,
	  beam text,
	  split text,
	  market text,
	  splitregion text,
	  splitplatform text,
	  prodhouse text,
	  created_on timestamp default current_timestamp,
	  primary key (id),
	  foreign key (contenttype_id) references master.contenttype (id),
	  foreign key (broadcaster_id) references master.broadcaster (id),
	  foreign key (channel_id) references master.channel (id),
	  foreign key (advertisement_id) references master.advertisement (id),
	  foreign key (contentlanguage_id) references master.contentlanguage (id),
	  foreign key (descriptor_id) references master.descriptor (id),
	  foreign key (promocategory_id) references master.promocategory (id),
	  foreign key (programtheme_id) references master.programtheme (id),
	  foreign key (programgenre_id) references master.programgenre (id),
	  foreign key (brand_id) references master.brand (id),
	  foreign key (advertiser_id) references master.advertiser (id)
);
*/

ALTER TABLE master.playout RENAME COLUMN broadcaster_cd to broadcaster_id;

COMMIT;
