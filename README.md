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
      |      |  0   | 0  | 0 | 0 |    |     |   |   |    |  D  |  P   |  F  |  C  |  M  |  F  |    | T  |   P L   | F  | F | F | F | F | F |   | F |   | F |   | F |
      ---------------------------------------------------------------------------------------------------------------------------------------------------------------

Zero Flag(ZF)
CF (Carry Flag) 
SF(Sign Flag) 
TF (Trap Flag) 
OF (Overflow Flag)
``` 
Zero Flag -> Conhecido como ZF (Zero Flag) indica quando o resultado da ultima instrução executada foi zero. Por exemplo se uma intrução for executada subtraindo RAX de si mesma, o resultado sera 0. Nessa situação o ZF sera definido como 1.

Carry Flag -> Conhecido como CF (Carry Flag) indica quando a ultima isntrução executada resultou em um numero muito grande ou muito pequeno para o destino. Por exemplo se sormarmos 0xFFFFFFFF e 0x00000111 e armazenarmos o resultado em um registrador de 32 bits, o resultado sera muito grande para nosso registrador, então o CF sera definido como 1.

Sign Flag -> Conhecido como SF (Sign Flag) indica se o resultado de uma operação é negativo ou se o bit mais significativo sera definido como 1. Se essas condições forem atendidas o registrador SF é definido como 1, caso o bit mais significativo esteja setado em 0 ou o resultado da operação seja positivo o SF é definido como 0 

Trap Flag -> Conhecido como TF (Trap Flag) indica se o processador esta em modo de depuração. Quando o TF esta ativado, a CPU executara uma instrução por vez para fins de depuração. Isso podeser usado por malware para indentificar se ele esta sendo executado em um depurador



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
