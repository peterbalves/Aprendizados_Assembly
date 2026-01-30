Organização basica de computadores


Exemplo de computador

```text
                                          -----------
 ----------                              |           |
|          |             BARRAMENTO      |           |
|    CPU   | --------------------------- |  MEMORIA  |
|          |                  |          |           |
|          |                  |          |           |
| Register |                  |           -----------
|    ULA   |                  |
|    UC    |                  |
|          |        -----------------
 ----------        |                 |
                   | DISPOSITIVOS DE |
                   | ENTRADA E SAIDA |
                   |                 |
                    -----------------
```


CPU -> Central Processing Unit

    Basicamente o cerebro do computador, pense no computador como uma grande calculadora
    A CPU é a responsavel por fazer todos os calculos matematicos
    Na CPU teremos partes como os registradores que são as memorias da CPU
    Cada CPU tem sua ISA (Instruction Set Architecture) ou seja cada arquitetura tera seu Assembly
    Falando de Assembly, assembly nada mais é do que uma tradução do codigo de maquina (lido pela CPU)
    para um codigo mais "humano"

REGISTRADORES -> Os registradores são o meio de armazenamento da CPU, A CPU pode acessar dados dos registradores mais rapidamente do que qualquer outro meio de aramazenamento; no entanto seu tamanho limitado significa que ele precisa ser usado de uma forma eficiente. Para isso os registradores são divididos nos seguintes tipos diferentes.

    Ponteiro de instruções 
    Registradores de Uso Geral 
    Registradores de Status Flag 
    Registradores de Segmento
    
O PONTEIRO DE INSTRUÇÕES -> O ponteiro de instrução é um registrador que contém o endereço da proxima instrução a ser executada pela CPU. Tambem é chamado de controlador de programa. Originalmente era um registrador de 16 bits no processador intel 8086 (de onde se originou o termo x86) e era abreviado como IP. Em processadores de 32 bits o ponteiro de instrução tornou-se um registrador de 32 chamado de EIP ou Ponteiro de Instrução Estendido. Em sistema de 64 bits, esse registrador tornou-se um registrador de 64 bits chamado RIP (o R aqui siginifica registrador)

REGISTRADORES DE USO GERAL -> Os registradores de proposito geral em um sistema de x86 são todos registradores de 32 bits. Como o nome sugere, eles são usados durante a execução geral de instruções pela CPU. Em sistemas de 64 bits esses registradores são estendidos para 64 bits. Eles contem seguintes registradores:

EAX ou RAX -> Este é o registrador acumulador. Os resultados de operações aritmeticas são frequentemente armazenados neste registrador. Em sistemas de 32 bits, existe um registrador EAX de 32 bits, enquanto em sistemas de 64 bits existe um registrado RAX de 64 bits. Os ultimos 16 bits deste registrador podem ser acessados enderaçando AX. Da mesma forma ele também pode ser endreçado em blocos de 8 bits usando AL para os 8 bits menos significativos e AH para os 8 bits mais significativos.


```text
                            EAX       AX 
        |                         | AH | AL |
        -------------------------------------
                        RAX 




                            EBX       BX 
        |                         | BH | BL |
        -------------------------------------
                        RBX



                            ECX       CX 
        |                         | CH | CL |
        -------------------------------------
                        RCX 


                            EDX       DX 
        |                         | DH | DL |
        -------------------------------------
                        RDX



                            ESI        
        |                         |    SI   |
        -------------------------------------
                        RSI 



                            EDI        
        |                         |    DI   |
        -------------------------------------
                        RDI 



                            EBP        
        |                         |    BP   |
        -------------------------------------
                        RBP 



                            ESP       
        |                         |    SP   |
        -------------------------------------
                        RSP  

```
EBX ou RBX -> Este registrador tambem é chamado de Registrador Base, frequentemente usado para armazenar o endereço base para referenciar um deslocamento. Similar ao EAX/RAX, ele pode ser endereçado como registradores de 64 bits (RBX), 32 bits (EBX), 16 bits (BX) e 8 bits (BH e BL).


ECX ou RCX -> Este registrador tambem é chamado de registrador contador e é frequentemente usado em operações de contagem, como loops, etc. Semelhante aos dois registradores anteriores, ele pode ser endereçado como registradores RCX de 64 bits, ECX de 32 bits, CX de 16 bits e CH e CL de 8 bits

EDX ou RDX -> Este registrador tambem é chamado de registrador de Dados. Ele é frequentemente usado em operações de multiplicação/divisão. Semelhante aos registradores mencionados anteriormente, ele pode ser endereçado como registradores RDX de 64 bits, ECX de bits, DX de 16 bits e DH e DL de 8 bits


ESP ou RSP -> Este registrador é chamado de ponteiro de pila. Ele aponta para o topo da pilha e é usado em conjunto com registrador de Segmento de pilha. é um registrador de 32 bits chamdo ESP em sistemas de 32 bits e um registrador de 64 bits chamado RSP em sistemas de 64 bits. Ele não pode ser endereçado como registradores menores.


