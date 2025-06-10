# Repositório de Testes Automatizados com Robot Framework e Appium

Este repositório reúne dois projetos distintos de automação de testes utilizando **Robot Framework** e **Appium**, aplicados em diferentes contextos de aplicações móveis. Cada projeto tem como foco a validação de funcionalidades essenciais em aplicativos reais ou simulados, com o objetivo de consolidar boas práticas de testes funcionais mobile.

## Projetos incluídos

### `markx-robot`
Automação de testes em um **aplicativo real de tarefas**, com foco em:

* Validação de fluxo de criação, conclusão e exclusão de tarefas.
* Testes funcionais básicos para garantir a estabilidade do app em operações comuns.

### `yodapp-robot`
Projeto de automação **básico**, voltado para o aprendizado e prática com **Robot Framework**, incluindo:

* Estrutura inicial de um projeto Robot Framework.
* Exemplos simples de comandos, seletores e organização de testes.
* Indicado para quem está iniciando e deseja entender a mecânica de testes automatizados mobile.

---


# Appium + Robot Framework: Guia de Configuração e Execução

## *Estrutura do Projeto*

*   `tests/`: Contém os arquivos `.robot` com os casos de teste do Robot Framework.
*   `resources/`: Armazena arquivos de recursos compartilhados entre testes (e.g. keywords).
*   `logs/`: Diretório onde os relatórios e logs de execução são salvos.
*   `README.md`: Este guia.

## *Como Configurar e Rodar Localmente*

### **Pré-requisitos**

Certifique-se de ter instalado:

*   **Node.js e npm**
*   **Android SDK + adb**
*   **Appium**
*   **Emulador ou dispositivo Android com depuração ativada**
*   **Robot Framework**

### **Passo a Passo**

1.  **Verifique se o adb reconhece o dispositivo:**
    ```bash
    adb devices
    ```
    *Você deve ver o ID do dispositivo ou do emulador listado.*

2.  **Inicialize o projeto Node.js (caso ainda não tenha feito):**
    ```bash
    npm init
    ```

3.  **Instale o Appium (versão 2.1.3):**
    ```bash
    npm i appium@2.1.3
    ```

4.  **Gerencie os drivers do Appium:**

    *Desinstalar driver antigo (opcional):*
    ```bash
    npx appium driver uninstall uiautomator2
    ```

    *Instalar driver:*
    ```bash
    npx appium driver install uiautomator2
    ```

5.  **Inicie o servidor Appium:**
    ```bash
    npx appium
    ```
    *Deixe este terminal aberto durante toda a execução dos testes.*

6.  **Abra um novo terminal e navegue até a pasta dos testes:**
    ```bash
    cd C:\QAx\projects\exemplo\tests
    ```

7.  **Execute os testes com Robot Framework:**
    ```bash
    robot -d ./logs ./tests/exemploTeste.robot
    ```
