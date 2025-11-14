
drop database five_script;
exit;
cls

mysql -u root
show databases;

source G:/Database Scripts/create_db.sql;
source G:/Database Scripts/seed_static.sql;
source G:/Database Scripts/dummy_data.sql;
source G:/Database Scripts/my_data.sql;
show tables;
source G:/Database Scripts/select_all.sql;



source G:/Database Scripts/transcript.sql;cls