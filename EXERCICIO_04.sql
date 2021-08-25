--EXERCICIO 4
EXPLAIN PLAN FOR
SELECT  uf,
        municipio,
        dados_brutos,
        A_2018
FROM unidades_federacao uf JOIN dados_brutos_capitais dbc
ON (uf.cd_uf=dbc.cd_uf)
JOIN municipios mun
ON (mun.cd_mun=dbc.cd_mun)
JOIN dados_brutos db
ON (dbc.id=db.id)
--where A_2018 between 50000 and 90000
AND LOWER(municipio) = 'curitiba';

CREATE INDEX idx_uf ON unidades_federacao(uf); 
EXEC DBMS_STATS.gather_table_stats(USER, 'unidades_federacao', cascade => TRUE); 

CREATE INDEX idx_dbc ON dados_brutos_capitais(A_2018); 
EXEC DBMS_STATS.gather_table_stats(USER, 'dados_brutos_capitais', cascade => TRUE); 

CREATE INDEX idx_mun ON municipios(municipio); 
EXEC DBMS_STATS.gather_table_stats(USER, 'municipios', cascade => TRUE); 

CREATE INDEX idx_db ON dados_brutos(dados_brutos); 
EXEC DBMS_STATS.gather_table_stats(USER, 'dados_brutos', cascade => TRUE);

SELECT PLAN_TABLE_OUTPUT FROM TABLE(DBMS_XPLAN.DISPLAY());
