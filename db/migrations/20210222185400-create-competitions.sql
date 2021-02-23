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
    ('20210222185400-create-competitions.sql', '2021-02-22 18:54:00');