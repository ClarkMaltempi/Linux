# Comandos Linux

# Indice

<a href="#Sobre">Sobre</a></br>
<a href="#Comandos">Comandos de Manipulação Diretórios</a></br>
<a href="#Comandos_Arquivos">Comandos de Manipulação de Arquivos</a></br>

# Sobre

<p>Esse repositório tem por objetivo abordar os principais comandos bash oriundos do Unix</p>
<p>Bem como, as diferentes abordagens e manipulação no sistema Linux

# Comandos

```.sh
  
  
ls              #: Lista os arquivos do diretório atual
ls /bin /sbin   #: Lista os arquivos do diretório /bin e /sbin
ls -al          #: Exibição de todos arquivos até os ocultos
ls -f           #: Não classifica a listagem
ls -n           #: Usa a identificação de usuário e grupo numérica
ls -R           #: Lista diretórios e sub-diretórios recursivamente.
cd home         #: Entra no Diretório home
cd ~            #: Diretório HOME
cd /            #: retornará ao diretório raíz.
cd -            #: Retornará ao diretório anteriormente acessado
cd ..           #: Sobe um diretório
pwd             #: Mostra o diretório atual
mkdir           #: Cria um diretório(No Windows seria chamado de pasta)
mkdir dudu      #: Diretório criado
rmdir           #: Remove um diretório
rmdir dudu      #: Diretório Removido
cat             #: Mostra o conteúdo de um arquivo de texto
cat -n Exemplo.txt  #:Mostra o número das linhas
tac             #: Quase a mesma coisa só que, mostra o conteúdo inverso
  
  
```
  
 # Comandos_Arquivos

  ```.sh
  
  
rm        #: Apaga arquivos
rm -i     #: Pergunta antes de remover, esta é ativada por padrão
rm -v     #: Mostra os arquivos na medida que são removidos
rm -r     #: Usado para remover arquivos em sub-diretórios
rm -f     #: Remove os arquivos sem perguntar
rm teste.txt    #: Apaga o arquivo teste.txt no diretório atual
rm *.txt        #: Apaga todos os arquivos do diretório atual que terminam com .txt
rm *.txt teste.novo      #: Apaga todos os arquivos do diretório atual que terminam com .txt e também o arquivo teste.novo
cp                       #: Copia arquivos
cp -i                    #: Pergunta antes de substituir um arquivo existente
cp -f                    #: Não pergunta, substitui todos os arquivos caso já exista
cp teste.txt teste1.txt  #: Copia o arquivo teste.txt para teste1.txt
cp teste.txt /tmp        #: Copia o arquivo teste.txt para dentro do diretório /tmp
cp * /tmp                #: Copia todos os arquivos do diretório atual para /tmp
cp -R /bin /tmp          #: Copia todos os arquivos e o diretório /bin para /tmp
mv                       #: Move ou renomeia arquivos e diretório
mv -f                    #: Substitui o arquivo de destino sem perguntar
mv -i                    #: Pergunta antes de substituir. É o padrão
mv -v                    #: Mostra os arquivos que estão sendo movido
mv teste.txt teste1.txt  #: Muda o nome do arquivo teste.txt para teste1.txt
mv teste.txt /tmp        #: Move o arquivo teste.txt para /tmp
  
  
  
  
  
  
  
  
  
  
  
  ```
