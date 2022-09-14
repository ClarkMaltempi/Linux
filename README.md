# Comandos Linux

# Indice

<a href="#Sobre">Sobre</a></br>
<a href="#FHS">Hierarquia Padrão do Sistema de Arquivos</a></br>
<a href="#Comandos">Comandos de Manipulação Diretórios</a></br>
<a href="#Comandos_Arquivos">Comandos de Manipulação de Arquivos</a></br>
<a href="#Comandos_Diversos">Comandos Diversos</a></br>
<a href="#Comandos_Rede">Comandos de Rede</a></br>
<a href="#Acessos_Remoto">Acessos Remoto com ssh</a></br>
<a href="#Manipula_Contas">Comandos para Manipulação de contas</a></br>
<a href="#Arquivos_Compactados">Arquivos Compactados</a></br>
<a href="#Repositorios">Repositórios</a></br>
<a href="#Repositorios_Redhat_Fedora_CentOS">Pacotes Redhat, Fedora, CentOS</a></br>
<a href="#Instalacao">Instalação</a></br>

# Sobre

<p>Esse repositório tem por objetivo abordar os principais comandos bash oriundos do Unix</p>
<p>Bem como, as diferentes abordagens e manipulação no sistema Linux

# Comandos

```.sh
  
  
ls              #: Lista os arquivos do diretório atual
ls .            #: Lista os arquivos do diretório atual
ls ..           #: Lista o diretório anterior
ls /bin /sbin   #: Lista os arquivos do diretório /bin e /sbin
ls -al          #: Exibição de todos arquivos até os ocultos
ls -f           #: Não classifica a listagem
ls -n           #: Usa a identificação de usuário e grupo numérica
ls -R           #: Lista diretórios e sub-diretórios recursivamente.
ls ~            #: Lista o diretório nativo - root.
ls /root        #: Lista o diretório nativo - root.
ls -l           #: Lista longa
ls -l | more    #: more Administra a pagina de vídeo juntando com o comando ls através do | (pipe)
ls -a           #: Lista Arquivos ocultos (identificado na frente do diretório e o arquivo um ".")
ls -F           #: Lista e adiciona simbolo para identificar (diretório, arquivo e link)
ls -Fa          #: Combinando comandos -a e -F
ls -t           #: listar por data e time
ls -lt          #: listar por data e time com os valores na tela
ls -1           #: Lista os arquivos em uma linha
ctrl C          #: Interrompe o processo
cd home         #: Entra no Diretório home
cd ~            #: Diretório HOME
cd /            #: retornará ao diretório raíz.
cd -            #: Retornará ao diretório anteriormente acessado
cd ..           #: Sobe um diretório
cd /home/exe/exe2  #:Estando no Diretório home acessa diretamente exe2           
pwd             #: Mostra o diretório atual
mkdir           #: Cria um diretório(No Windows seria chamado de pasta)
mkdir dudu      #: Diretório criado
rmdir           #: Remove um diretório
rmdir dudu      #: Diretório Removido
tree            #: No diretório que deseja visualizar a arvore, digite esse comando, ele exibira uma arvore com os diretórios subsequentes
cat             #: Mostra o conteúdo de um arquivo de texto
cat -n Exemplo.txt  #:Mostra o número das linhas
tac             #: Quase a mesma coisa só que, mostra o conteúdo inverso
  
```
  
 # Comandos_Arquivos

  ```.sh
  
touch nome arquivo                    #: Criar um arquivo vazio
touch nome arquivo  nome arquivo      # Criando dois arquivos | utilizando o método metacaracter
* t*o *texto texto*                   #: substitui um conjunto de caracter prefixo (começo) | sufixo (substitui no final)
? ?texto                              #: Substitui apenas um caracter
?? ??texto                            #: pode ser usado subsequentemente como o exemplo, substitui dois caracter
[]  [a1bx3]texto                      #: pesquisa um conjunto de palavras, usando distributiva com os valores dentro de colchetes
ls [a:z][0:9]texto                    #: pesquisa caracter o alfabeto e de 0 a 9
{} ls {a,1,bc}texto                   #: pesquisa caracter, similar chaves, porém, se não encontrar ele vai informar poluindo a tela
rm                                    #: Apaga arquivos
rm -i                                 #: Pergunta antes de remover, esta é ativada por padrão
rm -v                                 #: Mostra os arquivos na medida que são removidos
rm -r                                 #: Usado para remover arquivos em sub-diretórios
rm -f                                 #: Remove os arquivos sem perguntar
rm teste.txt                          #: Apaga o arquivo teste.txt no diretório atual
rm *.txt                              #: Apaga todos os arquivos do diretório atual que terminam com .txt
rm *.txt teste.novo                   #: Apaga todos os arquivos do diretório atual que terminam com .txt e também o arquivo teste.novo
cp                                    #: Copia arquivos
cp -i                                 #: Pergunta antes de substituir um arquivo existente
cp -f                                 #: Não pergunta, substitui todos os arquivos caso já exista
cp teste.txt teste1.txt               #: Copia o arquivo teste.txt para teste1.txt
cp teste.txt /tmp                     #: Copia o arquivo teste.txt para dentro do diretório /tmp
cp * /tmp                             #: Copia todos os arquivos do diretório atual para /tmp
cp -R /bin /tmp                       #: Copia todos os arquivos e o diretório /bin para /tmp
mv                                    #: Move ou renomeia arquivos e diretório
mv -f                                 #: Substitui o arquivo de destino sem perguntar
mv -i                                 #: Pergunta antes de substituir. É o padrão
mv -v                                 #: Mostra os arquivos que estão sendo movido
mv teste.txt teste1.txt               #: Muda o nome do arquivo teste.txt para teste1.txt
mv teste.txt /tmp                     #: Move o arquivo teste.txt para /tmp
  
 ```
  
 # Comandos_Diversos
  
  
 ```.sh
  
  
df                          #: Mostra o espaço livre/ocupado de cada partição
df -h                       #: Tamanho dos arquivos e diretórios em GB
df -m                       #: Tamanhos em Mb
df -hT /home                #: Específico
dt -T                       #: Tipo de sistema de arquivos
free                        #: Mostra detalhes sobre a utilização da memória RAM do sistema
free -m                     #: Mostra o resultado em Mbytes
free -t                     #: Mostra uma linha contendo o total
grep                        #: Procura por um texto dentro de um arquivo grep “capitulo” texto.txt, ps ax | grep inetd, grep “capitulo” texto.txt -A 2 -B 2
nl teste.txt                #: Mostra o número de linhas junto com o conteúdo de um arquivo
tail                        #: Mostra as linhas finais de um arquivo texto
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
 
# Comandos_Rede
  
 ```.sh
  
  
