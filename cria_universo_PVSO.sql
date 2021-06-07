TRUNCATE TABLE `sandbox-gdem-migracao.raw_tm1_cloud.stgdem_tm1gcam_pvso`;
TRUNCATE TABLE `sandbox-gdem-migracao.raw_tm1_cloud.stgdem_tm1gcam_pvso_stage`;

INSERT INTO `sandbox-gdem-migracao.raw_tm1_cloud.stgdem_tm1gcam_pvso_stage`
WITH S AS (
            SELECT 
                M.COD_MATERIAL,
                C.* EXCEPT(sku) 
            FROM `trusted-zone.MATERIAL.TB_MATERIAL`                                    AS M
            CROSS JOIN `sandbox-gdem-migracao.raw_tm1_cloud.stgdem_tm1gcam_pvso_copy`   AS C
            WHERE
                COD_UN_MATERIAL = 'BOT'
            AND
                DES_STATUS_MATERIAL = 'Ativo'
            LIMIT 300000000
) 
SELECT 
    rodada,		
    rodada_date,		
    anomes,		
    anosemana,		
    regional,		
    tp_mun,		
    uf,		
    canal,			
    COD_MATERIAL AS sku,		
    camp_acao,		
    pvso_estatistica_base,		
    pvso_ajuste_elasticidade_base,		
    pvso_ajuste_canibalizacao_base,		
    pvso_ajuste_ressaca_base,		
    pvso_ajuste_outros_base,		
    pvso_estatistica_incr,		
    pvso_ajuste_elasticidade_incr,			
    pvso_ajuste_canibalizacao_incr,		
    pvso_ajuste_ressaca_incr,		
    pvso_ajuste_outros_incr,		
    pvso_incr_fluxo_extra,		
    pvso_receita,			
    pvso_receita_desconto
FROM S;

INSERT INTO `sandbox-gdem-migracao.raw_tm1_cloud.stgdem_tm1gcam_pvso`
SELECT * 
FROM `sandbox-gdem-migracao.raw_tm1_cloud.stgdem_tm1gcam_pvso_stage`
ORDER BY    
    sku;

