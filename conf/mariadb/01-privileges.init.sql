CREATE USER kc_primary_admin IDENTIFIED BY 'yBsDABFDIas5jerb';
CREATE DATABASE kc_primary CHARACTER SET utf8 COLLATE utf8_general_ci;
GRANT ALL PRIVILEGES ON kc_primary.* TO kc_primary_admin;