EBP ou RBP -> Este registrador é chamado de Ponteiro Base. Ele é usado para acessar parametros passados pela pilha. Tambem é usado em conjunto com o registrador de segmento de Pilha. É um registrador de 32 bits chamados EBP em sistemas de 32 bits e um registrador de 64 bits chamado RBP em sistemas de 64 bits.

ESI ou RDI -> Este registrador é chamado de registrador de indice de Destino. Ele tambem é usado para operações com strings. É usado em conjunto com o registrador de Segmento Extra (ES) como um deslocamenteo. É um registrador de 32 bits chamado EDI em sistemas de 32 bits e um registrador 64 bits chamado RDI em sistemas de 64 bits

R8-R15 -> Esses registradores de uso geral de 64 bits não estão presentes em sistemas de 32 bits. Eles foram introduzidos em sistemas de 64 bits. Tambem podem ser endereçados nos modos de 32 bits, 16 bits e 8 bits. Por exemplo para registrador R8, podemos usar R8D para endereçamento de 32 bits, R8W para endereçamentos de 16 bits e R8B para endereçamento de 8 bits. Aqui, o sufixo D significa double-Word (Palavra Dupla), W significa Word (palavra) e B significa Byte

```text
     ------------------------------------------------------------------------
    | 64 BITS           | 32 BITS          | 16 BITS       | 8 BITS          |
     ------------------------------------------------------------------------
    |    rax            |    eax           |     ax        |    ah|al        |
    |    rbx            |    ebx           |     bx        |    bh|bl        |
    |    rcx            |    ecx           |     cx        |    ch|cl        |
    |    rdx            |    edx           |     dx        |    dh|dl        |
    |    rsi            |    esi           |     si        |                 |
    |    rdi            |    edi           |     di        |                 |
    |    rsp            |    esp           |     sp        |                 |
    |    rbp            |    ebp           |     bp        |                 |
    |    rip            |    eip           |     ip        |                 |
     ------------------------------------------------------------------------
```
     EAX -> Accumulator
     EBX -> Base 
     ECX -> Counter
     EDX -> Data
     ESI -> Source Index
     EDI -> Destination Index
     ESP -> Stack Pointer (Aponta para o topo da stack)
     EBP -> Base Pointer (Aponta para a base da stack)
     EIP -> Instruction Pointer (Aponta para o proximo endereço)

     AX -> AH/AL 
           AH -> HIGH (Bits mais significativos)
           AL -> LOW (Bits menos significativos)


ULA (UNIDADE DE LOGICA E ARITMETICA) -> É responsavel pelos calculos, executa a instruçãoo buscada na memoria. Os resultados da intrução executadas são armazenados nos registradores ou na memoria 

UC (UNIDADE DE CONTROLE) -> É responsavel por receber instruções da memoria principal. O endereço da proxima instrução a ser executada é armazenada em um registrador (IP).


MEMORIA -> A memoria, tambem chamada de memoria principal ou memoria de acesso aleatorio (RAM) contem todo o codigo e os dados nescessarios para execuçao de um programa. Quando um usuario executa um programa, seu codigo e dados são carregados na memoria, de onde a CPU acessa o conteudo uma instrução por vez
    LAYOUT BASE DE memoria
    ```text
     ---------------------
    |                     |
    |       TEXT          | -> Instruções
    |                     |
    |---------------------|
    |                     |
    |       DATA          | -> Variavies Previamente Inicializadas
    |                     |
    |---------------------|
    |                     |
    |       BSS           | -> Variaveis não inicializadas
    |                     |
    |---------------------|
    |                     |
    |       HEAP          | -> Espaço de alocação dinamica
    |                     |
    |---------------------|
    |                     |
    |   UNUSED MEMORY     |
    |                     |
    |---------------------|
    |                     |
    |       STACK         |  -> LIFO (Last In Fist Out)
    |                     |
     ---------------------
```



DISPOSITIVOS DE ENTRADA E SAIDA -> Dispositivos de Entrada e Saida são todos os outros dispositvos que interagem com um computador. Esses dispositivos incluem teclados, mouses, monitores, impresoras, dispositivos de armazenamento em massa como dico rigidos e pen drives etc.

Em resumo quando um programa precisa ser executado ele é carregado na memoria. A partir dai a Unidade de Controle (UC) busca uma instrução por vez usando o registrador de ponteiro de instruções (IP) e a Unidade de Logica e Artimetica (ULA) a executa. Os resultados são armazenados nos registradores ou na memoria.

Aseembly:

USAREI UM LINUX COMO BASE, NO MEU CASO UM ARCH LINUX

    HELLO WORLD ASSEMBLY 
