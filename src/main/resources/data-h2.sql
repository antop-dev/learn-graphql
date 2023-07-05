insert into regions
values (10, 'Europe');
insert into regions
values (20, 'Americas');
insert into regions
values (30, 'Asia');
insert into regions
values (40, 'Oceania');
insert into regions
values (50, 'Africa');

insert into countries
values ('IT', 'Italy', 10);
insert into countries
values ('JP', 'Japan', 30);
insert into countries
values ('US', 'United States of America', 10);

insert into countries
values ('CA', 'Canada', 10);
insert into countries
values ('CN', 'China', 30);
insert into countries
values ('IN', 'India', 30);
insert into countries
values ('AU', 'Australia', 40);
insert into countries
values ('ZW', 'Zimbabwe', 50);

insert into countries
values ('SG', 'Singapore', 30);
insert into countries
values ('GB', 'United Kingdom of Great Britain and Northern Ireland', 10);

insert into countries
values ('FR', 'France', 10);
insert into countries
values ('DE', 'Germany', 10);
insert into countries
values ('ZM', 'Zambia', 50);
insert into countries
values ('EG', 'Egypt', 50);

insert into countries
values ('BR', 'Brazil', 20);

insert into countries
values ('CH', 'Switzerland', 10);

insert into countries
values ('NL', 'Netherlands', 10);

insert into countries
values ('MX', 'Mexico', 20);

insert into countries
values ('KW', 'Kuwait', 30);

insert into countries
values ('IL', 'Israel', 30);

insert into countries
values ('DK', 'Denmark', 10);

insert into countries
values ('ML', 'Malaysia', 50);

insert into countries
values ('NG', 'Nigeria', 50);

insert into countries
values ('AR', 'Argentina', 20);

insert into countries
values ('BE', 'Belgium', 10);

insert into locations
values (1000, '1297 Via Cola di Rie', '00989', 'Roma', NULL, 'IT');

insert into locations
values (1100, '93091 Calle della Testa', '10934', 'Venice', NULL, 'IT');

