DELIMITER |
CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`ESTADO_BEFORE_INSERT` BEFORE INSERT ON `ESTADO` FOR EACH ROW
BEGIN
IF NEW.idESTADO = 11 THEN
SET NEW.idREGIAO_fk = 1;
ELSEIF NEW.idESTADO = 12 THEN
SET NEW.idREGIAO_fk = 1;
ELSEIF NEW.idESTADO = 13 THEN
SET NEW.idREGIAO_fk = 1;
ELSEIF NEW.idESTADO = 14 THEN
SET NEW.idREGIAO_fk = 1;
ELSEIF NEW.idESTADO = 15 THEN
SET NEW.idREGIAO_fk = 1;
ELSEIF NEW.idESTADO = 16 THEN
SET NEW.idREGIAO_fk = 1;
ELSEIF NEW.idESTADO = 17 THEN
SET NEW.idREGIAO_fk = 1;
ELSEIF NEW.idESTADO = 21 THEN
SET NEW.idREGIAO_fk = 2;
ELSEIF NEW.idESTADO = 22 THEN
SET NEW.idREGIAO_fk = 2;
ELSEIF NEW.idESTADO = 23 THEN
SET NEW.idREGIAO_fk = 2;
ELSEIF NEW.idESTADO = 24 THEN
SET NEW.idREGIAO_fk = 2;
ELSEIF NEW.idESTADO = 25 THEN
SET NEW.idREGIAO_fk = 2;
ELSEIF NEW.idESTADO = 26 THEN
SET NEW.idREGIAO_fk = 2;
ELSEIF NEW.idESTADO = 27 THEN
SET NEW.idREGIAO_fk = 2;
ELSEIF NEW.idESTADO = 28 THEN
SET NEW.idREGIAO_fk = 2;
ELSEIF NEW.idESTADO = 29 THEN
SET NEW.idREGIAO_fk = 2;
ELSEIF NEW.idESTADO = 31 THEN
SET NEW.idREGIAO_fk = 3;
ELSEIF NEW.idESTADO = 32 THEN
SET NEW.idREGIAO_fk = 3;
ELSEIF NEW.idESTADO = 33 THEN
SET NEW.idREGIAO_fk = 3;
ELSEIF NEW.idESTADO = 35 THEN
SET NEW.idREGIAO_fk = 3;
ELSEIF NEW.idESTADO = 41 THEN
SET NEW.idREGIAO_fk = 4;
ELSEIF NEW.idESTADO = 42 THEN
SET NEW.idREGIAO_fk = 4;
ELSEIF NEW.idESTADO = 43 THEN
SET NEW.idREGIAO_fk = 4;
ELSEIF NEW.idESTADO = 50 THEN
SET NEW.idREGIAO_fk = 5;
ELSEIF NEW.idESTADO = 51 THEN
SET NEW.idREGIAO_fk = 5;
ELSEIF NEW.idESTADO = 52 THEN
SET NEW.idREGIAO_fk = 5;
ELSEIF NEW.idESTADO = 53 THEN
SET NEW.idREGIAO_fk = 5;
END IF;
END;
|
DELIMITER ;

LOAD DATA INFILE 'C:/ESCOLARIDADE_DOCENTE.csv' 
INTO TABLE mydb.grau_docente 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (TP_ESCOLARIDADE);



LOAD DATA INFILE 'C:/GRAU_ACADEMICO.csv' 
INTO TABLE mydb.nivel_cursos 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (TP_GRAU_ACADEMICO);



LOAD DATA INFILE 'C:/CO_MODALIDADE_ENSINO.csv' 
INTO TABLE mydb.modalidade_curso
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (idMODALIDADE_CURSO);


LOAD DATA INFILE 'C:/categoria_administrativa.csv'
INTO TABLE mydb.categoria_ies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (idCATEGORIA_IES);



LOAD DATA INFILE 'C:/CO_REGIAO.csv'
INTO TABLE mydb.regiao
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (idREGIAO,NO_REGIAO);


LOAD DATA INFILE 'C:/CO_UF_IES.csv'
INTO TABLE mydb.estado
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (idESTADO);


LOAD DATA INFILE 'C:/CIDADE_IES_2010.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_MUNICIPIO,idESTADO_fk,EH_CAPITAL,NO_MUNICIPIO);



