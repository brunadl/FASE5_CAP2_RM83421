--EXERCICIO 5
CREATE VIEW DADOS_ANUAIS
AS SELECT  dbc.CD_UF CODIGO_UF,

        A_2019 ANO_2019,

        A_2018 ANO_2018,

        A_2017 ANO_2017,

        A_2016 ANO_2016,

        A_2015 ANO_2015,

        A_2014 ANO_2014,

        A_2013 ANO_2013,

        A_2012 ANO_2012,

        A_2011 ANO_2011,

        A_2010 ANO_2010

FROM unidades_federacao uf JOIN dados_brutos_capitais dbc
ON (uf.cd_uf=dbc.cd_uf)
WHERE dbc.CD_UF = 31;

WITH CHECK OPTION CONSTRAINT dbc.CD_UF;

DESC DADOS_ANUAIS




-----Teste
-----SELECT * FROM DADOS_ANUAIS