ifconfig                                          #: Verificar seu endereço IP
ifconfig eth0                                     #: Exibe a configuração de uma placa de rede eth0
ifup eth0                                         #: Ativa uma interface ‘eth0’
ifdown eth0                                       #: Desabilita
ifconfig eth0 192.168.0.1 netmask 255.255.255.0   #: Configura IP
dhclient eth0                                     #: Ativa a interface ‘eth0’ em modo dhcp
route -n                                          #: Exibe tabela de rota
host www.google.com                               #: Descobrir o endereço IP de um host
iwconfig eth1                                     #: Exibe a configuração de uma placa de rede sem fio
iwlist scan                                       #: Exibe as redes sem fio
who                                               #: Mostra quem está atualmente conectado no computador
who -b                                            #: Mostra o horário do último boot do sistema
who -q                                            #: Mostra o total de usuários conectados aos terminais
who -r                                            #: Mostra o nível de execução atual do sistema
who -H                                            #: Mostra o cabeçalho das colunas
whoami                                            #: Mostra o nome que usou para se conectar ao sistema
dnsdomainname                                     #: Mostra o nome do domínio de seu sistema
hostname                                          #: Mostra ou muda o nome de seu computador na rede
traceroute                                        #: Mostra na tela o caminho percorrido entre os Gateways da rede
traceroute -n                                     #: Endereços numericamente ao invés de usar resolução DNS
traceroute www.debian.org                         #: Caminho percorrido por um pacote
tracepath www.google.com                          #: Parecido ao comando traceroute 
netstat                                           #: Mostra conexões de rede, tabela de roteamento, estatísticas...
netstat -i eth0                                   #: Estatísticas da interface de rede
netstat -t eth0                                   #: Lista conexões TCP
netstat -u eth0                                   #: Lista conexões UD
wall                                              #: Faz a leitura de um arquivo e escreve o resultado em todos os terminais
wall teste.txt                                    #: Somente o usuário root pode utilizar este comando

  
 # Exemplo: wall /tmp/mensagem.txt, echo Teste de mensagem enviada a todos
 # os usuários conectados ao sistema | wall 
 
 ```
  
 # Acessos_Remoto
  
 ```.sh

apt-get install openssh-client                    #: Instalação do cliente
apt-get install openssh-server                    #: Instalação do servidor
ssh usuario@192.168.1.20                          #: ok
ssh -p porta usuário@ip                           #: Conectar por uma porta especificada
  
 ```
  
  
 # Manipula_Contas
  
  
  ```.sh
  