LOAD DATA INFILE 'C:/CIDADE_IES_2011.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_MUNICIPIO,idESTADO_fk,EH_CAPITAL,NO_MUNICIPIO);



LOAD DATA INFILE 'C:/CIDADE_IES_2012.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_MUNICIPIO,idESTADO_fk,EH_CAPITAL,NO_MUNICIPIO);



LOAD DATA INFILE 'C:/CIDADE_IES_2013.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_MUNICIPIO,idESTADO_fk,EH_CAPITAL,NO_MUNICIPIO);



LOAD DATA INFILE 'C:/CIDADE_IES_2014.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_MUNICIPIO,idESTADO_fk,EH_CAPITAL,NO_MUNICIPIO);



LOAD DATA INFILE 'C:/CIDADE_IES_2015.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_MUNICIPIO,idESTADO_fk,EH_CAPITAL,NO_MUNICIPIO);



LOAD DATA INFILE 'C:/CIDADE_IES_2016.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_MUNICIPIO,idESTADO_fk,EH_CAPITAL,NO_MUNICIPIO);



LOAD DATA INFILE 'C:/CIDADE_IES_2017.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_MUNICIPIO,idESTADO_fk,EH_CAPITAL)
SET NO_MUNICIPIO = '2017';


use mydb;


UPDATE ESTADO SET NO_ESTADO = 'RO' WHERE idESTADO = 11;
UPDATE ESTADO SET NO_ESTADO = 'AC' WHERE idESTADO = 12;
UPDATE ESTADO SET NO_ESTADO = 'AM' WHERE idESTADO = 13; 
UPDATE ESTADO SET NO_ESTADO = 'RR' WHERE idESTADO = 14; 
UPDATE ESTADO SET NO_ESTADO = 'PA' WHERE idESTADO = 15; 
UPDATE ESTADO SET NO_ESTADO = 'AP' WHERE idESTADO = 16; 
UPDATE ESTADO SET NO_ESTADO = 'TO' WHERE idESTADO = 17; 
UPDATE ESTADO SET NO_ESTADO = 'MA' WHERE idESTADO = 21; 
UPDATE ESTADO SET NO_ESTADO = 'PI' WHERE idESTADO = 22; 
UPDATE ESTADO SET NO_ESTADO = 'CE' WHERE idESTADO = 23; 
UPDATE ESTADO SET NO_ESTADO = 'RN' WHERE idESTADO = 24; 
UPDATE ESTADO SET NO_ESTADO = 'PB' WHERE idESTADO = 25; 
UPDATE ESTADO SET NO_ESTADO = 'PE' WHERE idESTADO = 26; 
UPDATE ESTADO SET NO_ESTADO = 'AL' WHERE idESTADO = 27; 
UPDATE ESTADO SET NO_ESTADO = 'SE' WHERE idESTADO = 28; 
UPDATE ESTADO SET NO_ESTADO = 'BA' WHERE idESTADO = 29; 
UPDATE ESTADO SET NO_ESTADO = 'MG' WHERE idESTADO = 31; 
UPDATE ESTADO SET NO_ESTADO = 'ES' WHERE idESTADO = 32; 
UPDATE ESTADO SET NO_ESTADO = 'RJ' WHERE idESTADO = 33; 
UPDATE ESTADO SET NO_ESTADO = 'SP' WHERE idESTADO = 35; 
UPDATE ESTADO SET NO_ESTADO = 'PR' WHERE idESTADO = 41; 
UPDATE ESTADO SET NO_ESTADO = 'SC' WHERE idESTADO = 42; 
UPDATE ESTADO SET NO_ESTADO = 'RS' WHERE idESTADO = 43; 
UPDATE ESTADO SET NO_ESTADO = 'MS' WHERE idESTADO = 50; 
UPDATE ESTADO SET NO_ESTADO = 'MT' WHERE idESTADO = 51; 
UPDATE ESTADO SET NO_ESTADO = 'GO' WHERE idESTADO = 52; 
UPDATE ESTADO SET NO_ESTADO = 'DF' WHERE idESTADO = 53; 

select * from mydb.estado;


LOAD DATA INFILE 'C:/DM_IES_2010.csv'
IGNORE INTO TABLE mydb.ies
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (ANO_CENSO,idIES,NO_IES,idCATEGORIA_fk,TP_ORGANIZACAO_ACADEMICA,CO_MUNICIPIO_fk);

