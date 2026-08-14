# PLANO DE TESTE

## 1. Identificação

**Nome do sistema:** Sistema de Matrículas em Cursos  
**Versão:** 1.0  
**Turma:** 3º ano - Análise e Desenvolvimento de Sistemas  
**Integrantes:** Gabriela Lima e integrantes do grupo  
**Data:** 14/08/2026  
**Responsável pelo documento:** Gabriela Lima  

---

## 2. Objetivo

O objetivo deste plano de teste é definir como será realizada a verificação do Sistema de Matrículas em Cursos.

Serão realizados testes para verificar se o sistema calcula corretamente o valor final da matrícula, aplica os descontos corretamente, calcula o valor das parcelas e valida os dados informados pelo estudante.

Também serão verificadas situações válidas, inválidas e de limite, buscando identificar possíveis defeitos antes da disponibilização do sistema para os usuários.

---

## 3. Escopo

Serão testadas as seguintes funcionalidades:

- Cadastro dos dados da matrícula;
- Validação do nome do estudante;
- Validação da idade;
- Validação do nome do curso;
- Validação do valor do curso;
- Validação da forma de pagamento;
- Validação da quantidade de parcelas;
- Validação das regras de parcelamento;
- Cálculo do desconto para pagamento via Pix;
- Cálculo do desconto para estudantes bolsistas;
- Aplicação do desconto acumulado;
- Limite máximo de desconto;
- Acréscimo para pagamentos acima de 3 parcelas;
- Cálculo do valor final da matrícula;
- Cálculo do valor de cada parcela;
- Geração do resumo da matrícula.

---

## 4. Fora do escopo

Não serão testados:

- Interface gráfica do sistema;
- Banco de dados;
- Cadastro de usuários;
- Sistema de login;
- Integração com sistemas externos;
- Pagamentos financeiros reais;
- Segurança da aplicação;
- Desempenho em servidores;
- Aplicativo mobile;
- Funcionamento em diferentes navegadores.

---

## 5. Requisitos

### Requisitos funcionais

**RF01** - O sistema deve receber o nome do estudante.

**RF02** - O sistema deve receber a idade do estudante.

**RF03** - O sistema deve receber o nome do curso.

**RF04** - O sistema deve receber o valor do curso.

**RF05** - O sistema deve receber a forma de pagamento.

**RF06** - O sistema deve receber a quantidade de parcelas.

**RF07** - O sistema deve receber a condição de bolsista.

**RF08** - O sistema deve calcular o valor final da matrícula.

**RF09** - O sistema deve calcular o valor de cada parcela.

**RF10** - O sistema deve gerar um resumo da matrícula.

### Regras de negócio

**RN01** - O nome do estudante é obrigatório.

**RN02** - A idade mínima permitida é 14 anos.

**RN03** - O nome do curso é obrigatório.

**RN04** - O valor do curso deve ser maior que zero.

**RN05** - As formas de pagamento permitidas são Pix, cartão e boleto.

**RN06** - O pagamento via Pix possui desconto de 10%.

**RN07** - Estudantes bolsistas possuem desconto de 5%.

**RN08** - O desconto máximo permitido é de 15%.

**RN09** - A quantidade de parcelas deve estar entre 1 e 6.

**RN10** - O pagamento via Pix não pode ser parcelado.

**RN11** - O pagamento via boleto não pode ser parcelado.

**RN12** - Pagamentos com mais de 3 parcelas possuem acréscimo de 4%.

---

## 6. Tipos de teste

### Teste unitário

Será utilizado para verificar individualmente as funcionalidades e métodos da classe `Matricula`, como cálculo do valor final, cálculo das parcelas e validação dos dados.

### Teste funcional

Será utilizado para verificar se o sistema atende às funcionalidades e regras de negócio estabelecidas.

### Teste de caixa preta

Será realizado considerando as entradas e saídas do sistema, sem analisar como o código foi implementado.

Serão utilizados dados válidos, inválidos e de limite para verificar o comportamento esperado.

### Teste de caixa branca

Será utilizado para analisar os caminhos internos do código, verificando condições como:

- aplicação do desconto do Pix;
- aplicação do desconto de bolsista;
- limite de desconto;
- acréscimo para mais de 3 parcelas;
- validações dos dados.

### Teste de sistema

Será utilizado para verificar o funcionamento do sistema como um todo, considerando a interação entre suas principais funcionalidades.

### Teste de regressão

Será realizado após correções de defeitos para verificar se alterações realizadas no código não causaram problemas em funcionalidades que anteriormente estavam funcionando.

### Reteste

Será realizado especificamente nos casos de teste que identificarem defeitos, após a correção do código, para verificar se o problema foi realmente solucionado.

---

## 7. Ambiente

