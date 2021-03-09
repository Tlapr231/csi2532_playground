CREATE TABLE schema_migrations (
    migration varchar(255),
    migrated_at time,
    PRIMARY KEY (migration)
); 

INSERT INTO schema_migrations (migration, migrated_at) VALUES 
('20210222181300-create-athletes.sql', '2021-02-22 18:13:00'); 

INSERT INTO schema_migrations (migration, migrated_at) VALUES 
('20210222182800_create_migrations.sql', '2021-02-22 18:28:00');