LOAD DATA INFILE 'C:/DM_IES_2011.csv'
IGNORE INTO TABLE mydb.ies
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (ANO_CENSO,idIES,NO_IES,idCATEGORIA_fk,TP_ORGANIZACAO_ACADEMICA,CO_MUNICIPIO_fk);

LOAD DATA INFILE 'C:/DM_IES_2012.csv'
IGNORE INTO TABLE mydb.ies
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (ANO_CENSO,idIES,NO_IES,idCATEGORIA_fk,TP_ORGANIZACAO_ACADEMICA,CO_MUNICIPIO_fk);

LOAD DATA INFILE 'C:/DM_IES_2013.csv'
IGNORE INTO TABLE mydb.ies
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (ANO_CENSO,idIES,NO_IES,idCATEGORIA_fk,TP_ORGANIZACAO_ACADEMICA,CO_MUNICIPIO_fk);

LOAD DATA INFILE 'C:/DM_IES_2014.csv'
IGNORE INTO TABLE mydb.ies
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (ANO_CENSO,idIES,NO_IES,idCATEGORIA_fk,TP_ORGANIZACAO_ACADEMICA,CO_MUNICIPIO_fk);

LOAD DATA INFILE 'C:/DM_IES_2015.csv'
IGNORE INTO TABLE mydb.ies
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (ANO_CENSO,idIES,NO_IES,idCATEGORIA_fk,TP_ORGANIZACAO_ACADEMICA,CO_MUNICIPIO_fk);

LOAD DATA INFILE 'C:/DM_IES_2016.csv'
IGNORE INTO TABLE mydb.ies
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (ANO_CENSO,idIES,NO_IES,idCATEGORIA_fk,TP_ORGANIZACAO_ACADEMICA,CO_MUNICIPIO_fk);

LOAD DATA INFILE 'C:/DM_IES_2017.csv'
IGNORE INTO TABLE mydb.ies
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (ANO_CENSO,idIES,NO_IES,idCATEGORIA_fk,TP_ORGANIZACAO_ACADEMICA,CO_MUNICIPIO_fk);

select ano_censo,count(NO_IES) from mydb.ies group by ano_censo;

select * from mydb.grau_docente;

UPDATE mydb.grau_docente SET DESCRICAO = 'Sem graduação' WHERE TP_ESCOLARIDADE = 1; 
UPDATE mydb.grau_docente SET DESCRICAO = 'Graduação' WHERE TP_ESCOLARIDADE = 2; 
UPDATE mydb.grau_docente SET DESCRICAO = 'Especialização' WHERE TP_ESCOLARIDADE = 3; 
UPDATE mydb.grau_docente SET DESCRICAO = 'Mestrado' WHERE TP_ESCOLARIDADE = 4; 
UPDATE mydb.grau_docente SET DESCRICAO = 'Doutorado' WHERE TP_ESCOLARIDADE = 5;

insert into mydb.regiao values(404,"CURSO A DISTANCIA");
insert into mydb.estado values(404,404,"CURSO A DISTANCIA");
insert into mydb.cidade values(404,404,404,"CURSO A DISTANCIA");

insert into mydb.nivel_cursos(TP_GRAU_ACADEMICO,DescricaoGrau) values(404,'');
insert into mydb.nivel_cursos(TP_GRAU_ACADEMICO,DescricaoGrau) values(4,'');


LOAD DATA INFILE 'C:/DOCENTE_IES_2010.csv'
IGNORE INTO TABLE mydb.docente
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_DOCENTE_IES,CO_DOCENTE,idIES_fk,TP_ESCOLARIDADE,TP_COR_RACA,TP_SEXO,TP_SITUACAO,TP_DEFICIENCIA)
SET ANO_CENSO = 2010;

LOAD DATA INFILE 'C:/DOCENTE_IES_2011.csv'
IGNORE INTO TABLE mydb.docente
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_DOCENTE_IES,CO_DOCENTE,idIES_fk,TP_ESCOLARIDADE,TP_COR_RACA,TP_SEXO,TP_SITUACAO,TP_DEFICIENCIA)
SET ANO_CENSO = 2011;