insert into locations
values (1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP');

insert into locations
values (1300, '9450 Kamiya-cho', '6823', 'Hiroshima', NULL, 'JP');

insert into locations
values (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');

insert into locations
values (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');

insert into locations
values (1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US');

insert into locations
values (1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');

insert into locations
values (1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA');

insert into locations
values (1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA');

insert into locations
values (2000, '40-5-12 Laogianggen', '190518', 'Beijing', NULL, 'CN');

insert into locations
values (2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN');

insert into locations
values (2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU');

insert into locations
values (2300, '198 Clementi North', '540198', 'Singapore', NULL, 'SG');

insert into locations
values (2400, '8204 Arthur St', NULL, 'London', NULL, 'GB');

insert into locations
values (2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'GB');

insert into locations
values (2600, '9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 'GB');

insert into locations
values (2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE');

insert into locations
values (2800, 'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR');

insert into locations
values (2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH');

insert into locations
values (3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH');

insert into locations
values (3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL');

insert into locations
values (3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal', 'MX');

insert into departments
values (10, 'Administration', 200, 1700);

insert into departments
values (20, 'Marketing', 201, 1800);

insert into departments
values (30, 'Purchasing', 114, 1700);

insert into departments
values (40, 'Human Resources', 203, 2400);

insert into departments
values (50, 'Shipping', 121, 1500);

insert into departments
values (60, 'IT', 103, 1400);

insert into departments
values (70, 'Public Relations', 204, 2700);

insert into departments
values (80, 'Sales', 145, 2500);

insert into departments
values (90, 'Executive', 100, 1700);

insert into departments
values (100, 'Finance', 108, 1700);

insert into departments
values (110, 'Accounting', 205, 1700);

insert into departments
values (120, 'Treasury', NULL, 1700);

insert into departments
values (130, 'Corporate Tax', NULL, 1700);

insert into departments
values (140, 'Control And Credit', NULL, 1700);

insert into departments
values (150, 'Shareholder Services', NULL, 1700);

insert into departments
values (160, 'Benefits', NULL, 1700);

insert into departments
values (170, 'Manufacturing', NULL, 1700);

insert into departments
values (180, 'Construction', NULL, 1700);

insert into departments
values (190, 'Contracting', NULL, 1700);

insert into departments
values (200, 'Operations', NULL, 1700);

insert into departments
values (210, 'IT Support', NULL, 1700);

insert into departments
values (220, 'NOC', NULL, 1700);

insert into departments
values (230, 'IT Helpdesk', NULL, 1700);

insert into departments
values (240, 'Government Sales', NULL, 1700);

insert into departments
values (250, 'Retail Sales', NULL, 1700);

insert into departments
values (260, 'Recruiting', NULL, 1700);

insert into departments
values (270, 'Payroll', NULL, 1700);

insert into jobs
values ('AD_PRES', 'President', 20080, 40000);

insert into jobs
values ('AD_VP', 'Administration Vice President', 15000, 30000);

insert into jobs
values ('AD_ASST', 'Administration Assistant', 3000, 6000);

insert into jobs
values ('FI_MGR', 'Finance Manager', 8200, 16000);

insert into jobs
values ('FI_ACCOUNT', 'Accountant', 4200, 9000);

insert into jobs
values ('AC_MGR', 'Accounting Manager', 8200, 16000);

insert into jobs
values ('AC_ACCOUNT', 'Public Accountant', 4200, 9000);
insert into jobs
values ('SA_MAN', 'Sales Manager', 10000, 20080);

insert into jobs
values ('SA_REP', 'Sales Representative', 6000, 12008);

insert into jobs
values ('PU_MAN', 'Purchasing Manager', 8000, 15000);

insert into jobs
values ('PU_CLERK', 'Purchasing Clerk', 2500, 5500);

insert into jobs
values ('ST_MAN', 'Stock Manager', 5500, 8500);
insert into jobs
values ('ST_CLERK', 'Stock Clerk', 2008, 5000);

insert into jobs
values ('SH_CLERK', 'Shipping Clerk', 2500, 5500);

insert into jobs
values ('IT_PROG', 'Programmer', 4000, 10000);

insert into jobs
values ('MK_MAN', 'Marketing Manager', 9000, 15000);

insert into jobs
values ('MK_REP', 'Marketing Representative', 4000, 9000);

insert into jobs
values ('HR_REP', 'Human Resources Representative', 4000, 9000);

insert into jobs
values ('PR_REP', 'Public Relations Representative', 4500, 10500);

insert into employees
values (100, 'Steven', 'King', 'SKING', '1.515.555.0100', '2013-06-17', 'AD_PRES', 24000, NULL, NULL, 90);

insert into employees
values (101, 'Neena', 'Yang', 'NYANG', '1.515.555.0101', '2015-09-21', 'AD_VP', 17000, NULL, 100, 90);

insert into employees
values (102, 'Lex', 'Garcia', 'LGARCIA', '1.515.555.0102', '2011-01-13', 'AD_VP', 17000, NULL, 100, 90);

insert into employees
values (103, 'Alexander', 'James', 'AJAMES', '1.590.555.0103', '2016-01-03', 'IT_PROG', 9000, NULL, 102, 60);

insert into employees
values (104, 'Bruce', 'Miller', 'BMILLER', '1.590.555.0104', '2017-05-21', 'IT_PROG', 6000, NULL, 103, 60);

insert into employees
values (105, 'David', 'Williams', 'DWILLIAMS', '1.590.555.0105', '2015-06-25', 'IT_PROG', 4800, NULL, 103, 60);

insert into employees
values (106
       , 'Valli'
       , 'Jackson'
       , 'VJACKSON'
       , '1.590.555.0106'
       , '2016-02-05'
       , 'IT_PROG'
       , 4800
       , NULL
       , 103
       , 60);

insert into employees
values (107
       , 'Diana'
       , 'Nguyen'
       , 'DNGUYEN'
       , '1.590.555.0107'
       , '2017-02-07'
       , 'IT_PROG'
       , 4200
       , NULL
       , 103
       , 60);

insert into employees
values (108
       , 'Nancy'
       , 'Gruenberg'
       , 'NGRUENBE'
       , '1.515.555.0108'
       , '2012-08-17'
       , 'FI_MGR'
       , 12008
       , NULL
       , 101
       , 100);

insert into employees
values (109
       , 'Daniel'
       , 'Faviet'
       , 'DFAVIET'
       , '1.515.555.0109'
       , '2012-08-16'
       , 'FI_ACCOUNT'
       , 9000
       , NULL
       , 108
       , 100);

insert into employees
values (110
       , 'John'
       , 'Chen'
       , 'JCHEN'
       , '1.515.555.0110'
       , '2015-09-28'
       , 'FI_ACCOUNT'
       , 8200
       , NULL
       , 108
       , 100);

insert into employees
values (111
       , 'Ismael'
       , 'Sciarra'
       , 'ISCIARRA'
       , '1.515.555.0111'
       , '2015-09-30'
       , 'FI_ACCOUNT'
       , 7700
       , NULL
       , 108
       , 100);

insert into employees
values (112
       , 'Jose Manuel'
       , 'Urman'
       , 'JMURMAN'
       , '1.515.555.0112'
       , '2016-03-07'
       , 'FI_ACCOUNT'
       , 7800
       , NULL
       , 108
       , 100);

insert into employees
values (113
       , 'Luis'
       , 'Popp'
       , 'LPOPP'
       , '1.515.555.0113'
       , '2017-12-07'
       , 'FI_ACCOUNT'
       , 6900
       , NULL
       , 108
       , 100);

insert into employees
values (114
       , 'Den'
       , 'Li'
       , 'DLI'
       , '1.515.555.0114'
       , '2012-12-07'
       , 'PU_MAN'
       , 11000
       , NULL
       , 100
       , 30);

insert into employees
values (115
       , 'Alexander'
       , 'Khoo'
       , 'AKHOO'
       , '1.515.555.0115'
       , '2013-05-18'
       , 'PU_CLERK'
       , 3100
       , NULL
       , 114
       , 30);

insert into employees
values (116
       , 'Shelli'
       , 'Baida'
       , 'SBAIDA'
       , '1.515.555.0116'
       , '2015-12-24'
       , 'PU_CLERK'
       , 2900
       , NULL
       , 114
       , 30);

insert into employees
values (117
       , 'Sigal'
       , 'Tobias'
       , 'STOBIAS'
       , '1.515.555.0117'
       , '2015-07-24'
       , 'PU_CLERK'
       , 2800
       , NULL
       , 114
       , 30);

insert into employees
values (118
       , 'Guy'
       , 'Himuro'
       , 'GHIMURO'
       , '1.515.555.0118'
       , '2016-11-15'
       , 'PU_CLERK'
       , 2600
       , NULL
       , 114
       , 30);

insert into employees
values (119
       , 'Karen'
       , 'Colmenares'
       , 'KCOLMENA'
       , '1.515.555.0119'
       , '2017-08-10'
       , 'PU_CLERK'
       , 2500
       , NULL
       , 114
       , 30);

insert into employees
values (120
       , 'Matthew'
       , 'Weiss'
       , 'MWEISS'
       , '1.650.555.0120'
       , '2014-07-18'
       , 'ST_MAN'
       , 8000
       , NULL
       , 100
       , 50);

insert into employees
values (121
       , 'Adam'
       , 'Fripp'
       , 'AFRIPP'
       , '1.650.555.0121'
       , '2015-04-10'
       , 'ST_MAN'
       , 8200
       , NULL
       , 100
       , 50);

insert into employees
values (122
       , 'Payam'
       , 'Kaufling'
       , 'PKAUFLIN'
       , '1.650.555.0122'
       , '2013-05-01'
       , 'ST_MAN'
       , 7900
       , NULL
       , 100
       , 50);

insert into employees
values (123
       , 'Shanta'
       , 'Vollman'
       , 'SVOLLMAN'
       , '1.650.555.0123'
       , '2015-10-10'
       , 'ST_MAN'
       , 6500
       , NULL
       , 100
       , 50);

insert into employees
values (124
       , 'Kevin'
       , 'Mourgos'
       , 'KMOURGOS'
       , '1.650.555.0124'
       , '2017-11-16'
       , 'ST_MAN'
       , 5800
       , NULL
       , 100
       , 50);

insert into employees
values (125
       , 'Julia'
       , 'Nayer'
       , 'JNAYER'
       , '1.650.555.0125'
       , '2015-07-16'
       , 'ST_CLERK'
       , 3200
       , NULL
       , 120
       , 50);

insert into employees
values (126
       , 'Irene'
       , 'Mikkilineni'
       , 'IMIKKILI'
       , '1.650.555.0126'
       , '2016-09-28'
       , 'ST_CLERK'
       , 2700
       , NULL
       , 120
       , 50);

insert into employees
values (127
       , 'James'
       , 'Landry'
       , 'JLANDRY'
       , '1.650.555.0127'
       , '2017-01-14'
       , 'ST_CLERK'
       , 2400
       , NULL
       , 120
       , 50);

insert into employees
values (128
       , 'Steven'
       , 'Markle'
       , 'SMARKLE'
       , '1.650.555.0128'
       , '2018-03-08'
       , 'ST_CLERK'
       , 2200
       , NULL
       , 120
       , 50);

insert into employees
values (129
       , 'Laura'
       , 'Bissot'
       , 'LBISSOT'
       , '1.650.555.0129'
       , '2015-08-20'
       , 'ST_CLERK'
       , 3300
       , NULL
       , 121
       , 50);

insert into employees
values (130
       , 'Mozhe'
       , 'Atkinson'
       , 'MATKINSO'
       , '1.650.555.0130'
       , '2015-10-30'
       , 'ST_CLERK'
       , 2800
       , NULL
       , 121
       , 50);

insert into employees
values (131
       , 'James'
       , 'Marlow'
       , 'JAMRLOW'
       , '1.650.555.0131'
       , '2015-02-16'
       , 'ST_CLERK'
       , 2500
       , NULL
       , 121
       , 50);

insert into employees
values (132
       , 'TJ'
       , 'Olson'
       , 'TJOLSON'
       , '1.650.555.0132'
       , '2017-04-10'
       , 'ST_CLERK'
       , 2100
       , NULL
       , 121
       , 50);

insert into employees
values (133
       , 'Jason'
       , 'Mallin'
       , 'JMALLIN'
       , '1.650.555.0133'
       , '2014-06-14'
       , 'ST_CLERK'
       , 3300
       , NULL
       , 122
       , 50);

insert into employees
values (134
       , 'Michael'
       , 'Rogers'
       , 'MROGERS'
       , '1.650.555.0134'
       , '2016-08-26'
       , 'ST_CLERK'
       , 2900
       , NULL
       , 122
       , 50);

insert into employees
values (135
       , 'Ki'
       , 'Gee'
       , 'KGEE'
       , '1.650.555.0135'
       , '2017-12-12'
       , 'ST_CLERK'
       , 2400
       , NULL
       , 122
       , 50);

insert into employees
values (136
       , 'Hazel'
       , 'Philtanker'
       , 'HPHILTAN'
       , '1.650.555.0136'
       , '2018-02-06'
       , 'ST_CLERK'
       , 2200
       , NULL
       , 122
       , 50);

insert into employees
values (137
       , 'Renske'
       , 'Ladwig'
       , 'RLADWIG'
       , '1.650.555.0137'
       , '2013-07-14'
       , 'ST_CLERK'
       , 3600
       , NULL
       , 123
       , 50);

insert into employees
values (138
       , 'Stephen'
       , 'Stiles'
       , 'SSTILES'
       , '1.650.555.0138'
       , '2015-10-26'
       , 'ST_CLERK'
       , 3200
       , NULL
       , 123
       , 50);

insert into employees
values (139
       , 'John'
       , 'Seo'
       , 'JSEO'
       , '1.650.555.0139'
       , '2016-02-12'
       , 'ST_CLERK'
       , 2700
       , NULL
       , 123
       , 50);

insert into employees
values (140
       , 'Joshua'
       , 'Patel'
       , 'JPATEL'
       , '1.650.555.0140'
       , '2016-04-06'
       , 'ST_CLERK'
       , 2500
       , NULL
       , 123
       , 50);

insert into employees
values (141
       , 'Trenna'
       , 'Rajs'
       , 'TRAJS'
       , '1.650.555.0141'
       , '2013-10-17'
       , 'ST_CLERK'
       , 3500
       , NULL
       , 124
       , 50);

insert into employees
values (142
       , 'Curtis'
       , 'Davies'
       , 'CDAVIES'
       , '1.650.555.0142'
       , '2015-01-29'
       , 'ST_CLERK'
       , 3100
       , NULL
       , 124
       , 50);

insert into employees
values (143
       , 'Randall'
       , 'Matos'
       , 'RMATOS'
       , '1.650.555.0143'
       , '2016-03-15'
       , 'ST_CLERK'
       , 2600
       , NULL
       , 124
       , 50);

insert into employees
values (144
       , 'Peter'
       , 'Vargas'
       , 'PVARGAS'
       , '1.650.555.0144'
       , '2016-07-09'
       , 'ST_CLERK'
       , 2500
       , NULL
       , 124
       , 50);

insert into employees
values (145
       , 'John'
       , 'Singh'
       , 'JSINGH'
       , '44.1632.960000'
       , '2014-10-01'
       , 'SA_MAN'
       , 14000
       , .4
       , 100
       , 80);

insert into employees
values (146
       , 'Karen'
       , 'Partners'
       , 'KPARTNER'
       , '44.1632.960001'
       , '2015-01-05'
       , 'SA_MAN'
       , 13500
       , .3
       , 100
       , 80);

insert into employees
values (147
       , 'Alberto'
       , 'Errazuriz'
       , 'AERRAZUR'
       , '44.1632.960002'
       , '2015-03-10'
       , 'SA_MAN'
       , 12000
       , .3
       , 100
       , 80);

insert into employees
values (148
       , 'Gerald'
       , 'Cambrault'
       , 'GCAMBRAU'
       , '44.1632.960003'
       , '2017-10-15'
       , 'SA_MAN'
       , 11000
       , .3
       , 100
       , 80);

insert into employees
values (149
       , 'Eleni'
       , 'Zlotkey'
       , 'EZLOTKEY'
       , '44.1632.960004'
       , '2018-01-29'
       , 'SA_MAN'
       , 10500
       , .2
       , 100
       , 80);

insert into employees
values (150
       , 'Sean'
       , 'Tucker'
       , 'STUCKER'
       , '44.1632.960005'
       , '2015-01-30'
       , 'SA_REP'
       , 10000
       , .3
       , 145
       , 80);

insert into employees
values (151
       , 'David'
       , 'Bernstein'
       , 'DBERNSTE'
       , '44.1632.960006'
       , '2015-03-24'
       , 'SA_REP'
       , 9500
       , .25
       , 145
       , 80);

insert into employees
values (152
       , 'Peter'
       , 'Hall'
       , 'PHALL'
       , '44.1632.960007'
       , '2015-08-20'
       , 'SA_REP'
       , 9000
       , .25
       , 145
       , 80);

insert into employees
values (153
       , 'Christopher'
       , 'Olsen'
       , 'COLSEN'
       , '44.1632.960008'
       , '2016-03-30'
       , 'SA_REP'
       , 8000
       , .2
       , 145
       , 80);

insert into employees
values (154
       , 'Nanette'
       , 'Cambrault'
       , 'NCAMBRAU'
       , '44.1632.960009'
       , '2016-12-09'
       , 'SA_REP'
       , 7500
       , .2
       , 145
       , 80);

insert into employees
values (155
       , 'Oliver'
       , 'Tuvault'
       , 'OTUVAULT'
       , '44.1632.960010'
       , '2017-11-23'
       , 'SA_REP'
       , 7000
       , .15
       , 145
       , 80);

insert into employees
values (156
       , 'Janette'
       , 'King'
       , 'JKING'
       , '44.1632.960011'
       , '2014-01-30'
       , 'SA_REP'
       , 10000
       , .35
       , 146
       , 80);

insert into employees
values (157
       , 'Patrick'
       , 'Sully'
       , 'PSULLY'
       , '44.1632.960012'
       , '2014-03-04'
       , 'SA_REP'
       , 9500
       , .35
       , 146
       , 80);

insert into employees
values (158
       , 'Allan'
       , 'McEwen'
       , 'AMCEWEN'
       , '44.1632.960013'
       , '2014-08-01'
       , 'SA_REP'
       , 9000
       , .35
       , 146
       , 80);

insert into employees
values (159
       , 'Lindsey'
       , 'Smith'
       , 'LSMITH'
       , '44.1632.960014'
       , '2015-03-10'
       , 'SA_REP'
       , 8000
       , .3
       , 146
       , 80);

insert into employees
values (160
       , 'Louise'
       , 'Doran'
       , 'LDORAN'
       , '44.1632.960015'
       , '2015-12-15'
       , 'SA_REP'
       , 7500
       , .3
       , 146
       , 80);

insert into employees
values (161
       , 'Sarath'
       , 'Sewall'
       , 'SSEWALL'
       , '44.1632.960016'
       , '2016-11-03'
       , 'SA_REP'
       , 7000
       , .25
       , 146
       , 80);

insert into employees
values (162
       , 'Clara'
       , 'Vishney'
       , 'CVISHNEY'
       , '44.1632.960017'
       , '2015-11-11'
       , 'SA_REP'
       , 10500
       , .25
       , 147
       , 80);

insert into employees
values (163
       , 'Danielle'
       , 'Greene'
       , 'DGREENE'
       , '44.1632.960018'
       , '2017-03-19'
       , 'SA_REP'
       , 9500
       , .15
       , 147
       , 80);

insert into employees
values (164
       , 'Mattea'
       , 'Marvins'
       , 'MMARVINS'
       , '44.1632.960019'
       , '2018-01-24'
       , 'SA_REP'
       , 7200
       , .10
       , 147
       , 80);

insert into employees
values (165
       , 'David'
       , 'Lee'
       , 'DLEE'
       , '44.1632.960020'
       , '2018-02-23'
       , 'SA_REP'
       , 6800
       , .1
       , 147
       , 80);

insert into employees
values (166
       , 'Sundar'
       , 'Ande'
       , 'SANDE'
       , '44.1632.960021'
       , '2018-03-24'
       , 'SA_REP'
       , 6400
       , .10
       , 147
       , 80);

insert into employees
values (167
       , 'Amit'
       , 'Banda'
       , 'ABANDA'
       , '44.1632.960022'
       , '2018-04-21'
       , 'SA_REP'
       , 6200
       , .10
       , 147
       , 80);

insert into employees
values (168
       , 'Lisa'
       , 'Ozer'
       , 'LOZER'
       , '44.1632.960023'
       , '2015-03-11'
       , 'SA_REP'
       , 11500
       , .25
       , 148
       , 80);

insert into employees
values (169
       , 'Harrison'
       , 'Bloom'
       , 'HBLOOM'
       , '44.1632.960024'
       , '2016-03-23'
       , 'SA_REP'
       , 10000
       , .20
       , 148
       , 80);

insert into employees
values (170
       , 'Tayler'
       , 'Fox'
       , 'TFOX'
       , '44.1632.960025'
       , '2016-01-24'
       , 'SA_REP'
       , 9600
       , .20
       , 148
       , 80);

insert into employees
values (171
       , 'William'
       , 'Smith'
       , 'WSMITH'
       , '44.1632.960026'
       , '2017-02-23'
       , 'SA_REP'
       , 7400
       , .15
       , 148
       , 80);

insert into employees
values (172
       , 'Elizabeth'
       , 'Bates'
       , 'EBATES'
       , '44.1632.960027'
       , '2017-03-24'
       , 'SA_REP'
       , 7300
       , .15
       , 148
       , 80);

insert into employees
values (173
       , 'Sundita'
       , 'Kumar'
       , 'SKUMAR'
       , '44.1632.960028'
       , '2018-04-21'
       , 'SA_REP'
       , 6100
       , .10
       , 148
       , 80);

insert into employees
values (174
       , 'Ellen'
       , 'Abel'
       , 'EABEL'
       , '44.1632.960029'
       , '2014-05-11'
       , 'SA_REP'
       , 11000
       , .30
       , 149
       , 80);

insert into employees
values (175
       , 'Alyssa'
       , 'Hutton'
       , 'AHUTTON'
       , '44.1632.960030'
       , '2015-03-19'
       , 'SA_REP'
       , 8800
       , .25
       , 149
       , 80);

insert into employees
values (176
       , 'Jonathon'
       , 'Taylor'
       , 'JTAYLOR'
       , '44.1632.960031'
       , '2016-03-24'
       , 'SA_REP'
       , 8600
       , .20
       , 149
       , 80);

insert into employees
values (177
       , 'Jack'
       , 'Livingston'
       , 'JLIVINGS'
       , '44.1632.960032'
       , '2016-04-23'
       , 'SA_REP'
       , 8400
       , .20
       , 149
       , 80);

insert into employees
values (178, 'Kimberely', 'Grant', 'KGRANT', '44.1632.960033', '2017-05-24', 'SA_REP', 7000, .15, 149, NULL);

insert into employees
values (179, 'Charles', 'Johnson', 'CJOHNSON', '44.1632.960034', '2018-01-04', 'SA_REP', 6200, .10, 149, 80);

insert into employees
values (180, 'Winston', 'Taylor', 'WTAYLOR', '1.650.555.0145', '2016-01-24', 'SH_CLERK', 3200, NULL, 120, 50);

insert into employees
values (181, 'Jean', 'Fleaur', 'JFLEAUR', '1.650.555.0146', '2016-02-23', 'SH_CLERK', 3100, NULL, 120, 50);

insert into employees
values (182, 'Martha', 'Sullivan', 'MSULLIVA', '1.650.555.0147', '2017-06-21', 'SH_CLERK', 2500, NULL, 120, 50);

insert into employees
values (183, 'Girard', 'Geoni', 'GGEONI', '1.650.555.0148', '2018-02-03', 'SH_CLERK', 2800, NULL, 120, 50);

insert into employees
values (184, 'Nandita', 'Sarchand', 'NSARCHAN', '1.650.555.0149', '2014-01-27', 'SH_CLERK', 4200, NULL, 121, 50);

insert into employees
values (185, 'Alexis', 'Bull', 'ABULL', '1.650.555.0150', '2015-02-20', 'SH_CLERK', 4100, NULL, 121, 50);

insert into employees
values (186, 'Julia', 'Dellinger', 'JDELLING', '1.650.555.0151', '2016-06-24', 'SH_CLERK', 3400, NULL, 121, 50);

insert into employees
values (187, 'Anthony', 'Cabrio', 'ACABRIO', '1.650.555.0152', '2017-02-07', 'SH_CLERK', 3000, NULL, 121, 50);

insert into employees
values (188, 'Kelly', 'Chung', 'KCHUNG', '1.650.555.0153', '2015-06-14', 'SH_CLERK', 3800, NULL, 122, 50);

insert into employees
values (189, 'Jennifer', 'Dilly', 'JDILLY', '1.650.555.0154', '2015-08-13', 'SH_CLERK', 3600, NULL, 122, 50);

insert into employees
values (190, 'Timothy', 'Venzl', 'TVENZL', '1.650.555.0155', '2016-07-11', 'SH_CLERK', 2900, NULL, 122, 50);

insert into employees
values (191, 'Randall', 'Perkins', 'RPERKINS', '1.650.555.0156', '2017-12-19', 'SH_CLERK', 2500, NULL, 122, 50);

insert into employees
values (192, 'Sarah', 'Bell', 'SBELL', '1.650.555.0157', '2014-02-04', 'SH_CLERK', 4000, NULL, 123, 50);

insert into employees
values (193, 'Britney', 'Everett', 'BEVERETT', '1.650.555.0158', '2015-03-03', 'SH_CLERK', 3900, NULL, 123, 50);

insert into employees
values (194, 'Samuel', 'McLeod', 'SMCLEOD', '1.650.555.0159', '2016-07-01', 'SH_CLERK', 3200, NULL, 123, 50);

insert into employees
values (195, 'Vance', 'Jones', 'VJONES', '1.650.555.0160', '2017-03-17', 'SH_CLERK', 2800, NULL, 123, 50);

insert into employees
values (196, 'Alana', 'Walsh', 'AWALSH', '1.650.555.0161', '2016-04-24', 'SH_CLERK', 3100, NULL, 124, 50);

insert into employees
values (197, 'Kevin', 'Feeney', 'KFEENEY', '1.650.555.0162', '2016-05-23', 'SH_CLERK', 3000, NULL, 124, 50);

insert into employees
values (198, 'Donald', 'OConnell', 'DOCONNEL', '1.650.555.0163', '2017-06-21', 'SH_CLERK', 2600, NULL, 124, 50);

insert into employees
values (199, 'Douglas', 'Grant', 'DGRANT', '1.650.555.0164', '2018-01-13', 'SH_CLERK', 2600, NULL, 124, 50);

insert into employees
values (200, 'Jennifer', 'Whalen', 'JWHALEN', '1.515.555.0165', '2013-09-17', 'AD_ASST', 4400, NULL, 101, 10);

insert into employees
values (201, 'Michael', 'Martinez', 'MMARTINE', '1.515.555.0166', '2014-02-17', 'MK_MAN', 13000, NULL, 100, 20);

insert into employees
values (202, 'Pat', 'Davis', 'PDAVIS', '1.603.555.0167', '2015-08-17', 'MK_REP', 6000, NULL, 201, 20);

insert into employees
values (203, 'Susan', 'Jacobs', 'SJACOBS', '1.515.555.0168', '2012-06-07', 'HR_REP', 6500, NULL, 101, 40);

insert into employees
values (204, 'Hermann', 'Brown', 'HBROWN', '1.515.555.0169', '2012-06-07', 'PR_REP', 10000, NULL, 101, 70);

insert into employees
values (205, 'Shelley', 'Higgins', 'SHIGGINS', '1.515.555.0170', '2012-06-07', 'AC_MGR', 12008, NULL, 101, 110);

insert into employees
values (206, 'William', 'Gietz', 'WGIETZ', '1.515.555.0171', '2012-06-07', 'AC_ACCOUNT', 8300, NULL, 205, 110);

insert into job_history
values (102, '2011-01-13', '2016-07-24', 'IT_PROG', 60);

insert into job_history
values (101, '2007-09-21', '2011-10-27', 'AC_ACCOUNT', 110);

insert into job_history
values (101, '2011-10-28', '2015-03-15', 'AC_MGR', 110);

insert into job_history
values (201, '2014-02-17', '2017-12-19', 'MK_REP', 20);

insert into job_history
values (114, '2016-03-24', '2017-12-31', 'ST_CLERK', 50);

insert into job_history
values (122, '2017-01-01', '2017-12-31', 'ST_CLERK', 50);

insert into job_history
values (200, '2005-09-17', '2011-06-17', 'AD_ASST', 90);

insert into job_history
values (176, '2016-03-24', '2016-12-31', 'SA_REP', 80);

insert into job_history
values (176, '2017-01-01', '2017-12-31', 'SA_MAN', 80);

insert into job_history
values (200, '2012-07-01', '2016-12-31', 'AC_ACCOUNT', 90);

commit;
