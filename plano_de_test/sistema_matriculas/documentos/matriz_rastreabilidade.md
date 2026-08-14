# Matriz de Rastreabilidade

## 1. Identificação

- **Sistema:** Sistema de Matrículas em Cursos
- **Versão:** 1.0
- **Data:** 14/08/2026
- **Responsável:** Gabriela Lima

---

## 2. Matriz de Rastreabilidade

| Requisito | Descrição | Casos relacionados | Situação | Defeitos |
|---|---|---|---|---|
| RF01 | Permitir matrícula de estudante com dados válidos | CT001, CT002, CT003 | Aprovado | — |
| RF02 | Exigir nome do estudante | CT004 | Aprovado | — |
| RF03 | Exigir idade mínima de 14 anos | CT005, CT006 | Aprovado | — |
| RF04 | Exigir nome do curso | CT007 | Aprovado | — |
| RF05 | Aceitar somente valores de curso maiores que zero | CT008, CT009 | Aprovado | — |
| RN01 | Permitir pagamento via Pix | CT001, CT010 | Aprovado | — |
| RN02 | Permitir pagamento via cartão | CT002, CT011, CT012, CT013 | Aprovado | — |
| RN03 | Permitir pagamento via boleto | CT003, CT014 | Aprovado | — |
| RN04 | Aplicar desconto de 10% para pagamento via Pix | CT010 | Aprovado | — |
| RN05 | Aplicar desconto de 5% para estudante bolsista | CT015 | Aprovado | — |
| RN06 | Limitar o desconto total a 15% | CT016 | Aprovado | — |
| RN07 | Permitir matrícula de estudante não bolsista | CT017 | Aprovado | — |
| RN08 | Permitir parcelamento de 1 a 6 vezes | CT011, CT012, CT013 | Aprovado | — |
| RN09 | Aplicar acréscimo de 4% para mais de 3 parcelas | CT012, CT013 | Aprovado | — |
| RN10 | Impedir pagamento via Pix parcelado | CT018 | Aprovado | — |
| RN11 | Impedir pagamento via boleto parcelado | CT019 | Aprovado | — |
| RN12 | Impedir formas de pagamento inexistentes | CT020 | Aprovado | — |
| RN13 | Calcular corretamente o valor de cada parcela | CT021 | Aprovado | — |
| RN14 | Arredondar os valores para duas casas decimais | CT022 | Aprovado | — |
| RN15 | Gerar resumo da matrícula | CT023 | Aprovado | — |

---

## 3. Cobertura dos requisitos

A matriz foi elaborada relacionando os requisitos identificados no sistema aos respectivos casos de teste.

Cada requisito possui pelo menos um caso de teste relacionado, permitindo verificar se as funcionalidades e regras de negócio foram contempladas durante o processo de testes.

Os casos de teste também foram relacionados aos requisitos correspondentes, permitindo rastrear a origem e o objetivo de cada teste.

---

## 4. Análise da rastreabilidade

### Existe requisito sem caso de teste?

Não. Todos os requisitos identificados possuem pelo menos um caso de teste relacionado.

### Existe caso sem requisito relacionado?

Não. Todos os casos de teste foram relacionados a pelo menos um requisito funcional ou regra de negócio.

### Quais requisitos foram aprovados?

Foram considerados aprovados os requisitos cujos casos de teste apresentaram comportamento conforme o resultado esperado durante a execução.

Os requisitos aprovados estão identificados na coluna "Situação" da matriz.

### Quais requisitos foram reprovados?

Até o momento, nenhum requisito foi considerado reprovado.

Caso algum caso de teste apresente comportamento incompatível com os requisitos durante a execução, a situação deverá ser atualizada para "Reprovado" e o defeito correspondente deverá ser informado na coluna "Defeitos".

### Quais requisitos estão bloqueados?

Até o momento, nenhum requisito está bloqueado.

Um requisito deverá ser classificado como bloqueado caso exista alguma condição que impeça a execução adequada dos testes relacionados.

### Quais defeitos permanecem em aberto?

Até o momento, não existem defeitos em aberto registrados.

Caso sejam identificados defeitos durante a execução, eles deverão ser relacionados nesta matriz utilizando seus respectivos identificadores, como DF001, DF002, DF003 etc.

---

## 5. Conclusão

A matriz de rastreabilidade permite relacionar os requisitos do Sistema de Matrículas em Cursos aos casos de teste utilizados para verificar seu funcionamento.

Por meio dessa relação, é possível identificar quais requisitos foram testados, quais casos de teste estão associados a cada requisito e quais defeitos estão relacionados a possíveis falhas.

A matriz também facilita o acompanhamento da cobertura dos testes e auxilia na identificação de requisitos que eventualmente não possuam casos de teste.