LOAD DATA INFILE 'C:/DOCENTE_IES_2012.csv'
IGNORE INTO TABLE mydb.docente
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_DOCENTE_IES,CO_DOCENTE,idIES_fk,TP_ESCOLARIDADE,TP_COR_RACA,TP_SEXO,TP_SITUACAO,TP_DEFICIENCIA)
SET ANO_CENSO = 2012;

LOAD DATA INFILE 'C:/DOCENTE_IES_2013.csv'
IGNORE INTO TABLE mydb.docente
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_DOCENTE_IES,CO_DOCENTE,idIES_fk,TP_ESCOLARIDADE,TP_COR_RACA,TP_SEXO,TP_SITUACAO,TP_DEFICIENCIA)
SET ANO_CENSO = 2013;

LOAD DATA INFILE 'C:/DOCENTE_IES_2014.csv'
IGNORE INTO TABLE mydb.docente
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_DOCENTE_IES,CO_DOCENTE,idIES_fk,TP_ESCOLARIDADE,TP_COR_RACA,TP_SEXO,TP_SITUACAO,TP_DEFICIENCIA)
SET ANO_CENSO = 2014;

LOAD DATA INFILE 'C:/DOCENTE_IES_2015.csv'
IGNORE INTO TABLE mydb.docente
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_DOCENTE_IES,CO_DOCENTE,idIES_fk,TP_ESCOLARIDADE,TP_COR_RACA,TP_SEXO,TP_SITUACAO,TP_DEFICIENCIA)
SET ANO_CENSO = 2015;

LOAD DATA INFILE 'C:/DOCENTE_IES_2016.csv'
IGNORE INTO TABLE mydb.docente
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_DOCENTE_IES,CO_DOCENTE,idIES_fk,TP_ESCOLARIDADE,TP_COR_RACA,TP_SEXO,TP_SITUACAO,TP_DEFICIENCIA)
SET ANO_CENSO = 2016;

LOAD DATA INFILE 'C:/DOCENTE_IES_2017.csv'
IGNORE INTO TABLE mydb.docente
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_DOCENTE_IES,CO_DOCENTE,idIES_fk,TP_ESCOLARIDADE,TP_COR_RACA,TP_SEXO,TP_SITUACAO,TP_DEFICIENCIA)
SET ANO_CENSO = 2017;

#--2010,2011,2012 NÃO TEM SITUACAO_CURSO---------------------------------------(valor = -1)

DELIMITER |
CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`CURSOS_BEFORE_INSERT` BEFORE INSERT ON `CURSOS` FOR EACH ROW
BEGIN
IF NEW.CO_MUNICIPIO_fk = '' THEN
SET NEW.CO_MUNICIPIO_fk = COALESCE(NEW.CO_MUNICIPIO_fk,404);
END IF;
END;
|
DELIMITER ;

LOAD DATA INFILE 'C:/CURSO_CIDADE_IES_2010.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (@CO_MUNICIPIO,@NO_MUNICIPIO,@idESTADO_fk)
SET EH_CAPITAL = -1, CO_MUNICIPIO = IF(CO_MUNICIPIO='',404,@CO_MUNICIPIO), idESTADO_fk = IF(idESTADO_fk='',404,@idESTADO_fk);

LOAD DATA INFILE 'C:/CURSO_IES_2010.csv'
IGNORE INTO TABLE mydb.cursos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_CURSO,idIES_fk,@TP_GRAU_ACADEMICO,TP_MODALIDADE_ENSINO,@CO_MUNICIPIO_fk,NO_CURSO,IN_AJUDA_DEFICIENTE,QT_MATRICULA_TOTAL,QT_CONCLUINTE_TOTAL,QT_INGRESSO_TOTAL)
SET ANO_CENSO = 2010, TP_SITUACAO = -1, CO_MUNICIPIO_fk = IF(@CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), TP_GRAU_ACADEMICO = IF(@TP_GRAU_ACADEMICO='',404,@TP_GRAU_ACADEMICO);



LOAD DATA INFILE 'C:/CURSO_CIDADE_IES_2011.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (@CO_MUNICIPIO,@idESTADO_fk,@EH_CAPITAL,@NO_MUNICIPIO)
SET CO_MUNICIPIO = IF(@CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), idESTADO_fk = IF(@idESTADO_fk='',404,@idESTADO_fk);

