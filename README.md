# Instalação
```bash
sh -c "`curl -fsSL https://raw.github.com/diegonogueira/vim-dotfiles/master/install.sh`"
```

Para usar o plugin ack, instalar:

```brew install ack```

# Instalar plugin

Adicionar em vundle.vim e rodar no terminal:

```vim +PluginInstall +qall```

# Atualizar plugins
```vim +PluginUpdate +qall```

# Como usar

### Modos

| Modo      | Comando                     |
| -------   | --------------------------- |
| Normal    | ```<CTRL-[> OU <ESC>```     |
| Inserção  | ```<i, I, a, A, o, O...>``` |
| Visual    | ```<v, V, Ctrl-v>```        |
| Comando   | ```<ESC> :```              |

### Navegação

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```<Ctrl-[>``` OU <br> ```<Ctrl-c>``` OU <br> ```<ESC>``` | Sai do modo de edição                |
| ```h```                                                   | Move o cursor para trás        |
| ```j```                                                   | Move o cursor para baixo       |
| ```k```                                                   | Move o cursor para cima        |
| ```l```                                                   | Move o cursor para frente      |
| ```w```                                                   | Move o cursor para o início da próxima palavra  |
| ```W```                                 | Move o cursor para o início da próxima palavra, desconsiderando hífen |
| ```e```                                   | Move o cursor para o final da próxima palavra  |
| ```E```                                   | Move o cursor para o final da próxima palavra, desconsiderando hífen  |
| ```b```                                                         | Move o cursor para o início da palavra anterior |
| ```ge```                                                         | Vai para o final da palavra anterior |
| ```gg```                                                         | Vai para o início do arquivo |
| ```G```                                                         | Vai para o final do arquivo |
| ```0```                                                         | Vai para o início da linha |
| ```^```                                                         | Vai para o início da linha, ignorando espaço |
| ```$```                                                         | Vai para o final da linha |
| ```:<n>``` OU<br> ```G+<n>``` OU<br> ```<n>+gg```               | Vai para a linha <n> |
| ``` `` ```                                                         | Volta para a linha que estava antes do goto |
| ```f+<c>```                                                         | Vai para o primeiro caracter <c> a frente |
| ```t+<c>```                                                         | Vai para o primeiro caracter <c> a frente, posicionando no caracter anterior |
| ```F+<c>```                                                         | Vai para o primeiro caracter <c> a frente |
| ```T+<c>```                                                         | Vai para o primeiro caracter <c> a trás, posicionando no caracter anterior |
| ```*```                                                         | Vai para próximo caracter selecionado |
| ```zt```                                                         | Move o cursor para o topo da página |
| ```zz```                                                         | Move o cursor para final da página |
| ```%```                                                         | Vai para o parênteses correspondente ) } ] |
| ```)```                                                         | Pula uma sentença para frente |
| ```(```                                                         | Pula uma sentença para trás |
| ```}```                                                         | Pula um paragrafo para frente |
| ```{```                                                         | Pula um paragrafo para trás |
| ```<n>+Navegação```<br>```Ex: 3w```<br>```Ex: 5k```  | Diz o quantificador e a forma de navegação desejada <br> Move para a 3 palavra <br> Move para 5 linhas acima|
| ```Ctrl+f```                                                         | Desce a paginação |
| ```Ctrl+b```                                                         | Sobre a paginação |

### Digitação

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```i```                                                   | Entra em modo edição antes do caracter atual |
| ```I```                                                   | Entra em modo de edição no começo da linha |
| ```a```                                                   | Entra em modo de edição após o caracter atual |
| ```A```                                                   | Entra em modo de edição no final da linha |
| ```o```                                                   | Entra em modo de edição uma linha abaixo |
| ```O```                                                   | Entra em modo de edição uma linha acima |
| ```s```                                                   | Entra em modo de edição apagando o caracter da frente |
| ```S```                 | Entra em modo de edição no início da linha indentado ( quando não for espaço ) |
| ```<n>i<c> <ESC>```                                       | Adiciona <c> <n> vezes atual |
| ```r```                                           | Abre o modo insert para trocar pelo caracter selecionado, após a troca, automaticamente volta para modo normal |
| ```R```                                                   | Abre o modo insert para trocar pelo caracter selecionado, porém não volta para modo normal. Ele vai alterando os caracteres correspondentes. Igual a tecla <INSERT> |

### Excluindo caracteres

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```dw```                                                   | Apaga uma palavra, posicionado no início da palavra |
| ```diw```                                 | Apaga a palavra atual, não importando em que parte da palavra esta |
| ```daw``` | Apaga a palavra atual e o espaço para a outra palavra, não importando em que parte da palavra esta |
| ```dip```                                                   | Apaga o paragrafo atual |
| ```dap```                                                   | Apaga o paragrafo atual e a linha, posicionando no próximo parágrafo |
| ```d<n>b```                                                   | Apaga <n> vezes as palavras anteriores |
| ```dd```                                                   | Deleta a linha atual |
| ```D```                                                   | Deleta o restante da linha |
| ```C```                                                   | Deleta até o final da linha e muda para modo inserção |
| ```d$```                                                   | Deleta do ponto atual até o final da linha |
| ```d^```                                                   | Deleta do ponto atual até o início da linha do primeiro caracter não espaço |
| ```d0```                                                   | Deleta do ponto atual até o início da linha |
| ```d%```                                                   | Apaga até o fechamento dos ), }, ] |
| ```df<c>```                               | Deleta do ponto atual até a próxima ocorrência encontrada em <c> |
| ```dF<c>```                               | Deleta do ponto atual até a ocorrência anterior encontrada em <c> |
| ```<b>,<e> d```                           | Deleta da linha \<b> até <e> |
| ```x```                                   | Apaga o caracter sob o cursor |
| ```xp```                                  | Troca os caracteres de lugar |
| ```ddp```                                                   | Troca as linhas de lugar |
| ```da”```                                                   | Deleta conteúdo entre aspas |
| ```<n>+Exclusão```<br>```Ex: 5x```<br>```Ex: 5dd``` | Apaga a quantidade de <n> informado ao comando <br> Apaga os próximos 5 caracteres <br> Apaga as próximas 5 linhas |
| ```ciw```                               | Remove a palavra, e troca para modo de inserção |
| ```:g/TEXTO/d```                                            | Deleta a palavra Texto no arquivo |
| ```J```                                            | Junta a linha de baixo com a atual |

### Copiar e colar

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```yy OU Y```                                         | Copia a linha atual |
| ```ye```                                              | Copia do cursor até o fim da palavra |
| ```yb```                                              | Copia do cursor ao início da palavra |
| ```yi"```                                             | Copia o conteúdo entre aspas |
| ```yip```                                             | Copia o paragrafo atual |
| ```yit```                                             | Copia a tag atual <h1></h1> |
| ```yf<c>```                                           | Copia até a próxima ocorrência encontrada |
| ```yF<c>```                                           | Copia até ocorrência anterior encontrada |
| ```<n>Y```                                            | Copia <n> linhas |
| ```<b>,<e> Y```                                       | Copiar da linha \<b> até <e> |
| ```p```                                               | Cola o que foi copiado ou deletado uma linha abaixo |
| ```P```                                               | Cola o que foi copiado ou deletado uma linha acima |
| ```]p```                                              | cola o que foi copiado ou deletado após o cursor |
| ```:20,30m 10```                                      | Move a da linha 20 até 30 para a linha 10 |
| ```:m-5```                                            | Move a linha atual 5 posições acima          |
| ```:m$```                                             | Move a linha atual para o final              |
| ```:10t.```                                           | Copia a linha 10 para a linha atual          |
| ```:t10```                                            | Copia a linha atual para a linha 10          |
| ```yyp OU :t.```                                      | Duplica a linha atual                        |
| ```:t$```                                             | Copia a linha atual para o final do arquivo  |
| ```Vjj :t10```                                        | Copia o conteúdo selecionado para a linha 10 |
| ```:m10```                                            | Move a linha atual para a linha 10           |
| ```:10m.```                                           | Move a linha 10 para a linha atual           |
| ```Vjj :m10```                                        | Move o conteúdo selecionado para a linha 10  |

### Selecionando ( modo visual )

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```v```                                           | Entra no modo visual selecionando o caracter |
| ```V```                                           | Entra no modo visual, selecionando a linha |
| ```<C-v>```                                           | Entra no modo visual, selecionando o bloco |
| ```gv```                                           | Vai para a última seleção utilizada |
| ```vap```                                           | Seleciona o paragrafo |
| ```vip```                                           | Seleciona o paragrafo |
| ```vi}```                                           | Seleciona o conteúdo entre {} |
| ```va}```                                           | Seleciona tudo entre {}, inclusive as {} |
| ```vit```                                           | Seleciona o trecho com a tab. <tag>trecho</tag> |
| ```o```                                           | Alterna entre o início da seleção e depois da seleção. Necessário ter um trecho selecionado |
| ```var a = 1```<br>```var b = 2```<br>```var c = 3```<br>```<C-v>jj$```<br>```A;```<br>```<Ctrl-[>```                                           | Coloca ; no final de cada linha. |

### Buscando no arquivo

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```/<t> OU <regexp>```<br>```n```<br>```N```  | Pesquisa pela palavra <t> ou pela regexp <br> Move para a próxima ocorrência encontrada <br> Move para a ocorrência anterior |
| ```:noh OU <CTRL-[> <CTRL-[>```                       | Desabilita o highlighting |

### Buscando e alterando trechos

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```:s/<b>/<e>```                                  | Muda tudo que achar de \<b> para <e> na linha |
| ```:%s/<b>/<e>```                                 | Muda tudo que achar de \<b> para <e> no arquivo inteiro |
| ```:1,10 s/<b>/<e>```                             | Muda tudo que achar de \<b> para <e> somente da linha 1 a 10 |


### Trabalhando com arquivos

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```:w```                          | Salva o arquivo |
| ```:w!```                         | Salva forçando |
| ```:e!```                         | Reinicia a edição, ignorando alterações |
| ```:w arquivo```                  | Salvar como e permanece no arquivo original |
| ```:w! >> arquivo```              | Salvar como e permanece no arquivo original |
| ```:wq```                         | Salva e sai |
| ```:x```                          | Salva se existirem modificações |
| ```:10, 20 w arquivo```           | Salva o trecho selecionado em outro arquivo |
| ```:saveas arquivo```             | Salvar como e abrir o arquivo novo |
| ```:e! arquivo```                 | Abre um novo arquivo sem salvar o atual |
| ```Ctrl-6```                      | Alterna entre dois arquivos abertos |
| ```:r arquivo```                  | Abre o arquivo na linha em questão |
| ```:<n>r arquivo```               | Abre o arquivo na linha <n> |
| ```‘0```                          | Abre o último arquivo editado |
| ```‘1```                          | Abre o penúltimo arquivo editadoo |

### Trabalhando com arquivos

| Comando                                                   | Descrição                            |
| --------------------------------------------------------- | ------------------------------------ |
| ```:buffers```                          | Lista os arquivos abertos |
| ```:buf <n>```                          | Vai para o buffer <n>, listado pelo buffers |
| ```:wn```                          | Salva o arquivo atual e vai para o próximo |
| ```Ctrl-w-v```                          | Cria uma janela ao lado |
| ```Ctrl-w-s```                          | Cria uma janela a baixo |
| ```Ctrl-w-w```                          | Alterna entre as janelas |
| ```Ctrl-w-l```                          | Vai para a janela da direita |
| ```Ctrl-w-h```                          | Vai para a janela da esquerda |
| ```Ctrl-w-j```                          | Vai para a janela a baixo |
| ```Ctrl-w-k```                          | Vai para a janela de cima |
| ```Ctrl-w-o```                          | Vai a janela atual ser única |
| ```Ctrl-w-+```                          | Aumenta o espaço da janela atual |
| ```Ctrl-w--```                          | Diminui o espaço da janela atual |
| ```:wall```                          | Salva todas as janelas |
| ```:qall```                          | Fecha todas as janelas |
