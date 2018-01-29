LOAD DATA INFILE 'file_name' IGNORE INTO TABLE DISCIPLINA
    CHARACTER SET utf8
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\r\n'
    IGNORE 1 LINES
    (NOME,TIPO_ENSINO,NOME_CURSO,NOME_INSTITUICAO,FLAG_PERIODO,MES_INICIO,ANO_INICIO,MES_FIM,ANO_FIM)
    SET   DISCIPLINA_ID = NULL,
          DOCENTE_ID = id_docente;
