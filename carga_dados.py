import os

rodada = '202011'
rodada_date = '2020-10-15'
anomes = '202712'
anosemana = '201750'
regional = '103'
tp_mun = '04'
uf = 'MG'
canal = 'D2D'
sku = '50200'
camp_acao = 'A-000000-001'
pvso_estatistica_base = '1,01'
pvso_ajuste_elasticidade_base = '0'
pvso_ajuste_canibalizacao_base = '0'
pvso_ajuste_ressaca_base = '0'
pvso_ajuste_outros_base = '-2,01'
pvso_estatistica_incr = '0'
pvso_ajuste_elasticidade_incr = '0'
pvso_ajuste_canibalizacao_incr = '0'
pvso_ajuste_ressaca_incr = '0'
pvso_ajuste_outros_incr = '0'
pvso_incr_fluxo_extra = '0'
pvso_receita = '01'
pvso_receita_desconto = '91'
x = 0
filename = "%s.csv" % sku
outdir = '/home/alessandroalmeida/Documents/'
full_path = os.path.join(outdir, "sku" + filename)

while x < 10000000:
    x = x + 1
    print(rodada, ',', rodada_date, ',', anomes, ',', anosemana, ',', regional, ',', tp_mun, ',',uf,',',canal,',', sku, ',', camp_acao,
          ',', pvso_estatistica_base, ',', pvso_ajuste_elasticidade_base, ',', pvso_ajuste_canibalizacao_base, ',',
          pvso_ajuste_ressaca_base, ',', pvso_ajuste_outros_base, ',', pvso_estatistica_incr, ',',
          pvso_ajuste_elasticidade_incr, ',', pvso_ajuste_canibalizacao_incr, ',', pvso_ajuste_ressaca_incr, ',',
          pvso_ajuste_outros_incr, ',', pvso_incr_fluxo_extra, ',', pvso_receita, ',', pvso_receita_desconto,
          file=open(full_path, 'a'), sep="")



