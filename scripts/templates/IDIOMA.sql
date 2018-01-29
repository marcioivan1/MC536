LOAD DATA INFILE 'file_name' IGNORE INTO TABLE IDIOMA
    CHARACTER SET utf8
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\r\n'
    IGNORE 1 LINES
    (NOME,DESCRICAO,PROFICIENCIA_DE_LEITURA,PROFICIENCIA_DE_FALA,PROFICIENCIA_DE_ESCRITA,PROFICIENCIA_DE_COMPREENSAO)
    SET   IDIOMA_ID = NULL,
          DOCENTE_ID = id_docente;