LOAD DATA INFILE 'C:/CURSO_IES_2011.csv'
IGNORE INTO TABLE mydb.cursos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_CURSO,idIES_fk,@TP_GRAU_ACADEMICO,TP_MODALIDADE_ENSINO,@CO_MUNICIPIO_fk,NO_CURSO,IN_AJUDA_DEFICIENTE,QT_MATRICULA_TOTAL,QT_CONCLUINTE_TOTAL,QT_INGRESSO_TOTAL)
SET ANO_CENSO = 2011, TP_SITUACAO = -1, CO_MUNICIPIO_fk = IF(CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), TP_GRAU_ACADEMICO = IF(@TP_GRAU_ACADEMICO='',404,@TP_GRAU_ACADEMICO);



LOAD DATA INFILE 'C:/CURSO_CIDADE_IES_2012.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (@CO_MUNICIPIO,@idESTADO_fk,@EH_CAPITAL,@NO_MUNICIPIO)
SET CO_MUNICIPIO = IF(@CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), idESTADO_fk = IF(@idESTADO_fk='',404,@idESTADO_fk);

LOAD DATA INFILE 'C:/CURSO_IES_2012.csv'
IGNORE INTO TABLE mydb.cursos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_CURSO,idIES_fk,@TP_GRAU_ACADEMICO,TP_MODALIDADE_ENSINO,@CO_MUNICIPIO_fk,NO_CURSO,IN_AJUDA_DEFICIENTE,QT_MATRICULA_TOTAL,QT_CONCLUINTE_TOTAL,QT_INGRESSO_TOTAL)
SET ANO_CENSO = 2012, TP_SITUACAO = -1, CO_MUNICIPIO_fk = IF(CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), TP_GRAU_ACADEMICO = IF(@TP_GRAU_ACADEMICO='',404,@TP_GRAU_ACADEMICO);



LOAD DATA INFILE 'C:/CURSO_CIDADE_IES_2013.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (@CO_MUNICIPIO,@idESTADO_fk,@EH_CAPITAL,@NO_MUNICIPIO)
SET CO_MUNICIPIO = IF(@CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), idESTADO_fk = IF(@idESTADO_fk='',404,@idESTADO_fk);

LOAD DATA INFILE 'C:/CURSO_IES_2013.csv'
IGNORE INTO TABLE mydb.cursos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_CURSO,idIES_fk,@TP_GRAU_ACADEMICO,TP_MODALIDADE_ENSINO,@CO_MUNICIPIO_fk,NO_CURSO,TP_SITUACAO,IN_AJUDA_DEFICIENTE,@QT_MATRICULA_TOTAL,@QT_CONCLUINTE_TOTAL,@QT_INGRESSO_TOTAL)
SET ANO_CENSO = 2013, CO_MUNICIPIO_fk = IF(CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), TP_GRAU_ACADEMICO = IF(@TP_GRAU_ACADEMICO='',404,@TP_GRAU_ACADEMICO), QT_MATRICULA_TOTAL = IF(QT_MATRICULA_TOTAL='',404,@QT_MATRICULA_TOTAL), QT_CONCLUINTE_TOTAL = IF(QT_CONCLUINTE_TOTAL='',404,@QT_CONCLUINTE_TOTAL), QT_INGRESSO_TOTAL = IF(QT_INGRESSO_TOTAL='',404,@QT_INGRESSO_TOTAL);



LOAD DATA INFILE 'C:/CURSO_CIDADE_IES_2014.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (@CO_MUNICIPIO,@idESTADO_fk,@EH_CAPITAL,@NO_MUNICIPIO)
SET CO_MUNICIPIO = IF(@CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), idESTADO_fk = IF(@idESTADO_fk='',404,@idESTADO_fk);

