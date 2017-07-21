#language: pt
Funcionalidade: Criar Tarefa por API
  Como consumidor de API
  Gostaria de Criar uma tarefa
  Para que eu possa persistir a mesma para uso posterior

  Cenário: Submetendo uma nova tarefa
    Dado que a API esteja online
    E que o consumidor esteja autenticado
    Quando eu submeter uma requisição POST para "/api/1/tasks"
    E o corpo dessa requisição contenha o texto "Item a fazer"
    Então um novo recurso deve ser criado com a descrição "Item a fazer"
    E o novo recurso deve ter o status igual a "a fazer"
    E o status da resposta deve ser 201
    E não ter corpo