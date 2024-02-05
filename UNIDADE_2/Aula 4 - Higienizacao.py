import basedosdados as bd

# Para carregar o dado direto no pandas
df = bd.read_table(dataset_id='br_ibge_ppm',
table_id='efetivo_rebanhos',
billing_project_id="<aula-pratica-lp-python>")