LOAD DATA INFILE 'C:/CURSO_IES_2014.csv'
IGNORE INTO TABLE mydb.cursos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_CURSO,idIES_fk,@TP_GRAU_ACADEMICO,TP_MODALIDADE_ENSINO,@CO_MUNICIPIO_fk,NO_CURSO,TP_SITUACAO,IN_AJUDA_DEFICIENTE,@QT_MATRICULA_TOTAL,@QT_CONCLUINTE_TOTAL,@QT_INGRESSO_TOTAL)
SET ANO_CENSO = 2014, CO_MUNICIPIO_fk = IF(CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), TP_GRAU_ACADEMICO = IF(@TP_GRAU_ACADEMICO='',404,@TP_GRAU_ACADEMICO), QT_MATRICULA_TOTAL = IF(QT_MATRICULA_TOTAL='',404,@QT_MATRICULA_TOTAL), QT_CONCLUINTE_TOTAL = IF(QT_CONCLUINTE_TOTAL='',404,@QT_CONCLUINTE_TOTAL), QT_INGRESSO_TOTAL = IF(QT_INGRESSO_TOTAL='',404,@QT_INGRESSO_TOTAL);



LOAD DATA INFILE 'C:/CURSO_CIDADE_IES_2015.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (@CO_MUNICIPIO,@idESTADO_fk,@EH_CAPITAL,@NO_MUNICIPIO)
SET CO_MUNICIPIO = IF(@CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), idESTADO_fk = IF(@idESTADO_fk='',404,@idESTADO_fk);

LOAD DATA INFILE 'C:/CURSO_IES_2015.csv'
IGNORE INTO TABLE mydb.cursos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_CURSO,idIES_fk,@TP_GRAU_ACADEMICO,TP_MODALIDADE_ENSINO,@CO_MUNICIPIO_fk,NO_CURSO,TP_SITUACAO,IN_AJUDA_DEFICIENTE,@QT_MATRICULA_TOTAL,@QT_CONCLUINTE_TOTAL,@QT_INGRESSO_TOTAL)
SET ANO_CENSO = 2015, CO_MUNICIPIO_fk = IF(CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), TP_GRAU_ACADEMICO = IF(@TP_GRAU_ACADEMICO='',404,@TP_GRAU_ACADEMICO), QT_MATRICULA_TOTAL = IF(QT_MATRICULA_TOTAL='',404,@QT_MATRICULA_TOTAL), QT_CONCLUINTE_TOTAL = IF(QT_CONCLUINTE_TOTAL='',404,@QT_CONCLUINTE_TOTAL), QT_INGRESSO_TOTAL = IF(QT_INGRESSO_TOTAL='',404,@QT_INGRESSO_TOTAL);



LOAD DATA INFILE 'C:/CURSO_CIDADE_IES_2016.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (@CO_MUNICIPIO,@idESTADO_fk,@EH_CAPITAL,@NO_MUNICIPIO)
SET CO_MUNICIPIO = IF(@CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), idESTADO_fk = IF(@idESTADO_fk='',404,@idESTADO_fk);

LOAD DATA INFILE 'C:/CURSO_IES_2016.csv'
IGNORE INTO TABLE mydb.cursos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_CURSO,idIES_fk,@TP_GRAU_ACADEMICO,TP_MODALIDADE_ENSINO,@CO_MUNICIPIO_fk,NO_CURSO,TP_SITUACAO,IN_AJUDA_DEFICIENTE,@QT_MATRICULA_TOTAL,@QT_CONCLUINTE_TOTAL,@QT_INGRESSO_TOTAL)
SET ANO_CENSO = 2016, CO_MUNICIPIO_fk = IF(CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), TP_GRAU_ACADEMICO = IF(@TP_GRAU_ACADEMICO='',404,@TP_GRAU_ACADEMICO), QT_MATRICULA_TOTAL = IF(QT_MATRICULA_TOTAL='',404,@QT_MATRICULA_TOTAL), QT_CONCLUINTE_TOTAL = IF(QT_CONCLUINTE_TOTAL='',404,@QT_CONCLUINTE_TOTAL), QT_INGRESSO_TOTAL = IF(QT_INGRESSO_TOTAL='',404,@QT_INGRESSO_TOTAL);



LOAD DATA INFILE 'C:/CURSO_CIDADE_IES_2017.csv'
IGNORE INTO TABLE mydb.cidade
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (@CO_MUNICIPIO,@idESTADO_fk,@EH_CAPITAL)
SET NO_MUNICIPIO = '',CO_MUNICIPIO = IF(@CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), idESTADO_fk = IF(@idESTADO_fk='',404,@idESTADO_fk);

