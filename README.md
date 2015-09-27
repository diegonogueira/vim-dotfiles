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
| ```<n>+Navegação```                                             | Diz o quantificador e a forma de navegação desejada |
| ```—> Ex: 3w```                                                 | Move para a 3 palavra |
| ```—> Ex: 5k```                                                 | Move para 5 linhas acima |
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
| ```<b>,<e> d```                           | Deleta da linha <b> até <e> |
| ```x```                                   | Apaga o caracter sob o cursor |
| ```xp```                                  | Troca os caracteres de lugar |
| ```ddp```                                                   | Troca as linhas de lugar |
| ```da”```                                                   | Deleta conteúdo entre aspas |
| ```<n>+Exclusão```                                          | Apaga a quantidade de <n> informado ao comando |
| ```—> Ex: 5x:```                                            | Apaga os próximos 5 caracteres |
| ```—> Ex: 5dd```                                            | Apaga as próximas 5 linhas |
| ```ciw```                               | Remove a palavra, e troca para modo de inserção |
| ```:g/TEXTO/d```                                            | Deleta a palavra Texto no arquivo |
| ```J```                                            | Junta a linha de baixo com a atual |
