# Como tudo começa ?

0. Instalar o Live Server a partir do VSCODE (Esse será o servidor que irá hospedar nossa app)
    0.1 Digite dentro do vscode ```CRT + SHIFT + X``` isso irá abrir o marketplace do vscode.
    0.2 Busque por Live Server (Autor Ritwick Dey) e instale-o.
    0.3 Após instação clique no reload.
1. Fazer clone desse projeto
    1.1 ```git clone https://github.com/micheljunio/ppw2018-1.git```
2. Após clonado, entrar na pasta do projeto e utilizar o terminal para instalar as dependências. 
    2.1 Eu utilizo o VSCode da seguinte forma: Ao abrir o vscode, selecionar file -> Open Folder -> selecionar a pasta utilizada no clone do projeto. 
    2.2 Quando o projeto abrir clique ```CTRL + ' ``` para abrir o terminal do vscode.
    2.3 No terminal digitar ```npm install``` e dê enter.
    2.4 Aguardar a instação das dependências
3. Ainda no terminal, digite ```npm run riot``` e dê enter. (Esse comando irá compilar os arquivos do riot .tag para .js, assim o navegador conseguirá interpretar o conteúdo.
4. Abra uma nova aba do terminal do vscode (você pode utilizar o atalho ```CTRL + SHIFT + '``` ou clicar no icone ```+``` no canto superior direito do terminal.
    4.1 Na nova aba do terminal, digite ```npm rum webpack``` e dê enter. Esse comando irá gerar a build com todas as dependências da app e deixará pronta para execuçaõ no servidor.
5. Clique no Go Live ( Essa opção está no canto inferior direito do vscode. (Esse comando irá inicializar o servidor com a aplicação. 
    5.1 Abra a aplicação no browser por meio do ip: ```http://127.0.0.1:5500/```
