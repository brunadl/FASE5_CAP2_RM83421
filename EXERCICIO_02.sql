--EXERCICIO 2
EXPLAIN PLAN FOR
SELECT  uf,
        municipio,
        dados_brutos,
        A_2019
FROM unidades_federacao uf JOIN dados_brutos_capitais dbc
ON (uf.cd_uf=dbc.cd_uf)
JOIN municipios mun
ON (mun.cd_mun=dbc.cd_mun)
JOIN dados_brutos db
ON (dbc.id=db.id)
WHERE A_2019 > 1000000
ORDER BY 4 DESC;

CREATE INDEX index_uf ON unidades_federacao(uf); 
EXEC DBMS_STATS.gather_table_stats(USER, 'unidades_federacao', cascade => TRUE); 

CREATE INDEX index_dbc ON dados_brutos_capitais(A_2019); 
EXEC DBMS_STATS.gather_table_stats(USER, 'dados_brutos_capitais', cascade => TRUE); 

CREATE INDEX index_mun ON municipios(municipio); 
EXEC DBMS_STATS.gather_table_stats(USER, 'municipios', cascade => TRUE); 

CREATE INDEX index_db ON dados_brutos(dados_brutos); 
EXEC DBMS_STATS.gather_table_stats(USER, 'dados_brutos', cascade => TRUE);

SELECT PLAN_TABLE_OUTPUT FROM TABLE(DBMS_XPLAN.DISPLAY());



