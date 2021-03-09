CREATE TABLE athletes (
  id int,
  name varchar(70),
  dob date,
  gender CHAR(1),
  primary key (id)
);

CREATE TABLE schema_migrations (
  migration varchar(255),
  migrated_at time,
  PRIMARY KEY (migration)
); 

CREATE TABLE competitions (
    id int,
    name varchar(255),
    venue varchar(255),
    start_date date,
    start_time time,
    duration int,
    primary key (id)
);

INSERT INTO schema_migrations (migration, migrated_at) VALUES 
  ('20210222181300-create-athletes.sql', '2021-02-22 18:13:00'),
  ('20210222182800_create_migrations.sql', '2021-02-22 18:28:00'),
  ('20210222183500-update-athletes.sql', '2021-02-22 18:35:00'),
  ('20210222185400-create-competitions.sql', '2021-02-22 18:54:00');
