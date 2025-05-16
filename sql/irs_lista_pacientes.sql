CREATE OR REPLACE VIEW riosaude.irs_lista_pacientes AS 
SELECT
	DISTINCT(fb.fat_paciente_rede_id),    
	fb.estabelecimento_gid,    
    fpr.cpf,
    fpr.nome,
    fpr.nome_alternativo,
    fpr.nomemae AS nome_mae,
    fpr.data_nascimento,
    fpr.datahora AS data_atualizacao
FROM dtw.fat_boletim AS fb
JOIN dtw.fat_paciente_rede AS fpr ON fpr.fat_paciente_rede_id = fb.fat_paciente_rede_id
WHERE fb.data_entrada >= '2024-01-01'
