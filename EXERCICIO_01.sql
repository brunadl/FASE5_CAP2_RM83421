--EXERCICIO 1
CREATE VIEW DADOS_MUNICIPIOS
AS SELECT uf.cd_uf               cod_unidade_federacao,

       uf                     unid_federacao,

       mun.cd_mun             cod_municipio,

       municipio              municipio,

       dbc.id                 id_dados_brutos,

       dados_brutos           dados_brutos,

       A_2010                 ano_2010,

       A_2011                 ano_2011,

       A_2012                 ano_2012,

       A_2013                 ano_2013,

       A_2014                 ano_2014,

       A_2015                 ano_2015,

       A_2016                 ano_2016,

       A_2017                 ano_2017,

       A_2018                 ano_2018,

       A_2019                 ano_2019

FROM unidades_federacao uf JOIN dados_brutos_capitais dbc
ON (uf.cd_uf=dbc.cd_uf)
JOIN municipios mun
ON (mun.cd_mun=dbc.cd_mun)
JOIN dados_brutos db
ON (dbc.id=db.id)
WHERE uf.cd_uf=35

WITH READ ONLY;

DESC DADOS_MUNICIPIOS
-- teste - SELECT * FROM DADOS_MUNICIPIOS;
-- teste - DELETE FROM DADOS_MUNICIPIOS;