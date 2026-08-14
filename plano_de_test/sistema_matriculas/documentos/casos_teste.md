CASOS DE TESTE
CT001

Requisito: RN06
Cenário: Matrícula válida com pagamento via Pix
Pré-condição: Sistema em funcionamento
Dados de entrada:

Nome: Mariana Silva
Idade: 16
Curso: Programação
Valor: 600
Forma de pagamento: Pix
Parcelas: 1
Bolsista: Não

Procedimento: Executar o cálculo da matrícula.
Resultado esperado: Valor final = R$ 540,00 (10% desconto).
Tipo: Funcional / Caixa Preta
Prioridade: Alta

CT002

Requisito: RN09
Cenário: Matrícula válida com cartão
Pré-condição: Sistema em funcionamento
Dados de entrada: Cartão, 3 parcelas.
Procedimento: Executar cálculo.
Resultado esperado: Matrícula aceita sem erros.
Tipo: Funcional
Prioridade: Alta

CT003

Requisito: RN11
Cenário: Matrícula válida com boleto
Pré-condição: Sistema em funcionamento
Dados de entrada: Boleto, 1 parcela.
Procedimento: Executar cálculo.
Resultado esperado: Matrícula aceita sem erros.
Tipo: Funcional
Prioridade: Alta

CT004

Requisito: RN07
Cenário: Estudante bolsista
Pré-condição: Sistema em funcionamento
Dados de entrada: Bolsista = true
Procedimento: Executar cálculo.
Resultado esperado: Aplicação de 5% de desconto.
Tipo: Funcional
Prioridade: Alta

CT005

Requisito: RN07
Cenário: Estudante não bolsista
Pré-condição: Sistema em funcionamento
Dados de entrada: Bolsista = false
Procedimento: Executar cálculo.
Resultado esperado: Nenhum desconto de bolsista aplicado.
Tipo: Funcional
Prioridade: Média

CT006

Requisito: RN06
Cenário: Pix com desconto de 10%
Pré-condição: Sistema em funcionamento
Dados de entrada: Valor = 1000, Pix, não bolsista
Procedimento: Executar cálculo.
Resultado esperado: Valor final = R$ 900,00.
Tipo: Unitário
Prioridade: Alta

CT007

Requisito: RN07
Cenário: Bolsista com desconto de 5%
Pré-condição: Sistema em funcionamento
Dados de entrada: Valor = 1000, cartão, bolsista
Procedimento: Executar cálculo.
Resultado esperado: Valor final = R$ 950,00.
Tipo: Unitário
Prioridade: Alta

CT008

Requisito: RN08
Cenário: Pix + bolsista
Pré-condição: Sistema em funcionamento
Dados de entrada: Valor = 1000, Pix, bolsista
Procedimento: Executar cálculo.
Resultado esperado: Valor final = R$ 850,00 (15% desconto).
Tipo: Unitário
Prioridade: Alta

CT009

Requisito: RN09
Cenário: Cartão em 3 parcelas
Pré-condição: Sistema em funcionamento
Dados de entrada: Cartão, 3 parcelas
Procedimento: Executar cálculo.
Resultado esperado: Sem acréscimo de 4%.
Tipo: Limite
Prioridade: Alta

CT010

Requisito: RN12
Cenário: Cartão em 4 parcelas
Pré-condição: Sistema em funcionamento
Dados de entrada: Valor = 1000, cartão, 4 parcelas
Procedimento: Executar cálculo.
Resultado esperado: Valor final = R$ 1040,00.
Tipo: Limite Superior
Prioridade: Alta

CT011

Requisito: RN12
Cenário: Cartão em 6 parcelas
Pré-condição: Sistema em funcionamento
Dados de entrada: Valor = 1000, cartão, 6 parcelas
Procedimento: Executar cálculo.
Resultado esperado: Valor final = R$ 1040,00.
Tipo: Limite Superior
Prioridade: Média

CT012

Requisito: RN09
Cenário: Cartão em 7 parcelas
Pré-condição: Sistema em funcionamento
Dados de entrada: Cartão, 7 parcelas
Procedimento: Executar cálculo.
Resultado esperado: Exibir erro "A quantidade de parcelas deve estar entre 1 e 6".
Tipo: Inválido
Prioridade: Alta

CT013

