Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sajin              |
| sajinak            |
| world              |
+--------------------+
6 rows in set (0.03 sec)

mysql> use sajin;
Database changed
mysql> show tables;
+-----------------+
| Tables_in_sajin |
+-----------------+
| ak              |
+-----------------+
1 row in set (0.01 sec)

mysql> create table employees;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table employees(
    -> empid varchar(30),
    -> empname varchar(30),
    -> jobdescription varchar(30));
Query OK, 0 rows affected (0.09 sec)

mysql> insert into employees values(
    -> salary int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'int)' at line 2
mysql> alter table employees values(
    -> salary int );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'values(
salary int )' at line 1
mysql> alter table employees add column salary int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> alter table employees add column salary int;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employees;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| empid          | varchar(30) | YES  |     | NULL    |       |
| empname        | varchar(30) | YES  |     | NULL    |       |
| jobdescription | varchar(30) | YES  |     | NULL    |       |
| salary         | int         | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into employees values(1,"sajin","data scientist",1000000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employees values(2,"aaron","data scientist",1000000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employees values(3,"lijin","data analyst",2000000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(4,"sam","data engineer",3000000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(5,"ram","data pipeline engineer",200000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(6,"aurun","developer",100000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(7,"sea","front-end",10000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(8,"siva","back-end",20000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(9,"tharun","full-stack",10000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(10,"mani","data scientist",7000000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(11,"gururan","data scientist",9000000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(12,"manju","devops",1000000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(13,"silent","ml engineer",1070);
Query OK, 1 row affected (0.00 sec)

mysql> desc employees;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| empid          | varchar(30) | YES  |     | NULL    |       |
| empname        | varchar(30) | YES  |     | NULL    |       |
| jobdescription | varchar(30) | YES  |     | NULL    |       |
| salary         | int         | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> select *from employees;
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 1     | sajin   | data scientist         | 1000000 |
| 2     | aaron   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | developer              |  100000 |
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 13    | silent  | ml engineer            |    1070 |
+-------+---------+------------------------+---------+
13 rows in set (0.00 sec)

mysql> select * from employees where empname="sajin";
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 1     | sajin   | data scientist | 1000000 |
+-------+---------+----------------+---------+
1 row in set (0.00 sec)

mysql> select * from employees where empname<>="sajin";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '<>="sajin"' at line 1
mysql> select * from employees where empname<> "sajin";
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 2     | aaron   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | developer              |  100000 |
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 13    | silent  | ml engineer            |    1070 |
+-------+---------+------------------------+---------+
12 rows in set (0.00 sec)

mysql> select * from employees where salary >500000;
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 1     | sajin   | data scientist | 1000000 |
| 2     | aaron   | data scientist | 1000000 |
| 3     | lijin   | data analyst   | 2000000 |
| 4     | sam     | data engineer  | 3000000 |
| 10    | mani    | data scientist | 7000000 |
| 11    | gururan | data scientist | 9000000 |
| 12    | manju   | devops         | 1000000 |
+-------+---------+----------------+---------+
7 rows in set (0.00 sec)

mysql> select * from employees where salary <500000 and jobdescription="data scientist";
Empty set (0.00 sec)

mysql> select * from employees where salary >500000 and jobdescription="data scientist";
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 1     | sajin   | data scientist | 1000000 |
| 2     | aaron   | data scientist | 1000000 |
| 10    | mani    | data scientist | 7000000 |
| 11    | gururan | data scientist | 9000000 |
+-------+---------+----------------+---------+
4 rows in set (0.00 sec)

mysql> select * from employees where jobdescription="data scientist";
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 1     | sajin   | data scientist | 1000000 |
| 2     | aaron   | data scientist | 1000000 |
| 10    | mani    | data scientist | 7000000 |
| 11    | gururan | data scientist | 9000000 |
+-------+---------+----------------+---------+
4 rows in set (0.00 sec)

mysql> select * from employees where jobdescription="data scientist" and jobdescription="data analyst";
Empty set (0.00 sec)

mysql> select * from employees where jobdescription="data scientist" and jobdescription="devops";
Empty set (0.00 sec)

mysql> select * from employees where jobdescription="data scientist" or jobdescription="devops";
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 1     | sajin   | data scientist | 1000000 |
| 2     | aaron   | data scientist | 1000000 |
| 10    | mani    | data scientist | 7000000 |
| 11    | gururan | data scientist | 9000000 |
| 12    | manju   | devops         | 1000000 |
+-------+---------+----------------+---------+
5 rows in set (0.00 sec)

mysql> select * from employees where jobdescription="data scientist" or jobdescription="data analyst";
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 1     | sajin   | data scientist | 1000000 |
| 2     | aaron   | data scientist | 1000000 |
| 3     | lijin   | data analyst   | 2000000 |
| 10    | mani    | data scientist | 7000000 |
| 11    | gururan | data scientist | 9000000 |
+-------+---------+----------------+---------+
5 rows in set (0.00 sec)

mysql> select * from employees where jobdescription in ("data analyst","data engineer");
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 3     | lijin   | data analyst   | 2000000 |
| 4     | sam     | data engineer  | 3000000 |
+-------+---------+----------------+---------+
2 rows in set (0.00 sec)

mysql> select * from employees where jobdescription in ("data analyst","data scientist");
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 1     | sajin   | data scientist | 1000000 |
| 2     | aaron   | data scientist | 1000000 |
| 3     | lijin   | data analyst   | 2000000 |
| 10    | mani    | data scientist | 7000000 |
| 11    | gururan | data scientist | 9000000 |
+-------+---------+----------------+---------+
5 rows in set (0.00 sec)

mysql>