LOAD DATA INFILE 'C:/CURSO_IES_2017.csv'
IGNORE INTO TABLE mydb.cursos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_CURSO,idIES_fk,@TP_GRAU_ACADEMICO,TP_MODALIDADE_ENSINO,@CO_MUNICIPIO_fk,NO_CURSO,TP_SITUACAO,IN_AJUDA_DEFICIENTE,@QT_MATRICULA_TOTAL,@QT_CONCLUINTE_TOTAL,@QT_INGRESSO_TOTAL)
SET ANO_CENSO = 2017, CO_MUNICIPIO_fk = IF(CO_MUNICIPIO_fk='',404,@CO_MUNICIPIO_fk), TP_GRAU_ACADEMICO = IF(@TP_GRAU_ACADEMICO='',404,@TP_GRAU_ACADEMICO), QT_MATRICULA_TOTAL = IF(QT_MATRICULA_TOTAL='',404,@QT_MATRICULA_TOTAL), QT_CONCLUINTE_TOTAL = IF(QT_CONCLUINTE_TOTAL='',404,@QT_CONCLUINTE_TOTAL), QT_INGRESSO_TOTAL = IF(QT_INGRESSO_TOTAL='',404,@QT_INGRESSO_TOTAL);

LOAD DATA INFILE 'C:/ALUNO_2010_split_01.csv'
IGNORE INTO TABLE mydb.aluno
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_ALUNO,CO_ALUNO_CURSO,@CO_CURSO_fk,@idIES_fk,@DATA_INGRESSO,idSITUACAO_ALUNO_fk,@IN_RESERVA_ENSINO_PUBLICO,@IN_RESERVA_RENDA_FAMILIAR,@IN_RESERVA_DEFICIENCIA,@IN_RESERVA_ETNICO,IN_INGRESSO_ENEM,IN_INGRESSO_VESTIBULAR,TP_COR_RACA,TP_SEXO,IN_MATRICULA,IN_CONCLUINTE,IN_INGRESSO_TOTAL,@TURNO_ALUNO)
SET ANO_CENSO = 2010, CO_CURSO_fk = IF(@CO_CURSO_fk='',404,@CO_CURSO_fk), idIES_fk = IF(@idIES_fk='',404,@idIES_fk), IN_RESERVA_ENSINO_PUBLICO = IF(@IN_RESERVA_ENSINO_PUBLICO='',404,@IN_RESERVA_ENSINO_PUBLICO), IN_RESERVA_RENDA_FAMILIAR = IF(@IN_RESERVA_RENDA_FAMILIAR='',404,@IN_RESERVA_RENDA_FAMILIAR), IN_RESERVA_DEFICIENCIA = IF(@IN_RESERVA_DEFICIENCIA='',404,@IN_RESERVA_DEFICIENCIA), IN_RESERVA_ETNICO = IF(@IN_RESERVA_ETNICO='',404,@IN_RESERVA_ETNICO), DATA_INGRESSO = STR_TO_DATE(@DATA_INGRESSO,'%d%b%Y:%T'), TURNO_ALUNO = IF(TURNO_ALUNO='',404,@TURNO_ALUNO);

LOAD DATA INFILE 'C:/ALUNO_2010_split_02.csv'
IGNORE INTO TABLE mydb.aluno
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_ALUNO,CO_ALUNO_CURSO,@CO_CURSO_fk,@idIES_fk,@DATA_INGRESSO,idSITUACAO_ALUNO_fk,@IN_RESERVA_ENSINO_PUBLICO,@IN_RESERVA_RENDA_FAMILIAR,@IN_RESERVA_DEFICIENCIA,@IN_RESERVA_ETNICO,IN_INGRESSO_ENEM,IN_INGRESSO_VESTIBULAR,TP_COR_RACA,TP_SEXO,IN_MATRICULA,IN_CONCLUINTE,IN_INGRESSO_TOTAL,@TURNO_ALUNO)
SET ANO_CENSO = 2010, CO_CURSO_fk = IF(@CO_CURSO_fk='',404,@CO_CURSO_fk), idIES_fk = IF(@idIES_fk='',404,@idIES_fk), IN_RESERVA_ENSINO_PUBLICO = IF(@IN_RESERVA_ENSINO_PUBLICO='',404,@IN_RESERVA_ENSINO_PUBLICO), IN_RESERVA_RENDA_FAMILIAR = IF(@IN_RESERVA_RENDA_FAMILIAR='',404,@IN_RESERVA_RENDA_FAMILIAR), IN_RESERVA_DEFICIENCIA = IF(@IN_RESERVA_DEFICIENCIA='',404,@IN_RESERVA_DEFICIENCIA), IN_RESERVA_ETNICO = IF(@IN_RESERVA_ETNICO='',404,@IN_RESERVA_ETNICO), DATA_INGRESSO = STR_TO_DATE(@DATA_INGRESSO,'%d%b%Y:%T'), TURNO_ALUNO = IF(TURNO_ALUNO='',404,@TURNO_ALUNO);

