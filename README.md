# automacao-web

## WINDOWS

**1 º Passo:** Clone o projeto no git hub;
**2 º Passo:** Instale o visual code (https://code.visualstudio.com/download) em sua maquina;
**3 º Passo:** Instale o cmder(https://cmder.net/) no seu computador;
**4 º Passo:** Instale o ruby installer (https://rubyinstaller.org/) em sua maquina;
**Obs.:** Na instalação, deixe todas as opções marcadas.
segue um vídeo ensinando realizar a instalação do ruby installer: https://www.youtube.com/watch?v=39QzzQB-Ay8&feature=emb_title
**5 º Passo:** Abra o prompt de comando e digite o comando 'ridk install', clique [Enter];
Sera apresentado a tela do 'ruby installer', digite a opção 3 e tecle [Enter];

Ao concluir a instalação, feche o prompt de comando;

**6 º Passo:** Baixe o chrome driver referente a versão do seu navegador Chrome;
https://chromedriver.chromium.org/downloads

**7 º Passo:** Descompacte o arquivo chrome driver baixado no **passo 6** e informe-o nas variaveis de ambiente do windows;

- **Windows 10 e Windows 8**

1. Em Pesquisar, procure e selecione: Painel de Controle
2. Clique no link **Configurações avançadas do sistema**.
3. Clique em **Variáveis de Ambiente**. Na seção Variáveis do Sistema localize a variável de ambiente **PATH** e selecione-a, Clique em Editar e informe a pasta onde está o arquivo baixado no passo **5 º Passo**. Se a variável de ambiente PATH não existir, clique em Novo.
4. Salve as alterações;

**8 º Passo:** Abra pelo Visual Code o projeto de automação;
**9 º Passo:** Abra o Cmder e navegue até o diretório raiz do projeto;
**10 º Passo:** Digite o comando 'gem install bundler'
**Obs.:** Caso não reconheça o comando, feche e abra novamente o Cmder.
**11 º Passo:** Após a instalação do bundler, digite em seguida o comando 'bundle install', para fazer a instalação das gems.
**12 º Passo:** Com todas as configurações corretas, basta somente executar o comando "rake specs["-t @FullTest","-p chrome"]" no **Cmder**.

Ao final da execução do teste é gerado na pasta log o arquivo "Report.html" com as evidências dos testes.
