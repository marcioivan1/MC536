#!/bin/bash

DIR="$( cd -P "$( dirname "$0" )" && pwd )"/../curriculos

for FOLDER in $( cd -P $DIR && ls -d filtered/c*); do

  COLUMS="NOME_INSTITUICAO"
  FILE="ATUACAO_PROFISSIONAL.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

  #  mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
  #  mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="NATUREZA,TIPO,TITULO_DO_TRABALHO,TITULO,NOME_DO_ORIENTANDO,NOME_DO_ORIENTADO"
  COLUMS="NATUREZA,TITULO_DO_TRABALHO,ANO,PAIS,IDIOMA,NOME_DO_ORIENTANDO"
  FILE="ORIENTACAO_EM_ANDAMENTO_DE_DOUTORADO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="NATUREZA,TIPO,TITULO_DO_TRABALHO,TITULO,NOME_DO_ORIENTANDO,NOME_DO_ORIENTADO"
  COLUMS="NATUREZA,TITULO_DO_TRABALHO,ANO,PAIS,IDIOMA,NOME_DO_ORIENTANDO"
  FILE="ORIENTACAO_EM_ANDAMENTO_DE_INICIACAO_CIENTIFICA.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="NATUREZA,TIPO,TITULO_DO_TRABALHO,TITULO,NOME_DO_ORIENTANDO,NOME_DO_ORIENTADO"
  COLUMS="NATUREZA,TITULO_DO_TRABALHO,ANO,PAIS,IDIOMA,NOME_DO_ORIENTANDO"
  FILE="ORIENTACAO_EM_ANDAMENTO_DE_MESTRADO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="NATUREZA,TIPO,TITULO_DO_TRABALHO,TITULO,NOME_DO_ORIENTANDO,NOME_DO_ORIENTADO"
  COLUMS="NATUREZA,TITULO_DO_TRABALHO,ANO,PAIS,IDIOMA,NOME_DO_ORIENTANDO"
  FILE="ORIENTACAO_EM_ANDAMENTO_DE_POS_DOUTORADO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="NATUREZA,TIPO"
  COLUMS="NATUREZA,TITULO,ANO,PAIS,IDIOMA,NOME_DO_ORIENTADO"
  FILE="ORIENTACOES_CONCLUIDAS_PARA_DOUTORADO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="NATUREZA,TIPO"
  COLUMS="NATUREZA,TITULO,ANO,PAIS,IDIOMA,NOME_DO_ORIENTADO"
  FILE="ORIENTACOES_CONCLUIDAS_PARA_MESTRADO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="NATUREZA,TIPO"
  COLUMS="NATUREZA,TITULO,ANO,PAIS,IDIOMA,NOME_DO_ORIENTADO"
  FILE="ORIENTACOES_CONCLUIDAS_PARA_POS_DOUTORADO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="NATUREZA,TIPO"
  COLUMS="NATUREZA,TITULO,ANO,PAIS,IDIOMA,NOME_DO_CANDIDATO"
  FILE="PARTICIPACAO_EM_BANCA_DE_DOUTORADO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="NATUREZA,TIPO"
  COLUMS="NATUREZA,TITULO,ANO,PAIS,IDIOMA,NOME_DO_CANDIDATO"
  FILE="PARTICIPACAO_EM_BANCA_DE_MESTRADO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="NATUREZA,SITUACAO,TITULO_DO_ARTIGO,TITULO"
  COLUMS="NATUREZA,TITULO_DO_ARTIGO,ANO_DO_ARTIGO"
  FILE="ARTIGO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="DISCIPLINA_Text,NOME"
  COLUMS="DISCIPLINA_Text,TIPO_ENSINO,NOME_CURSO,NOME_INSTITUICAO,FLAG_PERIODO,MES_INICIO,ANO_INICIO,MES_FIM,ANO_FIM"
  FILE="DISCIPLINA.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