LOAD DATA INFILE 'C:/ALUNO_2010_split_03.csv'
IGNORE INTO TABLE mydb.aluno
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_ALUNO,CO_ALUNO_CURSO,@CO_CURSO_fk,@idIES_fk,@DATA_INGRESSO,idSITUACAO_ALUNO_fk,@IN_RESERVA_ENSINO_PUBLICO,@IN_RESERVA_RENDA_FAMILIAR,@IN_RESERVA_DEFICIENCIA,@IN_RESERVA_ETNICO,IN_INGRESSO_ENEM,IN_INGRESSO_VESTIBULAR,TP_COR_RACA,TP_SEXO,IN_MATRICULA,IN_CONCLUINTE,IN_INGRESSO_TOTAL,@TURNO_ALUNO)
SET ANO_CENSO = 2010, CO_CURSO_fk = IF(@CO_CURSO_fk='',404,@CO_CURSO_fk), idIES_fk = IF(@idIES_fk='',404,@idIES_fk), IN_RESERVA_ENSINO_PUBLICO = IF(@IN_RESERVA_ENSINO_PUBLICO='',404,@IN_RESERVA_ENSINO_PUBLICO), IN_RESERVA_RENDA_FAMILIAR = IF(@IN_RESERVA_RENDA_FAMILIAR='',404,@IN_RESERVA_RENDA_FAMILIAR), IN_RESERVA_DEFICIENCIA = IF(@IN_RESERVA_DEFICIENCIA='',404,@IN_RESERVA_DEFICIENCIA), IN_RESERVA_ETNICO = IF(@IN_RESERVA_ETNICO='',404,@IN_RESERVA_ETNICO), DATA_INGRESSO = STR_TO_DATE(@DATA_INGRESSO,'%d%b%Y:%T'), TURNO_ALUNO = IF(TURNO_ALUNO='',404,@TURNO_ALUNO);

LOAD DATA INFILE 'C:/ALUNO_2010_split_04.csv'
IGNORE INTO TABLE mydb.aluno
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (CO_ALUNO,CO_ALUNO_CURSO,@CO_CURSO_fk,@idIES_fk,@DATA_INGRESSO,idSITUACAO_ALUNO_fk,@IN_RESERVA_ENSINO_PUBLICO,@IN_RESERVA_RENDA_FAMILIAR,@IN_RESERVA_DEFICIENCIA,@IN_RESERVA_ETNICO,IN_INGRESSO_ENEM,IN_INGRESSO_VESTIBULAR,TP_COR_RACA,TP_SEXO,IN_MATRICULA,IN_CONCLUINTE,IN_INGRESSO_TOTAL,@TURNO_ALUNO)
SET ANO_CENSO = 2010, CO_CURSO_fk = IF(@CO_CURSO_fk='',404,@CO_CURSO_fk), idIES_fk = IF(@idIES_fk='',404,@idIES_fk), IN_RESERVA_ENSINO_PUBLICO = IF(@IN_RESERVA_ENSINO_PUBLICO='',404,@IN_RESERVA_ENSINO_PUBLICO), IN_RESERVA_RENDA_FAMILIAR = IF(@IN_RESERVA_RENDA_FAMILIAR='',404,@IN_RESERVA_RENDA_FAMILIAR), IN_RESERVA_DEFICIENCIA = IF(@IN_RESERVA_DEFICIENCIA='',404,@IN_RESERVA_DEFICIENCIA), IN_RESERVA_ETNICO = IF(@IN_RESERVA_ETNICO='',404,@IN_RESERVA_ETNICO), DATA_INGRESSO = STR_TO_DATE(@DATA_INGRESSO,'%d%b%Y:%T'), TURNO_ALUNO = IF(TURNO_ALUNO='',404,@TURNO_ALUNO);