**Sistema operacional:** Windows 10/11  
**Linguagem:** Dart  
**IDE:** Visual Studio Code  
**Versão do Dart:** Será obtida utilizando o comando `dart --version`  
**Pacote de testes:** `test`  
**Versão do projeto:** 1.0  
**Computador utilizado:** Computador utilizado pelo grupo durante a execução dos testes.

---

## 8. Dados de teste

### Dados válidos

- Nome: Mariana Silva
- Idade: 16 anos
- Curso: Desenvolvimento de Sistemas
- Valor: R$ 600,00
- Forma de pagamento: cartão
- Parcelas: 4
- Bolsista: sim ou não

### Dados inválidos

- Nome vazio;
- Curso vazio;
- Idade menor que 14 anos;
- Valor igual a zero;
- Valor negativo;
- Forma de pagamento inexistente;
- Quantidade de parcelas igual a zero;
- Quantidade de parcelas maior que 6;
- Pix parcelado;
- Boleto parcelado.

### Dados de limite

- Idade: 13 anos;
- Idade: 14 anos;
- Parcelas: 1;
- Parcelas: 3;
- Parcelas: 4;
- Parcelas: 6;
- Parcelas: 7;
- Valor do curso: R$ 0,00;
- Valor do curso: valor positivo próximo de zero.

---

## 9. Critérios de entrada

Os testes poderão ser iniciados quando:

- O projeto Dart estiver criado;
- O arquivo `lib/matricula.dart` estiver disponível;
- O arquivo `bin/sistema_matriculas.dart` estiver disponível;
- O pacote `test` estiver instalado;
- O ambiente de desenvolvimento estiver funcionando;
- Os casos de teste estiverem definidos;
- Os dados de teste estiverem preparados.

---

## 10. Critérios de saída

Os testes poderão ser encerrados quando:

- Todos os casos de teste planejados forem executados;
- Os resultados forem registrados;
- As evidências forem coletadas;
- Os defeitos encontrados forem documentados;
- Os testes de reteste forem realizados;
- Os testes de regressão forem executados;
- O relatório final estiver preenchido.

---

## 11. Critérios de suspensão

Os testes poderão ser suspensos quando:

- O projeto não puder ser executado;
- Houver erro que impeça a execução dos testes;
- O ambiente de desenvolvimento estiver indisponível;
- O código apresentar um defeito crítico que impeça a continuidade;
- O pacote de testes não estiver funcionando;
- Os arquivos necessários estiverem ausentes ou corrompidos.

---

## 12. Critérios de retomada

Os testes poderão ser retomados quando:

- O ambiente estiver funcionando novamente;
- Os erros que impediam a execução forem corrigidos;
- Os arquivos necessários estiverem disponíveis;
- O pacote de testes estiver funcionando;
- O defeito que bloqueava os testes tiver sido corrigido ou contornado.

---

## 13. Riscos

### Risco 1 - Erros no código

O código pode apresentar comportamentos diferentes dos requisitos estabelecidos.

**Impacto:** Alto  
**Mitigação:** Realizar testes válidos, inválidos e de limite.

### Risco 2 - Dados de teste inadequados

Dados insuficientes podem impedir a identificação de alguns defeitos.

**Impacto:** Médio  
**Mitigação:** Utilizar diferentes combinações de dados.

### Risco 3 - Erros de configuração do ambiente

Problemas com Dart, Visual Studio Code ou pacote de testes podem impedir a execução.

**Impacto:** Médio  
**Mitigação:** Verificar o ambiente antes do início dos testes.

### Risco 4 - Alterações no código durante os testes

Correções realizadas podem gerar novos problemas.

**Impacto:** Alto  
**Mitigação:** Executar testes de regressão após as correções.

---

## 14. Responsabilidades

| Responsável | Função |
|---|---|
| Integrante 1 | Analista de testes |
| Integrante 2 | Executor dos testes |
| Integrante 3 | Desenvolvedor responsável pelas correções |
| Integrante 4 | Responsável pelas evidências |
| Integrante 5 | Responsável pela documentação |

Os papéis poderão ser alternados durante a atividade.

---

## 15. Entregáveis

Ao final do projeto serão produzidos:

- `lib/matricula.dart`
- `bin/sistema_matriculas.dart`
- `test/matricula_test.dart`
- `documentos/plano_teste.md`
- `documentos/casos_teste.md`
- `documentos/registro_execucao.md`
- `documentos/relatorio_defeitos.md`
- `documentos/matriz_rastreabilidade.md`
- `documentos/relatorio_final.md`
- `documentos/evidencias/`

---

## Controle de versão

**Versão:** 1.0  
**Data:** 14/08/2026  
**Responsável:** Gabriela Lima  
**Descrição:** Criação inicial do plano de teste.