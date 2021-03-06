require 'test_helper'

describe BrBoleto::Retorno::Cnab240::Caixa do
	subject { BrBoleto::Retorno::Cnab240::Caixa.new(file) }
	let(:file) { open_fixture('retorno/cnab240/caixa.ret') }

	it "Deve ler o código do banco" do
		subject.codigo_banco.must_equal '104'
	end

	it "Deve carregar 5 pagamentos" do
		subject.pagamentos.size.must_equal 5
	end

	describe "deve setar as informações corretas para os pagamentos" do
		it "valores para o pagamento 1" do
			pagamento = subject.pagamentos[0]
			pagamento.modalidade.must_equal                             'M1'
			pagamento.agencia_com_dv.must_equal                         "030690"
			pagamento.agencia_sem_dv.must_equal                         "03069"
			pagamento.numero_conta_com_dv.must_equal                    "CEDEN1"
			pagamento.numero_conta_sem_dv.must_equal                    "CEDEN1"
			pagamento.dv_conta_e_agencia.must_equal                     nil
			pagamento.nosso_numero.must_equal                           "NOSSONUMERO0001"
			pagamento.carteira.must_equal                               "X"
			pagamento.numero_documento.must_equal                       "NUMEROCOD01"
			pagamento.data_vencimento.must_equal                        Date.parse('03/05/2016')
			pagamento.valor_titulo.must_equal                           129.39
			pagamento.banco_recebedor.must_equal                        "104"
			pagamento.agencia_recebedora_com_dv.must_equal              "030690"
			pagamento.identificacao_titulo_empresa.must_equal           ""
			pagamento.codigo_moeda.must_equal                           "09"
			pagamento.sacado_tipo_documento.must_equal                  "2"
			pagamento.sacado_documento.must_equal                       "111111111111111"
			pagamento.sacado_nome.must_equal                            "NOME DO CLIENTE 1"
			pagamento.numero_contrato.must_equal                        "0000000000"
			pagamento.valor_tarifa.must_equal                           2.69
			pagamento.motivo_ocorrencia.must_equal                      "0000000004"
			pagamento.valor_juros_multa.must_equal                      0.0
			pagamento.valor_desconto.must_equal                         0.0
			pagamento.valor_abatimento.must_equal                       0.0
			pagamento.valor_iof.must_equal                              0.0
			pagamento.valor_pago.must_equal                             129.39
			pagamento.valor_liquido.must_equal                          129.39
			pagamento.valor_outras_despesas.must_equal                 0.0
			pagamento.valor_outros_creditos.must_equal                 0.0
			pagamento.data_ocorrencia.must_equal                        Date.parse('02/05/2016')
			pagamento.data_credito.must_equal                           Date.parse('03/05/2016')
			pagamento.codigo_ocorrencia_sacado.must_equal               ""
			pagamento.data_ocorrencia_sacado.must_equal                 nil
			pagamento.valor_ocorrencia_sacado.must_equal                0.0
			pagamento.complemento_ocorrencia_sacado.must_equal          ""
			pagamento.codigo_ocorrencia_banco_correspondente.must_equal "756"
			pagamento.nosso_numero_banco_correspondente.must_equal      ""
		end
		it "valores para o pagamento 2" do
			pagamento = subject.pagamentos[1]
			pagamento.modalidade.must_equal                             'M2'
			pagamento.agencia_com_dv.must_equal                         "030690"
			pagamento.agencia_sem_dv.must_equal                         "03069"
			pagamento.numero_conta_com_dv.must_equal                    "CEDEN2"
			pagamento.numero_conta_sem_dv.must_equal                    "CEDEN2"
			pagamento.dv_conta_e_agencia.must_equal                     nil
			pagamento.nosso_numero.must_equal                           "NOSSONUMERO0002"
			pagamento.carteira.must_equal                               "X"
			pagamento.numero_documento.must_equal                       "NUMEROCOD02"
			pagamento.data_vencimento.must_equal                        Date.parse('06/05/2016')
			pagamento.valor_titulo.must_equal                           29.00
			pagamento.banco_recebedor.must_equal                        "104"
			pagamento.agencia_recebedora_com_dv.must_equal              "030690"
			pagamento.identificacao_titulo_empresa.must_equal           ""
			pagamento.codigo_moeda.must_equal                           "09"
			pagamento.sacado_tipo_documento.must_equal                  "2"
			pagamento.sacado_documento.must_equal                       "222222222222222"
			pagamento.sacado_nome.must_equal                            "NOME DO CLIENTE 2"
			pagamento.numero_contrato.must_equal                        "0000000000"
			pagamento.valor_tarifa.must_equal                           2.69
			pagamento.motivo_ocorrencia.must_equal                      "0000000004"
			pagamento.valor_juros_multa.must_equal                      0.0
			pagamento.valor_desconto.must_equal                         0.0
			pagamento.valor_abatimento.must_equal                       0.0
			pagamento.valor_iof.must_equal                              0.0
			pagamento.valor_pago.must_equal                             29.0
			pagamento.valor_liquido.must_equal                          29.0
			pagamento.valor_outras_despesas.must_equal                 0.0
			pagamento.valor_outros_creditos.must_equal                 0.0
			pagamento.data_ocorrencia.must_equal                        Date.parse('05/05/2016')
			pagamento.data_credito.must_equal                           Date.parse('06/05/2016')
			pagamento.codigo_ocorrencia_sacado.must_equal               ""
			pagamento.data_ocorrencia_sacado.must_equal                 nil
			pagamento.valor_ocorrencia_sacado.must_equal                0.0
			pagamento.complemento_ocorrencia_sacado.must_equal          ""
			pagamento.codigo_ocorrencia_banco_correspondente.must_equal "304"
			pagamento.nosso_numero_banco_correspondente.must_equal      ""
		end
		it "valores para o pagamento 3" do
			pagamento = subject.pagamentos[2]
			pagamento.modalidade.must_equal                             'M3'
			pagamento.agencia_com_dv.must_equal                         "030690"
			pagamento.agencia_sem_dv.must_equal                         "03069"
			pagamento.numero_conta_com_dv.must_equal                    "CEDEN3"
			pagamento.numero_conta_sem_dv.must_equal                    "CEDEN3"
			pagamento.dv_conta_e_agencia.must_equal                     nil
			pagamento.nosso_numero.must_equal                           "NOSSONUMERO0003"
			pagamento.carteira.must_equal                               "X"
			pagamento.numero_documento.must_equal                       "NUMEROCOD03"
			pagamento.data_vencimento.must_equal                        Date.parse('06/05/2016')
			pagamento.valor_titulo.must_equal                           89.1
			pagamento.banco_recebedor.must_equal                        "104"
			pagamento.agencia_recebedora_com_dv.must_equal              "030690"
			pagamento.identificacao_titulo_empresa.must_equal           ""
			pagamento.codigo_moeda.must_equal                           "09"
			pagamento.sacado_tipo_documento.must_equal                  "2"
			pagamento.sacado_documento.must_equal                       "333333333333333"
			pagamento.sacado_nome.must_equal                            "NOME DO CLIENTE 3"
			pagamento.numero_contrato.must_equal                        "0000000000"
			pagamento.valor_tarifa.must_equal                           2.69
			pagamento.motivo_ocorrencia.must_equal                      "0000000004"
			pagamento.valor_juros_multa.must_equal                      0.0
			pagamento.valor_desconto.must_equal                         0.0
			pagamento.valor_abatimento.must_equal                       0.0
			pagamento.valor_iof.must_equal                              0.0
			pagamento.valor_pago.must_equal                             89.1
			pagamento.valor_liquido.must_equal                          89.1
			pagamento.valor_outras_despesas.must_equal                 0.0
			pagamento.valor_outros_creditos.must_equal                 0.0
			pagamento.data_ocorrencia.must_equal                        Date.parse('05/05/2016')
			pagamento.data_credito.must_equal                           Date.parse('06/05/2016')
			pagamento.codigo_ocorrencia_sacado.must_equal               ""
			pagamento.data_ocorrencia_sacado.must_equal                 nil
			pagamento.valor_ocorrencia_sacado.must_equal                0.0
			pagamento.complemento_ocorrencia_sacado.must_equal          ""
			pagamento.codigo_ocorrencia_banco_correspondente.must_equal "100"
			pagamento.nosso_numero_banco_correspondente.must_equal      ""
		end
		it "valores para o pagamento 4" do
			pagamento = subject.pagamentos[3]
			pagamento.modalidade.must_equal                             'M4'
			pagamento.agencia_com_dv.must_equal                         "030690"
			pagamento.agencia_sem_dv.must_equal                         "03069"
			pagamento.numero_conta_com_dv.must_equal                    "CEDEN4"
			pagamento.numero_conta_sem_dv.must_equal                    "CEDEN4"
			pagamento.dv_conta_e_agencia.must_equal                     nil
			pagamento.nosso_numero.must_equal                           "NOSSONUMERO0004"
			pagamento.carteira.must_equal                               "X"
			pagamento.numero_documento.must_equal                       "NUMEROCOD04"
			pagamento.data_vencimento.must_equal                        Date.parse('06/05/2016')
			pagamento.valor_titulo.must_equal                           29.0
			pagamento.banco_recebedor.must_equal                        "104"
			pagamento.agencia_recebedora_com_dv.must_equal              "004140"
			pagamento.identificacao_titulo_empresa.must_equal           ""
			pagamento.codigo_moeda.must_equal                           "09"
			pagamento.sacado_tipo_documento.must_equal                  "1"
			pagamento.sacado_documento.must_equal                       "444444444444444"
			pagamento.sacado_nome.must_equal                            "NOME DO CLIENTE 4"
			pagamento.numero_contrato.must_equal                        "0000000000"
			pagamento.valor_tarifa.must_equal                           2.69
			pagamento.motivo_ocorrencia.must_equal                      "0000000004"
			pagamento.valor_juros_multa.must_equal                      0.0
			pagamento.valor_desconto.must_equal                         0.0
			pagamento.valor_abatimento.must_equal                       0.0
			pagamento.valor_iof.must_equal                              0.0
			pagamento.valor_pago.must_equal                             29.0
			pagamento.valor_liquido.must_equal                          29.0
			pagamento.valor_outras_despesas.must_equal                 0.0
			pagamento.valor_outros_creditos.must_equal                 0.0
			pagamento.data_ocorrencia.must_equal                        Date.parse('06/05/2016')
			pagamento.data_credito.must_equal                           nil
			pagamento.codigo_ocorrencia_sacado.must_equal               ""
			pagamento.data_ocorrencia_sacado.must_equal                 nil
			pagamento.valor_ocorrencia_sacado.must_equal                0.0
			pagamento.complemento_ocorrencia_sacado.must_equal          ""
			pagamento.codigo_ocorrencia_banco_correspondente.must_equal "104"
			pagamento.nosso_numero_banco_correspondente.must_equal      ""
		end
		it "valores para o pagamento 5" do
			pagamento = subject.pagamentos[4]
			pagamento.modalidade.must_equal                             'M5'
			pagamento.agencia_com_dv.must_equal                         "030690"
			pagamento.agencia_sem_dv.must_equal                         "03069"
			pagamento.numero_conta_com_dv.must_equal                    "CEDEN5"
			pagamento.numero_conta_sem_dv.must_equal                    "CEDEN5"
			pagamento.dv_conta_e_agencia.must_equal                     nil
			pagamento.nosso_numero.must_equal                           "NOSSONUMERO0005"
			pagamento.carteira.must_equal                               "X"
			pagamento.numero_documento.must_equal                       "NUMEROCOD05"
			pagamento.data_vencimento.must_equal                        Date.parse('06/05/2016')
			pagamento.valor_titulo.must_equal                           47.37
			pagamento.banco_recebedor.must_equal                        "104"
			pagamento.agencia_recebedora_com_dv.must_equal              "004140"
			pagamento.identificacao_titulo_empresa.must_equal           ""
			pagamento.codigo_moeda.must_equal                           "09"
			pagamento.sacado_tipo_documento.must_equal                  "1"
			pagamento.sacado_documento.must_equal                       "555555555555555"
			pagamento.sacado_nome.must_equal                            "NOME DO CLIENTE 5"
			pagamento.numero_contrato.must_equal                        "0000000000"
			pagamento.valor_tarifa.must_equal                           2.69
			pagamento.motivo_ocorrencia.must_equal                      "0000000004"
			pagamento.valor_juros_multa.must_equal                      0.0
			pagamento.valor_desconto.must_equal                         0.0
			pagamento.valor_abatimento.must_equal                       0.0
			pagamento.valor_iof.must_equal                              0.0
			pagamento.valor_pago.must_equal                             47.37
			pagamento.valor_liquido.must_equal                          47.37
			pagamento.valor_outras_despesas.must_equal                 0.0
			pagamento.valor_outros_creditos.must_equal                 0.0
			pagamento.data_ocorrencia.must_equal                        Date.parse('06/05/2016')
			pagamento.data_credito.must_equal                           nil
			pagamento.codigo_ocorrencia_sacado.must_equal               ""
			pagamento.data_ocorrencia_sacado.must_equal                 nil
			pagamento.valor_ocorrencia_sacado.must_equal                0.0
			pagamento.complemento_ocorrencia_sacado.must_equal          ""
			pagamento.codigo_ocorrencia_banco_correspondente.must_equal "104"
			pagamento.nosso_numero_banco_correspondente.must_equal      ""
		end
	end
end