Requisito: RN01
Cenário: Nome vazio
Pré-condição: Sistema em funcionamento
Dados de entrada: Nome = ""
Procedimento: Executar cálculo.
Resultado esperado: Exibir erro de nome obrigatório.
Tipo: Inválido
Prioridade: Alta

CT014

Requisito: RN03
Cenário: Curso vazio
Pré-condição: Sistema em funcionamento
Dados de entrada: Curso = ""
Procedimento: Executar cálculo.
Resultado esperado: Exibir erro de curso obrigatório.
Tipo: Inválido
Prioridade: Alta

CT015

Requisito: RN02
Cenário: Estudante com 13 anos
Pré-condição: Sistema em funcionamento
Dados de entrada: Idade = 13
Procedimento: Executar cálculo.
Resultado esperado: Exibir erro de idade mínima.
Tipo: Abaixo do limite
Prioridade: Alta

CT016

Requisito: RN02
Cenário: Estudante com exatamente 14 anos
Pré-condição: Sistema em funcionamento
Dados de entrada: Idade = 14
Procedimento: Executar cálculo.
Resultado esperado: Matrícula aceita.
Tipo: Limite Inferior
Prioridade: Alta

CT017

Requisito: RN04
Cenário: Valor do curso igual a zero
Pré-condição: Sistema em funcionamento
Dados de entrada: Valor = 0
Procedimento: Executar cálculo.
Resultado esperado: Exibir erro de valor inválido.
Tipo: Limite Inferior
Prioridade: Alta

CT018

Requisito: RN04
Cenário: Valor do curso negativo
Pré-condição: Sistema em funcionamento
Dados de entrada: Valor = -100
Procedimento: Executar cálculo.
Resultado esperado: Exibir erro de valor inválido.
Tipo: Abaixo do limite
Prioridade: Alta

CT019

Requisito: RN05
Cenário: Forma de pagamento inexistente
Pré-condição: Sistema em funcionamento
Dados de entrada: Forma = Dinheiro
Procedimento: Executar cálculo.
Resultado esperado: Exibir erro de forma de pagamento inválida.
Tipo: Inválido
Prioridade: Alta

CT020

Requisito: RN10
Cenário: Pix parcelado
Pré-condição: Sistema em funcionamento
Dados de entrada: Pix, 2 parcelas
Procedimento: Executar cálculo.
Resultado esperado: Exibir erro informando que Pix não pode ser parcelado.
Tipo: Combinação de regras
Prioridade: Alta

CT021

Requisito: RN11
Cenário: Boleto parcelado
Pré-condição: Sistema em funcionamento
Dados de entrada: Boleto, 2 parcelas
Procedimento: Executar cálculo.
Resultado esperado: Exibir erro informando que boleto não pode ser parcelado.
Tipo: Combinação de regras
Prioridade: Alta

CT022

Requisito: RF09
Cenário: Verificação do arredondamento
Pré-condição: Sistema em funcionamento
Dados de entrada: Valor = 999,99; cartão; 3 parcelas
Procedimento: Executar cálculo da parcela.
Resultado esperado: Valor arredondado para duas casas decimais.
Tipo: Caixa Branca
Prioridade: Média

CT023

Requisito: RF10
Cenário: Geração do resumo da matrícula
Pré-condição: Sistema em funcionamento
Dados de entrada: Matrícula válida
Procedimento: Executar método gerarResumo().
Resultado esperado: Exibir nome, curso, forma de pagamento, parcelas, valor final e valor da parcela.
Tipo: Funcional
Prioridade: Média

CT024

Requisito: RF09
Cenário: Cálculo do valor de cada parcela
Pré-condição: Sistema em funcionamento
Dados de entrada: Valor final = R$ 1040,00; 4 parcelas
Procedimento: Executar cálculo das parcelas.
Resultado esperado: Valor da parcela = R$ 260,00.
Tipo: Unitário
Prioridade: Alta

Classificação dos dados (para a atividade)
Tipo	Casos
Válido	CT001, CT002, CT003, CT004, CT005
Inválido	CT012, CT013, CT014, CT019
Limite Inferior	CT016, CT017
Limite Superior	CT010, CT011
Abaixo do Limite	CT015, CT018
Combinação de Regras	CT008, CT020, CT021
Caixa Branca	CT022
Funcional	CT001, CT002, CT003, CT023
Unitário	CT006, CT007, CT008, CT024