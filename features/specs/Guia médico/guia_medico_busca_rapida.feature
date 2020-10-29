#language: pt

@Home
Funcionalidade: Guia Médico
Eu como cliente da Unimed
Quero encontrar médicos, clínicas, laboratórios, hospitais ou parceiros
Para verificar se o plano de saúde é atendido no estabelecimento

@FullTest
Esquema do Cenario: Busca rápida por médicos do Rio de Janeiro
        Dado que acesso o guia médico
        Quando realizo uma busca pelo médico <nome_medico> do Rio de Janeiro
        Entao devo visualizar a especialidade e Cidade do médico

Exemplos: 

|nome_medico|
|"medico_01"|

@FullTest
Esquema do Cenario: Busca rápida por médicos do Rio de Janeiro
        Dado que acesso o guia médico
        Quando realizo uma busca pelo médico <nome_medico> do Rio de Janeiro
        Entao NÃO devo visualizar resultados com a cidade São Paulo

Exemplos: 

|nome_medico|
|"medico_01"|