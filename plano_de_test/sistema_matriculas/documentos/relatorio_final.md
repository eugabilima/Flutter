# Relatório Final de Testes

## 1. Identificação

- **Sistema:** Sistema de Matrículas em Cursos
- **Versão:** 1.0
- **Grupo:** Equipe de Qualidade de Software
- **Responsável pelo documento:** Gabriela Lima
- **Data de início:** 14/08/2026
- **Período de execução:** 14/08/2026
- **Ambiente:** Visual Studio Code / Dart
- **Pacote de testes:** test

---

# 2. Resumo da execução

## 2.1 Casos de teste

- **Quantidade de casos planejados:** 23
- **Quantidade de casos executados:** A preencher após a execução final
- **Quantidade de casos aprovados:** A preencher
- **Quantidade de casos reprovados:** A preencher
- **Quantidade de casos bloqueados:** A preencher
- **Quantidade de casos não executados:** A preencher

Os resultados apresentados neste relatório devem ser baseados no arquivo `registro_execucao.md`.

---

# 3. Defeitos

## 3.1 Defeitos encontrados

Os defeitos identificados durante a execução dos testes foram registrados no arquivo `relatorio_defeitos.md`.

| ID | Descrição | Severidade | Prioridade | Status |
|---|---|---|---|---|
| — | Nenhum defeito confirmado até o momento | — | — | — |

Caso novos defeitos sejam identificados, eles deverão ser adicionados a esta tabela.

## 3.2 Defeitos corrigidos

Até o momento, não foram registradas correções de defeitos.

Caso existam defeitos corrigidos, eles deverão ser registrados nesta seção.

## 3.3 Defeitos reabertos

Até o momento, nenhum defeito foi reaberto.

## 3.4 Defeitos em aberto

Até o momento, não existem defeitos em aberto registrados.

---

# 4. Cobertura

## 4.1 Requisitos com casos de teste

Os requisitos funcionais e as regras de negócio identificados no sistema foram relacionados aos casos de teste por meio da matriz de rastreabilidade.

A matriz está disponível em:

`documentos/matriz_rastreabilidade.md`

## 4.2 Requisitos sem casos de teste

Até o momento, não foram identificados requisitos sem casos de teste relacionados.

## 4.3 Funcionalidades verificadas

Foram planejados testes para verificar:

- Cadastro de matrícula;
- Validação do nome do estudante;
- Validação da idade;
- Validação do curso;
- Validação do valor do curso;
- Formas de pagamento;
- Pagamento via Pix;
- Pagamento via cartão;
- Pagamento via boleto;
- Desconto para pagamento via Pix;
- Desconto para bolsistas;
- Acúmulo de descontos;
- Limite de desconto;
- Parcelamento;
- Acréscimo para parcelamentos superiores a três parcelas;
- Cálculo do valor final;
- Cálculo do valor das parcelas;
- Arredondamento;
- Geração do resumo da matrícula.

## 4.4 Funcionalidades não verificadas

As funcionalidades que não tiverem sido executadas deverão ser registradas nesta seção após a conclusão dos testes.

Até o momento:

- Nenhuma funcionalidade adicional foi identificada fora do escopo definido no plano de testes.

---

# 5. Riscos residuais

Mesmo após a execução dos testes, alguns riscos podem permanecer:

1. Possibilidade de existirem combinações de dados que não foram testadas.
2. Possibilidade de erros não identificados pelos casos planejados.
3. Possíveis diferenças de comportamento em outros ambientes de execução.
4. Possíveis problemas relacionados ao arredondamento em diferentes valores e quantidades de parcelas.
5. Possíveis problemas em situações não previstas nos requisitos originais.

Os testes realizados aumentam a confiança no sistema, mas não garantem que todos os defeitos existentes tenham sido encontrados.

---

# 6. Reteste e regressão

Após eventuais correções de defeitos, os casos responsáveis pela identificação dos problemas deverão ser executados novamente.

Também deverão ser executados todos os testes automatizados para verificar se as alterações realizadas não afetaram funcionalidades que anteriormente estavam funcionando corretamente.

O resultado dos retestes e da regressão deverá ser registrado em `registro_execucao.md`.

---

# 7. Evidências

As evidências coletadas durante a execução dos testes estão armazenadas na pasta:

`documentos/evidencias/`

As evidências podem incluir:

- Capturas de tela do terminal;
- Saídas dos testes automatizados;
- Arquivos de texto;
- Resultados da execução manual;
- Relatórios gerados pelo sistema.

---

# 8. Conclusão

O processo de testes teve como objetivo verificar se o Sistema de Matrículas em Cursos apresenta comportamento compatível com os requisitos funcionais e regras de negócio estabelecidos.

Foram planejados casos de teste envolvendo dados válidos, inválidos, limites e combinações de regras.

Os resultados finais deverão ser analisados juntamente com o registro de execução, o relatório de defeitos e a matriz de rastreabilidade.

## Recomendação final

**A definir após a conclusão da execução dos testes.**

As possibilidades são:

- Sistema aprovado;
- Sistema aprovado com restrições;
- Sistema reprovado;
- Sistema não avaliado por bloqueio.

A recomendação deverá ser justificada com base nos resultados dos testes, defeitos encontrados, retestes e testes de regressão.