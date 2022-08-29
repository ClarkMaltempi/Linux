# Comandos Linux

# Indice

<a href="#Sobre">Sobre</a></br>
<a href="#Comandos">Comandos de Manipulação Diretórios</a></br>
<a href="#Comandos_Arquivos">Comandos de Manipulação de Arquivos</a></br>
<a href="#Comandos_Diversos">Comandos Diversos</a></br>

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
  
 # Comandos_Diversos
  
  
 ```.sh
  
  
df        #: Mostra o espaço livre/ocupado de cada partição
df -h     #: Tamanho dos arquivos e diretórios em GB
df -m     #: Tamanhos em Mb
df -hT /home          #: Específico
dt -T             #: Tipo de sistema de arquivos
free              #: Mostra detalhes sobre a utilização da memória RAM do sistema
free -m           #: Mostra o resultado em Mbytes
free -t           #: Mostra uma linha contendo o total
grep              #: Procura por um texto dentro de um arquivo
grep “capitulo” texto.txt, ps ax | grep inetd, grep “capitulo” texto.txt -A 2 -B 2
nl teste.txt      #: Mostra o número de linhas junto com o conteúdo de um arquivo
tail              #: Mostra as linhas finais de um arquivo texto
tail -n 10 teste.txt        #: Mostra as 10 ultimas linhas do arquivo teste.txt
touch                       #: Muda a data e hora que um arquivo foi criado e cria arquivos também
touch teste.txt             #: Cria o arquivo
touch -a teste.txt          #: Muda somente a data e hora do acesso ao arquivo
touch -m                    #: Muda somente a data e hora da modificação
touch -t 10011230 teste     #: Altera da data e hora do arquivo para 01/10 e 12:30
uname -a                    #: Exibe informações do kernel
cat /proc/cpuinfo           #: Exibe informações da CPU
cat /proc/meminfo           #: Exibe informações da memória
echo                        #: Mostra mensagens
echo teste                  #: Este comando é útil na construção de scripts
uptime                      #: Tempo de execução do sistema desde que o computador foi ligado  
reboot                      #: Reinicia o computador
shutdown                    #: Desliga/Programável
shutdown -r 20              #: Faz o sistema ser reiniciado após 20 minutos.
shutdown -c                 #: Cancela a execução do shutdown
shutdown -h now             #: Desligar o computador imediatamente
shutdown -r now             #: Reinicia o computador imediatamente 
  
```
  
  
  
  
