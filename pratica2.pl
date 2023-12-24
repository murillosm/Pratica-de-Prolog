%estados em ordem alfabetica
estados('Alagoas','Maceió').
estados('Amapá','Macapá').
estados('Amazonas','Manaus').
estados('Bahia','Salvador').
estados('Ceará','Fortaleza').
estados('Distrito Federal','Brasília').
estados('Espírito Santo','Vitória').
estados('Goiás','Goiânia').
estados('Maranhão','São Luís').
estados('Mato Grosso','Cuiabá').
estados('Mato Grosso do Sul','Campo Grande').
estados('Minas Gerais','Belo Horizonte').
estados('Pará','Belém').
estados('Paraíba','João Pessoa').
estados('Paraná','Curitiba').
estados('Pernambuco','Recife').
estados('Piauí','Teresina').
estados('Rio de Janeiro','Rio de Janeiro').
estados('Rio Grande do Norte','Natal').
estados('Rio Grande do Sul','Porto Alegre').
estados('Rondônia','Porto Velho').
estados('Roraima','Boa Vista').
estados('Santa Catarina','Florianópolis').
estados('São Paulo','São Paulo').
estados('Sergipe','Aracaju').
estados('Tocantins','Palmas').

capital(Estado, Capital):- estados(Estado,Capital).