#  COLUMS2=""
  COLUMS="NIVEL,NOME_INSTITUICAO,NOME_ORGAO,NOME_CURSO,STATUS_DO_CURSO,ANO_DE_INICIO,ANO_DE_CONCLUSAO,FLAG_BOLSA,NOME_AGENCIA,ANO_DE_OBTENCAO_DO_TITULO,TITULO_DA_DISSERTACAO_TESE,NOME_COMPLETO_DO_ORIENTADOR,TIPO_DOUTORADO"
  FILE="DOUTORADO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

  #  mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
  #  mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  #COLUMS2=""
  COLUMS="NOME_INSTITUICAO_EMPRESA,NOME_ORGAO,NOME_UNIDADE,LOGRADOURO_COMPLEMENTO,PAIS,UF,CEP,CIDADE,BAIRRO,DDD,TELEFONE,FAX,CAIXA_POSTAL,HOME_PAGE"
  FILE="ENDERECO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

  #  mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
  #  mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="PROJETO_DE_PESQUISA_ID,PROJETO_ID,NOME_DO_PROJETO,PROJETO_NOME"
  COLUMS="NOME_INSTITUICAO,NATUREZA,NOME_DO_PROJETO"
  FILE="FINANCIADOR_DO_PROJETO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f  $COLUMS $DIR/$FOLDER/$FILE  > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE  > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="TITULO_DO_TRABALHO_DE_CONCLUSAO_DE_CURSO,TITULO_TCC"
  COLUMS="NIVEL,TITULO_DO_TRABALHO_DE_CONCLUSAO_DE_CURSO,NOME_DO_ORIENTADOR,NOME_INSTITUICAO,NOME_ORGAO,NOME_CURSO,STATUS_DO_CURSO,ANO_DE_INICIO,ANO_DE_CONCLUSAO,FLAG_BOLSA,NOME_AGENCIA"
  FILE="GRADUACAO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="IDIOMA,NOME,DESCRICAO_DO_IDIOMA,DESCRICAO"
  COLUMS="IDIOMA,DESCRICAO_DO_IDIOMA,PROFICIENCIA_DE_LEITURA,PROFICIENCIA_DE_FALA,PROFICIENCIA_DE_ESCRITA,PROFICIENCIA_DE_COMPREENSAO"
  FILE="IDIOMA.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="PROJETO_DE_PESQUISA_ID,PROJETO_ID,NOME_DO_PROJETO,PROJETO_NOME"
  COLUMS="NOME_COMPLETO,NOME_PARA_CITACAO,FLAG_RESPONSAVEL,NOME_DO_PROJETO"
  FILE="INTEGRANTE_DO_PROJETO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="TITULO_DA_LINHA_DE_PESQUISA,TITULO,FLAG_LINHA_DE_PESQUISA_ATIVA,FLAG_ATIVA,OBJETIVOS_LINHA_DE_PESQUISA,OBJETIVOS"
  COLUMS="TITULO_DA_LINHA_DE_PESQUISA,FLAG_LINHA_DE_PESQUISA_ATIVA,OBJETIVOS_LINHA_DE_PESQUISA"
  FILE="LINHA_DE_PESQUISA.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

#  COLUMS2=""
  COLUMS="NIVEL,NOME_INSTITUICAO,ANO_DE_OBTENCAO_DO_TITULO,TITULO_DO_TRABALHO"
  FILE="LIVRE_DOCENCIA.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

#    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
#    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

#  COLUMS2=""
  COLUMS="NIVEL,NOME_INSTITUICAO,NOME_ORGAO,NOME_CURSO,STATUS_DO_CURSO,ANO_DE_INICIO,ANO_DE_CONCLUSAO,FLAG_BOLSA,NOME_AGENCIA,ANO_DE_OBTENCAO_DO_TITULO,TITULO_DA_DISSERTACAO_TESE,NOME_COMPLETO_DO_ORIENTADOR"
  FILE="MESTRADO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

  #  mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
  #  mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

#  COLUMS2=""
  COLUMS="NIVEL,NOME_INSTITUICAO,ANO_DE_INICIO,ANO_DE_CONCLUSAO,ANO_DE_OBTENCAO_DO_TITULO,FLAG_BOLSA,NOME_AGENCIA,STATUS_DO_ESTAGIO,STATUS_DO_CURSO,TITULO_DO_TRABALHO"
  FILE="POS_DOUTORADO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

  #  mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
#    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="NOME_DO_PREMIO_OU_TITULO,NOME,NOME_DA_ENTIDADE_PROMOTORA,ENTIDADE_PROMOTORA"
  COLUMS="NOME_DO_PREMIO_OU_TITULO,NOME_DA_ENTIDADE_PROMOTORA,ANO_DA_PREMIACAO"
  FILE="PREMIO_TITULO.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  COLUMS2="NOME_DO_PROJETO,NOME,DESCRICAO_DO_PROJETO,DESCRICAO"
  COLUMS="ANO_INICIO,ANO_FIM,NOME_DO_PROJETO,SITUACAO,NATUREZA,DESCRICAO_DO_PROJETO"
  FILE="PROJETO_DE_PESQUISA.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

    mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

  #COLUMS2=""
  COLUMS="NOME_COMPLETO,NOME_EM_CITACOES_BIBLIOGRAFICAS,NACIONALIDADE,PAIS_DE_NASCIMENTO,UF_NASCIMENTO,CIDADE_NASCIMENTO,DATA_FALECIMENTO,SIGLA_PAIS_NACIONALIDADE,PAIS_DE_NACIONALIDADE"
  FILE="DOCENTE.csv"
  if [[ -f $DIR/$FOLDER/$FILE ]]; then
    mlr --csv cut -o -f $COLUMS $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
    mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE

  #  mlr --csv rename $COLUMS2 $DIR/$FOLDER/$FILE > $DIR/$FOLDER/tmp.csv
  #  mv $DIR/$FOLDER/tmp.csv $DIR/$FOLDER/$FILE
  fi

done

exit 0
