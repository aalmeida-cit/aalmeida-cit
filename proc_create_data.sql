declare rodada string ;
declare rodada_date string ;
declare anomes string ;
declare anosemana string ;
declare regional string ;
declare tp_num string ;
declare sky string ;
declare camp_acao string ;
declare pvso_estatistica_base string ;
declare pvso_ajuste_elasticidade_base string ;
declare pvso_ajuste_canibalizacao_base string ;
declare pvso_ajuste_ressaca_base string ;
declare pvso_ajuste_outros_base string ;
declare pvso_estatistica_incr string ;
declare pvso_ajuste_elasticidade_incr string ;
declare pvso_ajuste_canibalizacao_incr string ;
declare pvso_ajuste_ressaca_incr string ;
declare pvso_ajuste_outros_incr string ;
declare pvso_incr_fluxo_extra string ;
declare pvso_receita string ;
declare pvso_receita_desconto string ;
declare id string ;
declare nome string ;
declare numero string ;
declare qtdade string ;
declare x numeric;

set rodada = '201907';
set rodada_date = '2019-09-21';
set anomes = '202712';
set anosemana = '201750';
set regional = '102';
set tp_num = '05';
set sky = '38480';
set camp_acao = 'A-000000-000';
set pvso_estatistica_base = '1,51';
set pvso_ajuste_elasticidade_base = '0';
set pvso_ajuste_canibalizacao_base = '0';
set pvso_ajuste_ressaca_base = '0';
set pvso_ajuste_outros_base = '-0,27';
set pvso_estatistica_incr = '0';
set pvso_ajuste_elasticidade_incr = '0';
set pvso_ajuste_canibalizacao_incr = '0';
set pvso_ajuste_ressaca_incr = '0';
set pvso_ajuste_outros_incr = '0';
set pvso_incr_fluxo_extra = '0';
set pvso_receita = '36';
set pvso_receita_desconto = '26';


loop
    set x = x + 1;
    if x <= 10000 then 
        LEAVE ;
    END IF;
    INSERT sandbox-gdem-migracao.stgdem_tm1gcam_pvso(rodada,rodada_date,anomes,anosemana,regional,tp_num,sky,camp_acao,pvso_estatistica_base,pvso_ajuste_elasticidade_base,pvso_ajuste_canibalizacao_base,pvso_ajuste_ressaca_base,pvso_ajuste_outros_base,pvso_estatistica_incr,pvso_ajuste_elasticidade_incr,pvso_ajuste_canibalizacao_incr,pvso_ajuste_ressaca_incr,pvso_ajuste_outros_incr,pvso_incr_fluxo_extra,pvso_receita,pvso_receita_desconto,id,nome,numero,qtdade) values (rodada,rodada_date,anomes,anosemana,regional,tp_num,sky,camp_acao,pvso_estatistica_base,pvso_ajuste_elasticidade_base,pvso_ajuste_canibalizacao_base,pvso_ajuste_ressaca_base,pvso_ajuste_outros_base,pvso_estatistica_incr,pvso_ajuste_elasticidade_incr,pvso_ajuste_canibalizacao_incr,pvso_ajuste_ressaca_incr,pvso_ajuste_outros_incr,pvso_incr_fluxo_extra,pvso_receita,pvso_receita_desconto,id,nome,numero,qtdade);
END LOOP;
SELECT * FROM tocodata.tbl_data;
