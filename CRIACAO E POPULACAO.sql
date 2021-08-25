--CREATE TABLE DADOS_BRUTOS
CREATE TABLE DADOS_BRUTOS 
( ID CHAR(2) CONSTRAINT DADOS_BRUTOS_PK PRIMARY KEY, DADOS_BRUTOS VARCHAR2(200));
--CREATE TABLE MUNICIPIOS
CREATE TABLE MUNICIPIOS
( CD_MUN NUMBER CONSTRAINT MUNICIPIOS_PK PRIMARY KEY , MUNICIPIO 
VARCHAR2(50));
-- CREATE TABLE UNIDADES_FEDERACAO
CREATE TABLE UNIDADES_FEDERACAO
( CD_UF NUMBER CONSTRAINT UNIDADES_FEDERACAO_PK PRIMARY KEY, UF 
CHAR(2));
--CREATE TABLE DADOS_BRUTOS_CAPITAIS 
CREATE TABLE DADOS_BRUTOS_CAPITAIS
( CD_UF NUMBER,
CD_MUN NUMBER,
ID CHAR(2),
A_2010 NUMBER,
A_2011 NUMBER,
A_2012 NUMBER,
A_2013 NUMBER,
A_2014 NUMBER,
A_2015 NUMBER,
A_2016 NUMBER,
A_2017 NUMBER,
A_2018 NUMBER,
A_2019 NUMBER,
CONSTRAINT UF_DBC_FK FOREIGN KEY (CD_UF) REFERENCES UNIDADES_FEDERACAO 
(CD_UF) ENABLE,
CONSTRAINT MUNICIPIOS_DBC_FK FOREIGN KEY (CD_MUN) REFERENCES 
MUNICIPIOS (CD_MUN) ENABLE,
CONSTRAINT DADOS_BRUTOS_DBC_FK FOREIGN KEY (ID) REFERENCES 
DADOS_BRUTOS (ID) ENABLE
);

--INSERTS TABELA UNIDADES_FEDERACAO
insert into UNIDADES_FEDERACAO values ('15','PA'); 
insert into UNIDADES_FEDERACAO values ('23','CE'); 
insert into UNIDADES_FEDERACAO values ('26','PE'); 
insert into UNIDADES_FEDERACAO values ('29','BA'); 
insert into UNIDADES_FEDERACAO values ('31','MG'); 
insert into UNIDADES_FEDERACAO values ('33','RJ'); 
insert into UNIDADES_FEDERACAO values ('35','SP'); 
insert into UNIDADES_FEDERACAO values ('41','PR'); 
insert into UNIDADES_FEDERACAO values ('53','DF'); 

COMMIT;

--INSERTS TABELA MUNICIPIOS
insert into MUNICIPIOS values ('1501402','BEL�M'); 
insert into MUNICIPIOS values ('2927408','SALVADOR'); 
insert into MUNICIPIOS values ('2304400','FORTALEZA'); 
insert into MUNICIPIOS values ('4106902','CURITIBA');
insert into MUNICIPIOS values ('2611606','RECIFE');
insert into MUNICIPIOS values ('3106200','BELO HORIZONTE'); 
insert into MUNICIPIOS values ('5300108','BRAS�LIA'); 
insert into MUNICIPIOS values ('3550308','S�O PAULO'); 
insert into MUNICIPIOS values ('3304557','RIO DE JANEIRO'); 

COMMIT;

