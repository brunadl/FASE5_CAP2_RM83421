--EXERCICIO 3
CREATE USER c##ADMIN_SP IDENTIFIED BY SP_123;
CREATE USER c##ADMIN_RJ IDENTIFIED BY RJ_123;
CREATE USER c##ADMIN_DF IDENTIFIED BY DF_123;

CREATE USER c##USER_SP IDENTIFIED BY abc_SP;
CREATE USER c##USER_RJ IDENTIFIED BY abc_RJ;
CREATE USER c##USER_DF IDENTIFIED BY abc_DF;

CREATE ROLE c##ADMINISTRADOR;
GRANT create table, create view, create sequence, create cluster, create procedure TO c##ADMINISTRADOR;
GRANT c##ADMINISTRADOR TO c##ADMIN_SP, c##ADMIN_RJ, c##ADMIN_DF;

CREATE ROLE c##USUARIO;
GRANT create table, create view TO c##USUARIO;
GRANT c##USUARIO TO c##USER_SP, c##USER_RJ,c##USER_DF;




-----Teste
-----SELECT * FROM all_users ORDER BY CREATED DESC;
-----SELECT * FROM ROLE_SYS_PRIVS WHERE ROLE = 'C##ADMINISTRADOR';
-----SELECT * FROM ROLE_SYS_PRIVS WHERE ROLE = 'C##USUARIO';