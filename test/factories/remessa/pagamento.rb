# encoding: UTF-8

FactoryGirl.define do
	factory :remessa_pagamento, class:  BrBoleto::Remessa::Pagamento do
		nosso_numero     "123456"
		data_vencimento  { Date.tomorrow }
		valor_documento  100.123
		documento_sacado "12345678901"
		nome_sacado      "TESTE NOME DO SACADO"
		endereco_sacado  "R. TESTE DO SACADO"
		cep_sacado       "89888000"
		cidade_sacado    "PIRÁPORA"
		uf_sacado        "SC"
		bairro_sacado    "Bairro"
	end
end