--INSERTS TABELA DADOS_BRUTOS
insert into DADOS_BRUTOS (ID,DADOS_BRUTOS) values ('4b','Domic�lios_1_3_pr�ximos_esta��o_TMA_network');
insert into DADOS_BRUTOS (ID,DADOS_BRUTOS) values ('5a','Domic�lios_3_mais_total'); 
insert into DADOS_BRUTOS (ID,DADOS_BRUTOS) values ('5b','Domic�lios_3_mais_pr�ximos_esta��o_TMA_network');
insert into DADOS_BRUTOS (ID,DADOS_BRUTOS) values ('6a','Mulheres_negras_total'); 
insert into DADOS_BRUTOS (ID,DADOS_BRUTOS) values ('1a','Popula��o_total');
insert into DADOS_BRUTOS (ID,DADOS_BRUTOS) values ('3b','Domic�lios_1/2_1_pr�ximos_esta��o_TMA_network');
insert into DADOS_BRUTOS (ID,DADOS_BRUTOS) values ('6b','Mulheres_negras_pr�ximas_esta��o_TMA_network');
insert into DADOS_BRUTOS (ID,DADOS_BRUTOS) values ('7b','Mulheres_respons�veis_por_domic�lio_menos_2_sal�rios_m�nimos_pr�ximas_esta��o_TM A_network');
insert into DADOS_BRUTOS (ID,DADOS_BRUTOS) values ('1b','Popula��o_pr�xima_esta��o_TMA_network');
insert into DADOS_BRUTOS (ID,DADOS_BRUTOS) values ('2b','Domic�lios_0_1/2_pr�ximos_esta��o_TMA_network');
insert into DADOS_BRUTOS (ID,DADOS_BRUTOS) values ('3a','Domic�lios_1/2_1_total'); 
insert into DADOS_BRUTOS (ID,DADOS_BRUTOS) values ('4a','Domic�lios_1_3_total');
insert into DADOS_BRUTOS (ID,DADOS_BRUTOS) values ('7a','Mulheres_respons�veis_por_domic�lio_menos_2_sal�rios_m�nimos_total');
insert into DADOS_BRUTOS (ID,DADOS_BRUTOS) values ('2a','Domic�lios_0_1/2_total'); 

COMMIT;

