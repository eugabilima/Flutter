1. O que é um teste de integração?

Um teste de integração verifica se diferentes partes de um sistema conseguem funcionar corretamente quando trabalham juntas.

2. Quais partes do sistema foram integradas nesta atividade?

Foram integrados o aplicativo desenvolvido em Flutter/Dart, o pacote HTTP, a API Open-Meteo, a resposta em formato JSON e a interface do aplicativo. 

3. O que aconteceu quando a URL da API foi alterada?

Quando a URL da API foi alterada propositalmente para um endereço inválido, a comunicação com o servidor não foi realizada. O teste apresentou uma falha com a mensagem Failed host lookup, indicando que o endereço informado não pôde ser encontrado.

4. Por que não podemos testar uma temperatura fixa, como 29 °C?

Não devemos testar uma temperatura fixa porque a temperatura real pode mudar ao longo do tempo. Por exemplo, a API pode retornar 27 °C em um momento e 29 °C em outro. Por isso, o teste deve verificar se a temperatura foi recebida e se possui um valor numérico, em vez de exigir um número específico.

5. Qual a importância de testar a comunicação entre o aplicativo e uma API?

Testar a comunicação é importante para garantir que o aplicativo consiga acessar corretamente um serviço externo, receber os dados e utilizá-los sem apresentar falhas. Esse tipo de teste também ajuda a identificar problemas como URLs incorretas, APIs indisponíveis ou respostas inesperadas.