adduser                    #: Adiciona um usuário ou grupo no sistema
adduser fernando           #: Cria um usuário chamado fernando
adduser -group usuarios    #: Cria um novo grupo ao invés de um novo usuário
userdel                    #: Apagar
userdel -r fernando        #: Força a remoção dos dados do usuário
userdel -f fernando        #: Remove o diretório HOME
groups                     #: Mostra os grupos que o usuário pertence
addgroup                   #: Adiciona um novo grupo de usuários no sistema
addgroup usuarios2         #: As opções usadas são as mesmas do adduser
groupdel usuarios2         #: Apaga um grupo do sistema
passwd                     #: Modifica a parâmetros e senha de usuário
passwd fernando            #: Muda a senha
passwd -x fernando         #: Especifica o número de dias que a senha poderá ser usada
passwd -i fernando         #: Mínimo de dias para a senha ser alterada
passwd -l fernando         #: Bloqueia a conta do usuário
passwd -u fernando         #: Desbloqueia a conta de um usuário
   
 ```
  
 # Arquivos_Compactados
  
 ```.sh
  
bzip2                       #: Comprime um arquivo
bunzip2                     #: Descompacta um arquivo
gzip                        #: Comprime um arquivo
gunzip                      #: Descompacta um arquivo
tar -cvf arquivo.tar arq1 arq2 pasta1: Cria um arquivo contendo ‘arq1’, ‘ arq2′ e ‘pasta1’
tar -xvf arquivo.tar        #: Extrai um arquivo tar
  
  
#.bz2 = Arquivo compactado com o bzip2
#.gz = Arquivo compactado com o gzip
#.tar = tar armazena vários arquivos em um único arquivo
   
 ```
  

# Repositorios
  
 ```.sh  
  
apt update               #: Atualiza a lista do repositório
apt upgrade              #: Atualiza seus pacotes
apt dist-upgrade         #: Atualiza sua Distribuição
cat /etc/sources.list    #: Exibe a lista dentro do repositório
apt autoclean            #: Apaga os pacotes que não existem mais
apt autoremove           #: Apaga os pacotes abandonados
apt remove nome-pacote   #: Remove um pacote
  
 ```
  
 # Repositorios_Redhat_Fedora_CentOS
  
 ```.sh
  
  
yum install nome-pacote             #: Baixa e instala um pacote rpm
yum localinstall nome-pacote.rpm    #:Instalar um RPM e vai tentar resolver todas as dependências para você, usando seus repositórios
yum update nome-pacote              #: Atualiza todos os pacotes instalados no sistema
yum remove                          #: Remove um pacote RPM
yum list                            #: Lista todos os pacotes instalados no sistema
yum search nome-pacote              #: Encontra um pacote no repositório rpm
yum clean packages                  #: Limpa um cache de rpm, apagando os pacotes baixados
yum clean all                       #: Remove os arquivos de cache e o cabeçalho do pacote
 
 ```
  
  
  
  # Instalacao
  
  ```shell
  $ tree
  .
  ├── Instalação
  │   └── Swap
  |   └── /usr (via NFS)
  |   └── Limitação 1024 ciclos
  ├── Gerenciador de Boot
  |     └── LILO
  |       ├── /etc/lilo.conf
  |       ├── lilo
  |     └── GRUB
  |       ├── /boot/grub/menu.lst
  |       ├── /sbin/grub-install
  |
  ├── /var
  ├── /home
  ├── /boot
  ├── /(raiz)
  ├── /tmp
  └── MBR
     
```
  
 

# FHS

>FHS - FileSystem Hierarchy Standart</br>
>Hierarquia Padrão do Sistema de Arquivos

 ```shell
  
/(Diretório raiz)

├── /home #Diretório de trabalho dos usuários
├── /root #Diretório de trabalho do administrador   
├── /boot #kernel do sistema - processo de boot
├── /bin  #a maioria dos programas possui o seu aquivo executável
├── /sbin #ferramentas para configurar e manutenção do sistema
├── /lib  #bibliotecas compartilhadas
├── /dev  #arquivos de dispositivos de suporte
├── /etc  #arquivos de configuração específicos à máquina
├── /tmp  #arquivos temporários
├── /mnt  #local de montagem dos discos flexíveis 
├── /proc #processos em execução
├── /usr  #todo o sistema Linux se encontra sob ele
├── /var  #contém arquivos de dados variáveis
└── /opt  #pacotes adicionais
  
```