--INSERTS TABELA DADOS_BRUTOS_CAPITAIS 
insert into DADOS_BRUTOS_CAPITAIS values (29,2927408,'3a',238891,238891,238891,238891,238891,238891,238891,23.8891,238891,238891); 
insert into DADOS_BRUTOS_CAPITAIS values (29,2927408,'3b',0,0,0,0,3226.952435,7447.071815,7447.071815,10786.92671,10913.55024,10913.55024);
insert into DADOS_BRUTOS_CAPITAIS values (29,2927408,'4a',219189,219189,219189,219189,219189,219189,219189,219189,219189,219189);
insert into DADOS_BRUTOS_CAPITAIS values (29,2927408,'4b',0,0,0,0,6509.263867,10283.78906,10283.78906,14060.36242,14134.5179,14134.5179);
insert into DADOS_BRUTOS_CAPITAIS values (29,2927408,'5a',118791,118791,118791,118791,118791,118791,118791,118791,118791,118791);
insert into DADOS_BRUTOS_CAPITAIS values (29,2927408,'5b',0,0,0,0,4548.229131,6086.373003,6086.373003,9482.892952,9497.599286,9497.599286);
insert into DADOS_BRUTOS_CAPITAIS values (29,2927408,'6a',1123880,1123880,1123880,1123880,1123881,1123881,1123881,1123881,1123881,1123881);
insert into DADOS_BRUTOS_CAPITAIS values (29,2927408,'6b',0,0,0,0,17584.44888,36131.0165,36131.0165,52648.34251,53138.73905,53138.73905);
insert into DADOS_BRUTOS_CAPITAIS values (29,2927408,'7a',232368,232368,232368,232368,232368,232368,232368,232368,232368,232368);
insert into DADOS_BRUTOS_CAPITAIS values (29,2927408,'7b',0,0,0,0,3310.011136,7466.905328,7466.905328,10539.75542,10648.58908,10648.58908);
insert into DADOS_BRUTOS_CAPITAIS values (35,3550308,'1a',11209673,11209673,11209673,11209673,11209673,11209673,11209673,11209673,11209673,11209673);
insert into DADOS_BRUTOS_CAPITAIS values (35,3550308,'1b',1603080.403,1607421.792,1607421.792,1618237.699,1652665.287,1652665.287,1652665.287,1661795.358,1896572.602,1981294.975);
insert into DADOS_BRUTOS_CAPITAIS values (35,3550308,'2a',669801,669801,669801,669801,669801,669801,669801,669801,669801,669801);
insert into DADOS_BRUTOS_CAPITAIS values (35,3550308,'2b',69531.12795,69620.71457,69620.71457,70173.6993,71898.9413 ,71898.9413,71898.9413,72134.84453,81078.65341,85980.61157);
insert into DADOS_BRUTOS_CAPITAIS values (35,3550308,'3a',827366,827366,827366,827366,827366,827366,827366,827366,827366,827366);
insert into DADOS_BRUTOS_CAPITAIS values (35,3550308,'3b',86281.16926,86374.63109,86374.63109,87333.51291,88773.05138,88773.05138,88773.05138,88910.02733,99577.27278,106151.8524);
insert into DADOS_BRUTOS_CAPITAIS values (35,3550308,'4a',1278658,1278658,1278658,1278658,1278658,1278658,1278658,1278658,1278658,1278658);
insert into DADOS_BRUTOS_CAPITAIS values (35,3550308,'4b',196202.0792,196572.6783,196572.6783,197929.5964,200793.3317,200793.3317,200793.3317,201530.0794,227479.6393,236623.0667);
insert into DADOS_BRUTOS_CAPITAIS values (35,3550308,'5a',800482,800482,800482,800482,800482,800482,800482,800482,800482,800482);
insert into DADOS_BRUTOS_CAPITAIS values (35,3550308,'5b',225387.4163,226474.7289,226474.7289,226618.2006,233654.4046,233654.4046,233654.4046,235913.8876,278871.3107,285730.7181);
insert into DADOS_BRUTOS_CAPITAIS values (35,3550308,'6a',2134498,2134498,2134498,2134498,2134498,2134498,2134498,2134498,2134498,2134498);
insert into DADOS_BRUTOS_CAPITAIS values (35,3550308,'6b',226111.3294,226366.5977,226366.5977,228663.6207,232036.9935,232036.9935,232036.9935,232440.1589,252910.1783,267747.8118);
insert into DADOS_BRUTOS_CAPITAIS values (35,3550308,'7a',696137,696137,696137,696137,696137,696137,696137,696137,696137,696137);
insert into DADOS_BRUTOS_CAPITAIS values (35,3550308,'7b',85288.4285,85397.29432,85397.29432,85994.52554,87280.02937,87280.02937,87280.02937,87471.30173,97633.63204,102988.8238);
insert into DADOS_BRUTOS_CAPITAIS values (15,1501402,'1a',1391636,1391636,1391636,1391636,1391636,1391636,1391636,1391636,1391636,1391636);
insert into DADOS_BRUTOS_CAPITAIS values (15,1501402,'1b',0,0,0,0,0,0,0,55422.73761,112164.5156,189565.6108);
insert into DADOS_BRUTOS_CAPITAIS values (31,3106200,'5a',188555,188555,188555,188555,188555,188555,188555,188555,188555,0);
insert into DADOS_BRUTOS_CAPITAIS values (31,3106200,'5b',18479.04284,18479.04284,18479.04284,18479.04284,41334.60405,41334.60405,41334.60405,41334.60405,41334.68265,0);
insert into DADOS_BRUTOS_CAPITAIS values (31,3106200,'6a',641967,641967,641967,641967,641967,641967,641967,641967,641967,0);
insert into DADOS_BRUTOS_CAPITAIS values (31,3106200,'6b',45041.85674,45041.85674,45041.85674,45041.85674,96964.41963,96964.41963,96964.41963,96964.41963,96964.47299,0);
insert into DADOS_BRUTOS_CAPITAIS values (31,3106200,'7a',169396,169396,169396,169396,169396,169396,169396,169396,169396,0);
insert into DADOS_BRUTOS_CAPITAIS values (31,3106200,'7b',12707.23325,12707.23325,12707.23325,12707.23325,27199.75371,27199.75371,27199.75371,27199.75371,27199.76957,0);
insert into DADOS_BRUTOS_CAPITAIS values (53, 5300108, '1a', 2556511, 2556511, 2556511, 2556511, 2556511, 2556511, 2556511, 2556511, 2556511, 2556511);
insert into DADOS_BRUTOS_CAPITAIS values (53,5300108,'1b',235651.2597,235651.2597,235651.2597,235651.2597,242499.7745,242499.7745,242499.7745,242908.6303,244583.6576,244583.6576);
insert into DADOS_BRUTOS_CAPITAIS values (53,5300108,'2a',139576,139576,139576,139576,139576,139576,139576,139576,139576,139576);
insert into DADOS_BRUTOS_CAPITAIS values (53,5300108,'2b',7895.49321,7895.49321,7895.49321,7895.49321,8363.845145, 8363.845145,8363.845145,8368.895803,8447.035435,8447.035435);
insert into DADOS_BRUTOS_CAPITAIS values (53,5300108,'3a',171578,171578,171578,171578,171578,171578,171578,171578,171578,171574);
insert into DADOS_BRUTOS_CAPITAIS values (53,5300108,'3b',11977.5749,11977.5749,11977.5749,11977.5749,12565.56944, 12565.56944,12565.56944,12570.00999,12682.19205,12682.19205);
insert into DADOS_BRUTOS_CAPITAIS values (53,5300108,'4a',235310,235310,235310,235310,235310,235310,235310,235310,235310,235310);
insert into DADOS_BRUTOS_CAPITAIS values (53,5300108,'4b',21906.95337,21906.95337,21906.95337,21906.95337,22617.17231,22617.17231,22617.17231,22629.02626,22731.82641,22731.82641);
insert into DADOS_BRUTOS_CAPITAIS values (53,5300108,'5a',228372,228372,228372,228372,228372,228372,228372,228372,228372,228372);
insert into DADOS_BRUTOS_CAPITAIS values (53,5300108,'5b',36286.32873,36286.32873,36286.32873,36286.32873,36483.97643,36483.97643,36483.97643,36563.77023,36713.92453,36713.92453);
insert into DADOS_BRUTOS_CAPITAIS values (53,5300108,'6a',735051,735051,735051,735051,735051,735051,735051,735051,735051,735051);
insert into DADOS_BRUTOS_CAPITAIS values (53,5300108,'6b',59065.18081,59065.18081,59065.18081,59065.18081,61417.06699,61417.06699,61417.06699,61483.19116,61900.74081,61900.74081);
insert into DADOS_BRUTOS_CAPITAIS values (53,5300108,'7a',150295,150295,150295,150295,150295,150295,150295,150295,150295,150295);
insert into DADOS_BRUTOS_CAPITAIS values (53,5300108,'7b',10976.81349,10976.81349,10976.81349,10976.81349,11521.98148,11521.98148,11521.98148,11524.70862,11623.51577,11623.51577);
insert into DADOS_BRUTOS_CAPITAIS values (41,4106902,'1a',1744129,1744129,1744129,1744129,1744129,1744129,1744129,1744129,1744129,1744129);
insert into DADOS_BRUTOS_CAPITAIS values (41,4106902,'1b',544209.4403,544209.4403,563240.3457,563240.3457,563240.3457,563240.3457,563240.3457,563240.3457,563240.3457,563240.3457);
insert into DADOS_BRUTOS_CAPITAIS values (41,4106902,'2a',58639,58639,58639,58639,58639,58639,58639,58639,58639,58639);
insert into DADOS_BRUTOS_CAPITAIS values (41,4106902,'2b',14872.73656,14872.73656,15339.75221,15339.75221,15339.75221,15339.75221,15339.75221,15339.75221,15339.75221,15339.75221);
insert into DADOS_BRUTOS_CAPITAIS values (41,4106902,'3a',118582,118582,118582,118582,118582,118582,118582,118582,118582,118582);
insert into DADOS_BRUTOS_CAPITAIS values (41,4106902,'3b',26307.37328,26307.37328,27551.10108,27551.10108,27551.10108,27551.10108,27551.10108,27551.10108,27551.10108,27551.10108);
insert into DADOS_BRUTOS_CAPITAIS values (41,4106902,'4a',245436,245436,245436,245436,245436,245436,245436,245436,245436,245436);
insert into DADOS_BRUTOS_CAPITAIS values (41,4106902,'4b',75849.96232,75849.96232,79092.67698,79092.67698,79092.67698,79092.67698,79092.67698,79092.67698,79092.67698,79092.67698);
insert into DADOS_BRUTOS_CAPITAIS values (41,4106902,'5a',153297,153297,153297,153297,153297,153297,153297,153297,153297,153297);
insert into DADOS_BRUTOS_CAPITAIS values (41,4106902,'5b',81273.47842,81273.47842,82615.84437,82615.84437,82615.84437,82615.84437,82615.84437,82615.84437,82615.84437,82615.84437);
insert into DADOS_BRUTOS_CAPITAIS values (41,4106902,'6a',169557,169557,169557,169557,169557,169557,169557,169557,169557,169557);
insert into DADOS_BRUTOS_CAPITAIS values (41,4106902,'6b',38371.95089,38371.95089,39915.79384,39915.79384,39915.79384,39915.79384,39915.79384,39915.79384,39915.79384,39915.79384);
insert into DADOS_BRUTOS_CAPITAIS values (41,4106902,'7a',103268,103268,103268,103268,103268,103268,103268,103268,103268,103268);
insert into DADOS_BRUTOS_CAPITAIS values (41,4106902,'7b',27324.28365,27324.28365,28525.77642,28525.77642,28525.77642,28525.77642,28525.77642,28525.77642,28525.77642,28525.77642);
insert into DADOS_BRUTOS_CAPITAIS values (23,2304400,'1a',2444849,2444849,2444849,2444849,2444849,2444849,2444849,2444849,2444849,2444849);
insert into DADOS_BRUTOS_CAPITAIS values (23,2304400,'1b',0,0,0,0,0,0,0,187760.7624,253924.1514,253924.1514);
insert into DADOS_BRUTOS_CAPITAIS values (23,2304400,'2a',251334,251334,251334,251334,251334,251334,251334,251334,251334,251334);
insert into DADOS_BRUTOS_CAPITAIS values (23,2304400,'3a',207593,207593,207593,207593,207593,207593,207593,207593,207593,207593);
insert into DADOS_BRUTOS_CAPITAIS values (23,2304400,'3b',0,0,0,0,0,0,0,17033.06244,20920.57406,20920.57406);
insert into DADOS_BRUTOS_CAPITAIS values (23,2304400,'4a',167849,167849,167849,167849,167849,167849,167849,167849,167849,167849);
insert into DADOS_BRUTOS_CAPITAIS values (23,2304400,'4b',0,0,0,0,0,0,0,17755.2886,22598.77948,22598.77948);
insert into DADOS_BRUTOS_CAPITAIS values (23,2304400,'5a',84307,84307,84307,84307,84307,84307,84307,84307,84307,84307);
insert into DADOS_BRUTOS_CAPITAIS values (23,2304400,'5b',0,0,0,0,0,0,0,5947.633383,13054.34643,13054.34643);
insert into DADOS_BRUTOS_CAPITAIS values (23,2304400,'6a',789989,789989,789989,789989,789989,789989,789989,789989,789989,789989);
insert into DADOS_BRUTOS_CAPITAIS values (23,2304400,'6b',0,0,0,0,0,0,0,59052.87067,76805.69916,76805.69916);
insert into DADOS_BRUTOS_CAPITAIS values (23,2304400,'7a',199024,199024,199024,199024,199024,199024,199024,199024,199024,199024);
insert into DADOS_BRUTOS_CAPITAIS values (23,2304400,'7b',0,0,0,0,0,0,0,16146.29216,20269.29754,20269.29754);
insert into DADOS_BRUTOS_CAPITAIS values (26,2611606,'1a',1530272,1530272,1530272,1530272,1530272,1530272,1530272,1530272,1530272,1530272);
insert into DADOS_BRUTOS_CAPITAIS values (26,2611606,'1b',153146.9195,153146.9195,153146.9195,156522.1917,266032.1803,268071.2118,268071.2118,270654.6709,270654.6709,270654.6709);
insert into DADOS_BRUTOS_CAPITAIS values (26,2611606,'2a',163773,163773,163773,163773,163773,163773,163773,163773,163773,163773);
insert into DADOS_BRUTOS_CAPITAIS values (26,2611606,'2b',17148.27683,17148.27683,17148.27683,17592.85736,26676.47648,26960.94897,26960.94897,27013.88913,27013.88913,27013.88913);
insert into DADOS_BRUTOS_CAPITAIS values (26,2611606,'3a',119220,119220,119220,119220,119220,119220,119220,119220,119220,119220);
insert into DADOS_BRUTOS_CAPITAIS values (26,2611606,'3b',13457.98852,13457.98852,13457.98852,13833.12732,21872.8221,22004.48957,22004.48957,22071.38423,22071.38423,22071.38423);
insert into DADOS_BRUTOS_CAPITAIS values (26,2611606,'4a',107145,107145,107145,107145,107145,107145,107145,107145,107145,107145);
insert into DADOS_BRUTOS_CAPITAIS values (26,2611606,'4b',12447.92538,12447.92538,12447.92538,12612.0572,23250.66423,23365.79789,23365.79789,23584.36932,23584.36932,23584.36932);
insert into DADOS_BRUTOS_CAPITAIS values (26,2611606,'5a',80785,80785,80785,80785,80785,80785,80785,80785,80785,80785);
insert into DADOS_BRUTOS_CAPITAIS values (26,2611606,'5b',4391.569389,4391.569389,4391.569389,4404.713709,11734.07528,11778.68664,11778.68664,12294.25545,12294.25545,12294.25545);
insert into DADOS_BRUTOS_CAPITAIS values (26,2611606,'6a',464595,464595,464595,464595,464595,464595,464595,464595,464595,464595);
insert into DADOS_BRUTOS_CAPITAIS values (26,2611606,'6b',48055.31697,48055.31697,48055.31697,49220.87339,80178.68024,80826.82655,80826.82655,81272.789,81272.789,81272.789);
insert into DADOS_BRUTOS_CAPITAIS values (26,2611606,'7a',127110,127110,127110,127110,127110,127110,127110,127110,127110,127110);
insert into DADOS_BRUTOS_CAPITAIS values (26,2611606,'7b',13987.4734,13987.4734,13987.4734,14263.55266,23233.92308 ,23414.94324,23414.94324,23488.41763,23488.41763,23488.41763);
insert into DADOS_BRUTOS_CAPITAIS values (33,3304557,'1a',6283486,6283486,6283486,6283486,6283486,6283486,6283486,6283486,6283486,6283486);
insert into DADOS_BRUTOS_CAPITAIS values (33,3304557,'1b',1391226.43,1391226.43,1537930.555,1576999.694,1954620.559,1954620.559,2172595.398,2176129.574,2098964.99,2101569.836);
insert into DADOS_BRUTOS_CAPITAIS values (33,3304557,'2a',397563,397563,397563,397563,397563,397563,397563,397563,397563,397563);
insert into DADOS_BRUTOS_CAPITAIS values (33,3304557,'2b',69090.54347,69090.54347,77342.25858,81196.21402,100738.5521,100738.5521,111365.3793,111457.5232,104854.3566,105060.25);
insert into DADOS_BRUTOS_CAPITAIS values (33,3304557,'3a',507158,507158,507158,507158,507158,507158,507158,507158,507158,507158);
insert into DADOS_BRUTOS_CAPITAIS values (33,3304557,'3b',92896.84067,92896.84067,101733.3975,105978.9285,134179.4216,134179.4216,146831.3866,147083.4703,139496.4134,139704.6601);
insert into DADOS_BRUTOS_CAPITAIS values (33,3304557,'4a',722972,722972,722972,722972,722972,722972,722972,722972,722972,722972);
insert into DADOS_BRUTOS_CAPITAIS values (33,3304557,'4b',172562.0041,172562.0041,184355.2247,187986.9579,236824.637,236824.637,254762.5882,255444.8713,247333.1946,247658.0836);
insert into DADOS_BRUTOS_CAPITAIS values (33,3304557,'5a',518091,518091,518091,518091,518091,518091,518091,518091,518091,518091);
insert into DADOS_BRUTOS_CAPITAIS values (33,3304557,'5b',179123.4012,179123.4012,199008.4942,199417.5493,230876.7504,230876.7504,271443.8904,271988.7073,269756.3836,269890.1953);
insert into DADOS_BRUTOS_CAPITAIS values (33,3304557,'6a',1575873,1575873,1575873,1575873,1575873,1575873,1575873,1575873,1575873,1575873);
insert into DADOS_BRUTOS_CAPITAIS values (33,3304557,'6b',300274.9427,300274.9427,329867.1415,342594.2149,433979.7433,433979.7433,470213.5627,470932.0398,447194.2396,447915.4812);
insert into DADOS_BRUTOS_CAPITAIS values (33,3304557,'7a',457350,457350,457350,457350,457350,457350,457350,457350,457350,457350);
insert into DADOS_BRUTOS_CAPITAIS values (33,3304557,'7b',92745.95493,92745.95493,99974.62253,103307.5206,129886.0089,129886.0089,140917.4168,141252.754,134959.6288,135129.1713);
insert into DADOS_BRUTOS_CAPITAIS values (29,2927408,'1a',2664211,2664211,2664211,2664211,2664211,2664211,2664211,2664211,2664211,2664211);
insert into DADOS_BRUTOS_CAPITAIS values (29,2927408,'1b',0,0,0,0,47020.35018,90198.34718,90198.34718,133441.0612,134598.7569,134598.7569);
insert into DADOS_BRUTOS_CAPITAIS values (29,2927408,'2a',283437,283437,283437,283437,283437,283437,283437,283437,283437,283437);
insert into DADOS_BRUTOS_CAPITAIS values (29,2927408,'2b',0,0,0,0,2731.114572,7198.410392,7198.410392,11006.03228,11163.07404,11163.07404);

COMMIT;

--SELECT * FROM DADOS_BRUTOS;
--SELECT * FROM DADOS_BRUTOS_CAPITAIS;
--SELECT * FROM MUNICIPIOS;
--SELECT * FROM UNIDADES_FEDERACAO;
