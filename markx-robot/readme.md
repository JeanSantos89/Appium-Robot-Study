# markx-robot

Projeto de automação de testes em um aplicativo real de tarefas, utilizando Robot Framework com Appium.

Este projeto tem como objetivo validar funcionalidades essenciais de um app de gerenciamento de tarefas, como criação, conclusão e exclusão de itens, garantindo que o comportamento esteja de acordo com o esperado em diferentes cenários de uso.

## Funcionalidades Testadas

- Criação de nova tarefa
- Marcar tarefa como concluída
- Exclusão de tarefa

## Estrutura do Projeto

- `tests/`: Casos de teste escritos em Robot Framework.
- `resources/`: Arquivos de recursos com keywords reutilizáveis.
- `logs/`: Pasta onde os logs e relatórios de execução são salvos.
- `README.md`: Este arquivo de documentação.

## Requisitos

- Python 3.x
- Node.js e npm
- Appium
- Android SDK e adb
- Emulador ou dispositivo físico Android com depuração USB ativada
- Robot Framework e bibliotecas associadas