```assembly
        section .data ; Acessando a sessão aonde ficara nossa "variavel"
        message: db "Hello World", 0xa,0xd ; Criando nossa variavel
                                           ; db -> despejando os bytes equivalentes a "Hello World" e os bytes equivalentes a quebra de linha 0xa (quebra de linha) e 0xd (retorno ao começo) em message 

        section .text ; Acessando a sessão de codigo
        
        global _main: ; setando nosso label2
        _main: 
            mov eax, 4 ; movendo numero da syscall 4 (write) para eax 
            mov ebx, 1 ; local aonde vamos escrever os bytes (stdout) 
            mov ecx, message ; passando nosso buffer (variavel)
            mov edx, 13 ; passando a quantidade de bytes do nosso buffer (message + 0xa,0xd = 13)
            int 0x80 ; faz a chamada de sistema
        
            mov eax, 1 ; movendo numero da syscall 1 (exit)
            int 0x80
```
    ASSEMBLER + LINKER

        nasm -f elf32 hello.asm -o hello.o 
        ld -m elf_i386 hello.o -o hello -e _main
        chmod +x hello 
        ./hello 




    ENDEREÇAMENTOS
    
        ENDEREÇAMENTO IMEDIATO
        ```assembly
            mov eax, 0xA``` -> Movendo 0xA (10) para eax

        ENDEREÇAMENTO DIRETO POR REGISTRADOR 
            mov ebx, eax -> Movendo o valor de eax para ebx 

        SETANDO UM STACK FRAME
        ```assembly
            mov ebp, esp ```-> Movendo topo da pilha para a base da pilha, assim setamos um stack frame
            ```assembly
            push 0x5 ```-> exemplo movendo 0x5 para o endereço 0xFFC
            ```assembly
            mov eax, [0xFFC]``` -> movendo para eax o valor que esta em 0xFFC 



        ENDEREÇAMENTOS RELATIVOS
        ```assembly
            mov eax, [rbx]``` -> movendo o conteudo da memoria começando até 4 bytes pois os 2 operandos precisam ter o mesmo tamanho
            ```assembly
            section .data
                message: db "Peterson",0xa,0xd ```

            ```assembly
            section .text 
                mov eax, [message] ``` -> aqui seria movido os 4 primeiros bytes para eax ou seja Pete 

        USANDO LEA (load effective address)
        ```assembly
        lea eax, [ebx] ``` -> nesse caso mesma coisa que mov eax,ebx   

        ```assembly
        mov eax, [message + ebx] ``` -> copia o conteudo da memoria começando em message+ebx (copia 4 bytes)


        ```assembly
        lea eax, [message + ebx] ``` -> seria a mesma coisa que fazer mov eax, message e depois add eax,ebx (copia o endereço dessa possição em especifico)

        OU SEJA, VAMOS SUPOR QUE TEMOS UMA STRING
        ```assembly
        section .data 
            nome, "Peter",0xa,0xd

        section .text 
            mov rbx, 1
            lea rax, [nome+rbx]
        ```
        

        ---------------------------
            endereços 
            P = 1000
            E = 1001
            T = 1002
            E = 1003
            R = 1004


            rax == nome+rbx (endereço de nome(byte onde começa a string + rbx que é 1, entao seria 1001)


-----------------------------------------------------------------------------------------------------

SESSÕES (sabemos que um computador não sabe diferenciar uma instrução de um dado, por isso usamos sessões)
    
    ```assembly
    section .data ; -> aonde sera armazenado nossos dados inicializados (onde declaramos nossas variaveis)

    variavel: db "Hello World!",0xa,0xd

    section .bss ; -> aonde sera armazenado nossos dados não inicializados (exemplo uma variavel que recebe um input do usuario)


    name: resb 30

    section .txt ; -> aonde armazena nosso codio ou seja nossas intruções 

    global _start: ; -> nosso entry point, aonde nosso binario começa a executar

    _start:
        mov rax,1 
        mov rdi, 1 
        mov rsi, message 
        mov rdx, 14 
        syscall

```
LABELS (ROTULOS)

    Rotulos são usados para rotular instruções, assim nao precisamos chamar o endereço de memoria daquela instrução e sim apenas seu rotulo 
    Usamos a sintax rotulo:

    exemplos usados acima
    variavel:
    name:
    _main:


DIRETIVAS
    Alem de dados e instruções temos o que mas chamamos de diretivas, exemplo quando usamos variavel: db "Oi"
    db é a nossa diretiva, nesse cado pedindo para despejar os bytes equivalentes a Oi no nosso rotulo
    Outro exemplo é o global aonde definimos o nosso entry point no exemplo acima




INPUT EM ASSEMBLY 
    input.asm

```assembly 
section .data
    message0: db "Ola "
    message1: db " Bem Vindo!",0xa

section .bss
    name: resb 100

section .text
    global _main
    
    _main:

        ; Recebe dados
        mov rax, 0 ; numero da syscall read (0)
        mov rdi, 0 ; stdin
        mov rsi, name ; destino
        mov rdx, 100 ; tamanho
        syscall
        
        mov r12, rax ; rax retorna o numero de bytes do input e passamos isso para r12
        dec r12 ; em rax retorna todos os bytes inclusive o \n, como vamos decrementar tiramos o byte \n
        ; Output ola 
        mov rax, 1 
        mov rdi, 1 
        mov rsi, message0 
        mov rdx, 4
        syscall 

        ; Output name
        mov rax, 1 ; numero syscall write
        mov rdi, 1 ; stdout
        mov rsi, name ; recebe o buffer
        mov rdx, r12 ; tamanho do buffer 
        syscall ; chamada de sistema

        ; Output Bem vindo 

        mov rax, 1 
        mov rdi, 1 
        mov rsi, message1 
        mov rdx, 12
        syscall

        ; exit
        mov rax, 60
        mov rdi, 0 
        syscall

```
JUMPS (SALTOS)

tipos de saltos que temos
    jmp -> salta sem testar condição 
    je -> salta quando igual
    jz -> salta quando for igual a zero
    jne -> salta quando for diferente
    jnz -> salta quando não for zero
    ja -> salta quando for acima 
    jae -> salta quando for acima ou igual 
    jb -> salta quando for abaixo
    jbe -> salta quando for abaixo ou igual 
    jg -> salta quando for maior que 
    jge -> salta quando for maior ou igual 
    jl -> salta quando for menor 
    jle -> salta quando for menor ou igual 
    call -> chama função 
    ret -> retorna da função


    Exemplo de uso de um JUMP 

```assembly 

default rel
section .data:
    message: db "Digite o numero 0 ou 1: "
    zero_number: db '0'
    one_number: db '1'
section .bss
    number: resb 1

section .text
    global _main

    _main:
        
        ; Pergunta
        mov rax,1
        mov rdi,1
        mov rsi, message
        mov rdx, 24
        syscall

        ; Input
        mov rax,0 ; syscall read
        mov rdi, 0 ; stdin
        mov rsi,number ; buffer
        mov rdx, 1 ; tamanho do buffer
        syscall
        
        mov al, [number]
        cmp al, '0'
        je zero

        cmp al, '1'
        je one 
        
        jmp exit

        zero:
            mov rax, 1 ; syscall write
            mov rdi, 1 ; stdout
            mov rsi, zero_number ; buffer
            mov rdx, 1 ; tamanho do buffer 
            syscall  

        ; Output
        one:
            mov rax, 1 ; syscall write
            mov rdi, 1 ; stdout
            mov rsi, one_number ; buffer
            mov rdx, 1 ; tamanho do buffer 
            syscall 

        ; exit
        exit:
            mov rax, 60
            mov rdi, 0
            syscall

```


Registradores de Status Flag -> Ao executar um programa, as vezes é necessario indicar o seu estado. É ai que entram os Flags de status. Trata-se de um unico registrador de 32 bits para sistemas de 32 bits, chamado EFLAGS que é expandido para 64 e em sistemas 64 birs sendo denominado RFLAGS. O registrador de flags de status consiste em flags individuais de unico bit que podem ser 0 ou 1 Algumas flags necessarias são discutidas abaixo


ABAIXO TEMOS O EXEMPLO DO EFLAGS (32 BITS)

```text
      --------------------------------------------------------------------------------------------------------------------------------------------------------------
      |EFLAGS| 31 | 30 | 29 | 28 | 27 | 26 | 25 | 24 | 23 | 22 | 21 | 20 | 19 | 18 | 17 | 16 | 15 | 14  | 13  12 | 11 | 10 | 9 | 8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
      |----------------------------------------------------------------------------------------------------------------------------------------------------------- |
      |      |  0   | 0 | 0 | 0  |  0 |  0  | 0 | 0 | 0  |  I  |  VI  | VI  |  A  |  V  |  R  | 0  | N  |   I O   | O  | D | I | T | S | Z | 0 | A | 0 | P | 1 | C |
      |      |  0   | 0 | 0 | 0  |    |     |   |   |    |  D  |  P   |  F  |  C  |  M  |  F  |    | T  |   P L   | F  | F | F | F | F | F |   | F |   | F |   | F |
      ---------------------------------------------------------------------------------------------------------------------------------------------------------------

Zero Flag(ZF)
CF (Carry Flag) 
SF (Sign Flag) 
TF (Trap Flag) 
OF (Overflow Flag)
PF (Parity Flag)
AF (Auxiliary Flag)
IF (Interrupt Enable Flag)
DF (Direction Flag)
```
Acima vemos que os bits podem estar setados ou não setados, em uma arquiteturade 64 bits aonde teriamos RFLAGS so iriamos complementar a imagem ate a casa 63 totalizando 64 bits, mas lembre-se que os outros 32 bits são reservados

Zero Flag -> Conhecido como ZF (Zero Flag) indica quando o resultado da ultima instrução executada foi zero. Por exemplo se uma intrução for executada subtraindo RAX de si mesma, o resultado sera 0. Nessa situação o ZF sera definido como 1.

Carry Flag -> Conhecido como CF (Carry Flag) indica quando a ultima instrução executada resultou em um numero muito grande ou muito pequeno para o destino. Por exemplo se sormarmos 0xFFFFFFFF e 0x00000111 e armazenarmos o resultado em um registrador de 32 bits, o resultado sera muito grande para nosso registrador, então o CF sera definido como 1, ou seja segnifica que ocorreu um overflow sem sinal.
    255 + 1 -> 256 
        CF -> 1
      111 -> 3 bits 
    + 101 -> 3 bits
     ----
     1100 -> 4 bits (overflow sem sinal acionando o CF)
        CF -> 1

Parity Flag -> Conhecido como PF é ativada se o ultimo byte do resultado tiver um numero par de bits "1". Contamos quantos 1 existem no byte final 
    Se for par -> PF = 1 
    Se for impar -> PF = 0

    10101010 -> 4 bits "1"
    PF -> 1 
    10101011 -> 5 bits "1"
    PF -> 0

Auxiliary Flag -> Conhecida como AF é ativada quando ha um "vai-um" ou emprestismo do bit 3 para o bit 4 (usada em aritmetica BCD). Serve para calculos com numeros decimais codificados em binarios (BCD). Quase não é usada hoje em dia 
    9 + 1 = 10 (Em BCD) 
    AF = 1

Sign Flag -> Conhecido como SF (Sign Flag) indica se o resultado de uma operação é negativo ou se o bit mais significativo sera definido como 1. Se essas condições forem atendidas o registrador SF é definido como 1, caso o bit mais significativo esteja setado em 0 ou o resultado da operação seja positivo o SF é definido como 0.
    SF = 1 -> negativo 
    SF = 0 -> positivo 

Trap Flag -> Conhecido como TF (Trap Flag) indica se o processador esta em modo de depuração. Quando o TF esta ativado, a CPU executara uma instrução por vez para fins de depuração. Isso podeser usado por malware para indentificar se ele esta sendo executado em um depurador

Overflow Flag -> Conhecido como OF (Overflow Flag) -> indica quando a ultima instrução resultou em um overflow porem com sinal, ou seja segue a mesma ideia do carry flag, porem o carry flag ocorre sem sinal, ja o overflow flag ocorre com sinal.
    OF = 1 -> Ocorreu um overflow com sinal 
    OF = 0 -> Não ocorreu um overflow com sinal 
    127 + 1 = - 128 (Em 8 bits com sinal)
        OF = 1

Direction Flag -> conhecido como DF ela determina a direção das instruções de manipulação de strings 
    DF = 0 -> Processa da esquerda para direita 
    DF = 1 -> Processa da direita para a esquerda 
    
    DF = 0 -> Incrementa ponteiro 
    DF = 1 -> Decrementa ponteiro 

Interrupt Enable Flag -> Conhecido como IF se ativada permite interrupções de hardware
    IF = 1 -> CPU pode ser interrompida
    IF = 0 -> Interrupções desativadas

nota: jumps estão atrelados as flags
        Aqui mostro com 2 jumps, o jz (jump if zero) e jnz (jump if not zero)
        jz label_x -> Ocorre quando o Zero Flag (zf) está como 1
        jnz label_x -> Ocorre quando o Zero Flag (zf) está como 0  

```text 

    ------------------------------------------------------------------------------------------------------------------------------------
    |  Registradores Gerais   |   Registradores de Segmenta    |  Registrador de Status Flag  | Registrador de Ponteiro de Instruções  |
    ------------------------------------------------------------------------------------------------------------------------------------
    |  RAX, EAX, AX, AH, AL   |                 CS             |      RFLAFS, EFLAGS, FLAGS   |              RIP, EIP, IP              |
    |  RBX, EBX, BX, BH, BL   |                 SS             |                              |                                        |
    |  RCX, ECX, CX ,CH, CL   |                 DS             |                              |                                        |
    |  RDX, EDX, DX, DH, DL   |                 ES             |                              |                                        |
    |  RBP, EBP, BP           |                 FS             |                              |                                        |
    |  RSP, ESP, SP           |                 GS             |                              |                                        |
    |  RSI, ESI, SI           |                                |                              |                                        |
    |  RDI, EDI, DI           |                                |                              |                                        |
    |  R8 a R15               |                                |                              |                                        |
    ------------------------------------------------------------------------------------------------------------------------------------
```

Registradores de Segmento -> Os registradores de segmento são registradores de 16 bits que convertem o espaço de memoria plano em diferentes segmentos para facilitar o endereçamento. Existem 6 registradores de segmento conforme explicado abaixo:

Code Segment -> O registrador CS aponta para a seção de codigo na memoria 

Data Segment -> O registrador DS aponta para a seção de dados do programa na memoria 

Stack Segment -> O registrador SS aponta para a pilha do programa na memoria 

Extra Segments (ES, FS e GS) -> Esses registradores de segmento extra apontam para diferentes seções de dados. Eles juntamente com o registrador DS, dividem a memoria do programa em4 seções de dados distintas

Pense em um armario, agora imagina que ele foi divido em gavetas, cada gaveta é algo exemplo: codigo, dados, stack..., os registradores de segmento apenas indicão qual gaveta deve ser acessada pela cpu ,as não apontam diretamente para o dado final e sim para o inicio da gaveta

Visão Geral da Memoria -> Quando um progrma é carregado na memoria do sistema operacional Windows, ele vizualiza uma visão abstrata da memoria. Isso significa que o programa não tem acesso a memoria completa e sim apenas a sua propia memoria alocada para esse programa, essa é toda a memoria que ele precisa.

             Main 
            Memory
    ----------------------
    |                    |
    |       STACK        |
    |                    |
    ----------------------
    |                    |
    |       HEAP         |
    |                    |
    ----------------------
    |                    |
    |                    |
    |       CODE         |
    |                    |
    |                    |
    ----------------------
    |                    |
    |       DATA         |
    |                    |
    ----------------------


Code (TEXT) → A seção de código, como o próprio nome sugere, armazena as instruções do programa. Em especial, ela corresponde à seção de texto de um arquivo executável portátil (PE), contendo as instruções que serão processadas pela CPU. Essa área da memória possui permissão de execução, o que significa que o processador está autorizado a executar diretamente os dados armazenados nela.

Data → A seção de dados abriga informações inicializadas que não sofrem alteração durante a execução do programa. Ela está associada à seção de dados de um arquivo executável portátil e, normalmente, contém variáveis globais e outros elementos que devem permanecer constantes ao longo do funcionamento da aplicação.

Heap → A Heap, também conhecida como memória dinâmica, é responsável por armazenar variáveis e estruturas alocadas e liberadas em tempo de execução. Quando uma variável é criada dinamicamente, o espaço necessário é reservado nessa região; ao ser removida, a memória é devolvida ao sistema. Por esse motivo, essa área recebe o nome de memória dinâmica.

Stack → A Stack é uma das regiões mais relevantes da memória sob a perspectiva da análise de malware. Nela são armazenadas variáveis locais, parâmetros passados para funções e o endereço de retorno do processo ou função chamadora. Como esse endereço de retorno está diretamente ligado ao fluxo de execução do programa, a Stack torna-se um ponto crítico para análise e exploração.


Layout da Stack -> A stack é uma parte da memoria de um programa que contem os argumentos passoados para o programa, as variaveis locais e o fluxo de controle do programa. Isso torna a stack extremamente importante no ponto de vista de um engenheiro reverso. A stack é uma memoria LIFO (Last In First Out) ou seja o primeiro a entrar é o ultimo a sair, então o ultimo elemento a ser colocado na stack é o primeiro elemento a ser removido dela. Por exemplo se colocarmos na stack O, L, A o primeiro elemento a ser removido é A, logo depois L e finalmente o primeiro O. A CPU utiliza dois registradores para controlar a stack, são eles o registrador de ponteiro da pilha (ESP em 32 bits e em 64 bits RSP) e o registrador de ponteiro base (EBP em 32 bits e RBP em 64 bits)


Stack Pointer -> O Ponteiro da stack, conhecido como Stack Pointer aponta para o todo da stack. Quando um novo elemento é colocado na stack a posição do nosso stack pointer muda para refletir a esse elemento, pois o mesmo está no topo da stack, se o elemento for removido o stack pointer ajusta para acompanhar essa mudança

Base Pointer -> O Ponteiro base, conhecido como Base Pointer em qualquer programa permanace constante, esse é o endereço de referencia aonde a stack do programa atual rastreia suas variaveis locais e argumentos


Pointer Base antigo e endereço de retorno -> Abaixo do ponteiro base encontra-se o ponteiro base anterior do progrma que o programa atual. E abaixo do ponteiro de base anterior encontra-se o endereço de retorno, para onde o ponteiro de instrução retornara assim que a execução do programa atual terminar.

Argumentos -> Os argumentos passados para uma função são colocados na pilha antes do inicio da execução. Esses argumentos ficam localizados logo abaixo do endereço de retorno da pilha

Prologo e Epilogo da função -> Quando a uma chamada de função a stack é prepada para a execução da função. ou seja os argumentos são colocados na stack antes da função ser executada, logo depois o endereço de retorno e o ponteiro base antigo são colocados na stack, depois desses elementos colocados na stack o endereço do ponteiro baseé alterado para o topo da pilha (que sera o ponteiro de pilha que chamou a função naquele momento), A medida que a função é executada o ponteiro de pilha se move conforme as necessedidades da função. Essa parte do codigo que coloca os argumentos, o endereço de retorno e o ponteiro base na pilha e reorganiza a pilha e os ponteiros base é chamada de prologo da função  Da mesma forma que o pronteiro antigo é removido da pilja e movido para o ponteiro base quando a função termina. O endereço de retorno é movido para o ponteiro de instrução e o ponteiro de pilha é reorganizado para apontar para o topo da stack. A parte do codigo que executa essa ação é chamada de epilogo da função.

Nesse exemplo a pilha cresce dos endereços maiores para endereços menores 
```
Endereços maiores
       ^             ----------------------
       |             |   Argumento 1      |
       |             ----------------------
       |             |   Argumento 2      |
       |             ----------------------
       |             |  ENDREÇO DE RETONO |
       |             ----------------------
       |             |    RBP ANTIGO      |
       |             ----------------------
       |             |   Variavel Local 1 |
       |             ----------------------
       |             |   Variavel Local 2 |
       |             ----------------------
       |             |   Variavel Local 3 |
       |             ----------------------
       |
       | 
       ✓
Endereços menores
``
Assembly é o nível mais baixo de linguagem que ainda é legível para humanos. Ao mesmo tempo, é o nível mais alto de linguagem para o qual um binário pode ser descompilado de forma confiável. No estudo de engenharia reversa de malware, entender os fundamentos de assembly é essencial, pois na maioria das vezes a amostra analisada é um binário já compilado. Nesses casos, não é possível visualizar o código na linguagem original utilizada pelo desenvolvedor, restando apenas a análise do código em nível de assembly.

O código de um programa, da forma como é armazenado em disco e interpretado pela CPU, está em formato binário. Isso significa que o código é composto apenas por sequências de 0 e 1. Para facilitar a leitura, esses bits geralmente são agrupados em conjuntos de 8 bits, chamados de bytes, e representados em formato hexadecimal. Por exemplo, o número binário 10100101 pode ser dividido em dois grupos de 4 bits: 1010, que corresponde a A em hexadecimal, e 0101, que corresponde a 5 em hexadecimal, resultando no valor 0xA5.

Os opcodes são valores numéricos que representam instruções executadas pela CPU. Quando utilizamos um desassemblador para analisar um programa, ele lê os opcodes presentes no binário e os converte em instruções de assembly legíveis para humanos. Por exemplo, a instrução responsável por mover o valor 0x5f para o registrador eax é representada em assembly como mov eax, 0x5f. Em um desassemblador, essa mesma instrução pode aparecer acompanhada do endereço de memória, do opcode e dos operandos em formato hexadecimal. O endereço indica onde a instrução está localizada na memória, o opcode identifica a instrução em si e os bytes seguintes representam os operandos. Devido ao uso do padrão little-endian, os bytes do operando imediato aparecem invertidos na memória, com o byte menos significativo vindo primeiro.

Cada instrução da linguagem assembly possui um opcode correspondente. Existem tabelas de referência que permitem converter opcodes em instruções, porém na prática não é necessário consultá-las, já que os desassembladores realizam esse trabalho automaticamente. Ainda assim, compreender esse processo interno ajuda a ter uma visão mais completa de como o código é executado.

Uma instrução em assembly normalmente é composta por três partes: a instrução propriamente dita e um ou dois operandos. No exemplo mov eax, 0x5f, o valor 0x5f é movido para o registrador eax. Os operandos podem ser de diferentes tipos.

Operandos imediatos são valores constantes, como números fixos utilizados diretamente na instrução. Registradores também podem ser utilizados como operandos, permitindo que valores sejam movidos ou manipulados diretamente nos registradores da CPU. Já os operandos de memória são indicados por colchetes e fazem referência a endereços de memória. Quando um registrador aparece entre colchetes, o valor contido nesse registrador é tratado como um endereço de memória.

As instruções dizem à CPU qual operação deve ser executada. Elas utilizam operandos imediatos, registradores ou memória, realizam a operação definida e armazenam o resultado em um registrador ou em um endereço de memória.

Entre as instruções gerais, a instrução mov é uma das mais básicas e utilizadas. Ela é responsável por copiar um valor de um local para outro, seguindo a sintaxe mov destino, origem. A instrução mov pode ser usada para mover um valor imediato para um registrador, copiar o valor de um registrador para outro ou carregar um valor da memória para um registrador. Quando um endereço de memória é referenciado, utiliza-se colchetes. Se um registrador estiver entre colchetes, seu valor será tratado como um endereço de memória. Assim, mover um valor de um endereço fixo de memória para um registrador é equivalente a primeiro carregar esse endereço em um registrador intermediário e depois acessar o valor apontado por ele. É importante notar a diferença entre mover um endereço para um registrador e mover o valor contido nesse endereço, pois no primeiro caso o registrador receberá o endereço em si, e no segundo receberá o conteúdo armazenado na memória.

Também é possível utilizar deslocamentos ao acessar a memória, como no caso de mov eax, [ebp+4], onde o valor do registrador ebp é somado a 4 e o endereço resultante é utilizado para acessar a memória.

A instrução lea, cujo significado é load effective address, é utilizada para carregar o endereço efetivo de uma expressão de memória em um registrador. Diferentemente da instrução mov, a lea não acessa o conteúdo da memória, apenas calcula o endereço e o armazena no registrador de destino. Por exemplo, ao executar lea eax, [ebp+4], o valor armazenado em ebp é somado a 4 e o resultado é colocado em eax. Essa instrução é frequentemente utilizada por compiladores para realizar operações aritméticas em registradores de forma eficiente, sem a necessidade de múltiplas instruções.

A instrução nop representa nenhuma operação. Ela não altera nenhum registrador nem a memória, apenas consome um ciclo de CPU e segue para a próxima instrução. Instruções nop são frequentemente utilizadas para alinhar código, atrasar a execução ou em técnicas de exploração, como nop sleds, onde várias instruções nop são inseridas antes de um shellcode para facilitar o redirecionamento do fluxo de execução.

As instruções de deslocamento, conhecidas como shift, movem os bits de um registrador para a esquerda ou para a direita. As instruções shl e shr realizam deslocamentos à esquerda e à direita, respectivamente. O número de bits deslocados é definido pelo operando count. Os bits que são deslocados para fora do registrador são descartados, e os novos bits inseridos são preenchidos com zero. O último bit que transborda é armazenado na Carry Flag. Essas operações são frequentemente utilizadas como uma forma eficiente de multiplicar ou dividir valores por dois.

As instruções de rotação são semelhantes às instruções de deslocamento, porém os bits que saem de uma extremidade do registrador retornam pela outra. As instruções rol e ror realizam rotações para a esquerda e para a direita, respectivamente. Diferentemente do shift, nenhum bit é perdido durante a operação, pois todos os bits continuam fazendo parte do registrador após a rotação.

As operações aritméticas são realizadas pela CPU por meio de instruções específicas. A instrução add soma um valor ao destino e armazena o resultado no próprio destino. A instrução sub subtrai um valor do destino e também armazena o resultado no destino. Se o resultado de uma operação for zero, a Zero Flag é ativada. Em operações de subtração, caso o valor subtraído seja maior que o destino, a Carry Flag é ativada.

As instruções de multiplicação e divisão utilizam os registradores eax e edx. Na multiplicação, a instrução mul multiplica o valor presente em eax por um operando e armazena o resultado de 64 bits em edx:eax, sendo os 32 bits menos significativos colocados em eax e os 32 bits mais significativos em edx. Já na divisão, a instrução div divide o valor de 64 bits presente em edx:eax por um operando, armazenando o quociente em eax e o resto em edx.

As instruções de incremento e decremento são usadas para aumentar ou diminuir o valor de um registrador em uma unidade. A instrução inc incrementa o valor do registrador, enquanto a instrução dec realiza a operação inversa.

As instruções lógicas são utilizadas para realizar operações bit a bit. A instrução and executa uma operação AND lógica entre os operandos, retornando 1 apenas quando ambos os bits são 1. A instrução or executa uma operação OR, retornando 1 quando pelo menos um dos bits é 1. A instrução not inverte todos os bits de um operando, transformando 1 em 0 e 0 em 1. A instrução xor realiza uma operação XOR, que retorna 1 quando os bits são diferentes e 0 quando são iguais. Um caso comum de uso do xor é zerar um registrador, pois a operação de um registrador com ele mesmo sempre resulta em zero, sendo mais eficiente do que usar a instrução mov.

Em diversas situações, a CPU precisa comparar valores para determinar se são iguais, maiores ou menores. Para isso, são utilizadas instruções condicionais. A instrução test realiza uma operação AND lógica entre os operandos e apenas atualiza as flags, sem armazenar o resultado. Ela é muito usada para verificar se um valor é zero, pois ocupa menos bytes do que uma comparação direta com zero. A instrução cmp compara dois operandos de forma semelhante a uma subtração, porém sem modificar seus valores. Com base no resultado, as flags são atualizadas, permitindo que instruções de salto condicional sejam utilizadas em seguida.

Quando não há desvios, o fluxo de execução do programa é linear, seguindo a ordem das instruções na memória. As instruções de desvio alteram esse fluxo, modificando o valor do ponteiro de instruções. A instrução jmp realiza um salto incondicional para um endereço específico. Já os saltos condicionais dependem do estado das flags e são utilizados para implementar estruturas de decisão semelhantes ao if das linguagens de alto nível.

A pilha é uma estrutura de dados fundamental na execução de programas. A instrução push coloca um valor no topo da pilha, armazenando-o no endereço apontado pelo registrador esp e ajustando esse registrador para refletir a nova posição do topo. Existem instruções como pusha e pushad que empilham todos os registradores de uso geral de 16 e 32 bits, respectivamente. Essas instruções são comumente encontradas em shellcodes, onde é necessário salvar o estado dos registradores antes de executar código injetado.

A instrução pop remove o valor do topo da pilha e o armazena em um registrador ou endereço de memória, ajustando o registrador esp após a remoção. As instruções popa e popad realizam a remoção sequencial de todos os registradores de uso geral da pilha, restaurando o estado previamente salvo.

Por fim, a instrução call é utilizada para realizar chamadas de função em assembly. Ela empilha o endereço da próxima instrução na pilha e desvia a execução para o endereço especificado, permitindo que o fluxo retorne corretamente após a conclusão da função chamada.
