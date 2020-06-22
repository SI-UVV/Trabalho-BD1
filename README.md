# Turma: SI1N-A
### Componentes: João Victor Cardoso Baptista, Marcio Pinheiro Mendes 

![Análises Ambientais](https://www.ecocerta.com/media/servicos/ambiental-5.png "Análises Ambientais")

### TEMA : Empresa de análises ambientais

A empresa presta serviços de análises ambientais de água, efluentes, alimentos e solo. As análises abrangem as áreas de microbiologia e físico-química em diversos estados do Brasil. Nos últimos anos, a empresa apostou na inovação, trazendo para o Brasil tecnologias exclusivas na areá de conservação de corpos hidricos (CCH) e processos oxidativos avançados (TAE).

A empresa conta com um setor comercial, que é o responsável por vender ou negociar serviços com os clientes. Conta também com um setor de amostragem, que é o responsável por visitar o local do cliente para coletar amostras. As amostras são levadas de volta à empresa para dar entrada no laboratório. Assim que é feita a entrada, elas são distribuídas para as diferentes análises.

Os dois novos setores da empresa trabalham de forma um pouco diferenciada. O setor de CCH não trabalha diretamente com amostras, mas sim com prestação de serviços diretamente no local do cliente. Quando um contrato é aceito, a equipe mobiliza para o local do serviço, sendo que um funcionário do CCH é o responsável por todo o processo. Em caso de necessidade de suporte, a equipe pode entrar em contato direto com o fornecedor da tecnologia.

O setor de TAE trabalha com amostras, entretanto estas são separadas das demais amostras do laboratório, embora sejam feitas as mesmas análises, pelos mesmos analistas.

##### - O setor comercial da empresa pode ter contratos com vários clientes mas pode não ter nenhum. Cada cliente obrigatoriamente tem que estar ligado ao setor comercial da empresa. O mesmo setor comercial entra em contato com os clientes do TAE e CCH, nas mesmas condições. Os clientes são representados pelas entidades "contrato".

##### - Cada cliente do lab ou tae pode, opcionalmente, estar relacionado a diversas amostragens. Entretanto, cada amostragem se relaciona uma única vez com cada cliente, obrigatoriamente. O setor cch não trabalha com amostragens.

##### - Cada cliente (contrato) do tae ou cch tem dois funcionários da empresa envolvidos diretamente: um do setor comercial, que faz o primeiro contato com o cliente oferecendo os serviços, e o outro do respectivo setor, que promove o andamento do contrato em relação aos quesitos técnicos.

##### - Um amostragem tem obrigatoriamente um único amostrador. Entretanto, cada amostrador, opcionalmente, pode estar relacionado a várias amostragens.

##### - Cada amostragem gera obrigatoriamente, uma amostra. Uma mesma amostra não pode estar relacionada a mais de uma amostragem, devendo, obrigatoriamente, estar relacionado com alguma.

##### - Uma amostra se relaciona obrigatoriamente com pelo menos um analista, mas pode se relacionar com vários. Um analista, opcionalmente, pode se relacionar com várias amostras.

##### - Um analista obrigatoriamente se relaciona com pelo menos uma análise, mas pode se relacionar com várias. Uma análise está relacionada, obrigatoriamente e unicamente a um analista.

##### - Uma análise opcionalmente pode estar relacionada a vários reagentes. Um reagente pode, opcionalmente, estar relacionado a várias análises.

##### - Para os setores TAE ou CCH: um cliente se relaciona obrigatoriamente e unicamente com um funcionário do setor. O setor, opcionalmente pode se relacionar com vários clientes.

##### - O cliente TAE, amostrador TAE, amostragem TAE e amostra TAE se relacionam de forma análoga ao cliente, amostrador, amostragem e amostra do laboratório.

<h2>O banco de dados deve ser capaz de responder às seguintes perguntas:</h2>

-Quais são os contratos TAE fechados em um determinado ano?

-Quais são as amostras coletadas para um determinado contrato?

-Quais análises foram realizadas para um determinado contrato LAB?

-Quais analistas participaram de um certo contrato TAE?

-Com quais reagentes um determinado analista teve contato?

-Quem foi o responsável pela mobilização em uma data específica?

-Listar os funcionários do setor comercial que venderam contratos para o TAE, ordenado pelo número de vendas.

-Quantas amostragens do TAE foram realizadas para atender um determinado cliente?


1ª FN - Um atributo de uma determinada entidade deve ser absoluto. Não podem ser gerados atributos ou características adicionais relacionados a este. Em outras palavras, se um atributo por si só tem características que o descrevem, este pode ser tratado como uma entidade.

2ª FN - um atributo deve ser uma característica dependente da entidade na qual está inserido. Se existe uma entidade com uma atributo (característica) não relacionada a esta, este atributo deve ser movido.

3ª FN - Qualquer atributo que não seja UID dentro de uma entidade não pode ser dependente de outro, a não ser que este outro seja UID.

