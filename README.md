# Controlador Digital de Vending Machine em SystemVerilog

Este repositório contém o código-fonte (RTL), ambiente de verificação (Testbench) e scripts de síntese para o controlador digital síncrono de uma máquina de vendas automática (*Vending Machine*). 

O projeto foi desenvolvido como atividade avaliativa do módulo de **Projeto de Controlador Digital**, integrante da trilha de **RTL Design** do **Programa de Residência em Microeletrônica (CiExpert / MCTI / Softex / IRede)**.

---

## Objetivo do Projeto
Projetar, codificar, simular e sintetizar um hardware digital totalmente síncrono, aplicando o princípio de separação arquitetural entre a **Unidade de Controle (FSM)** e o **Caminho de Dados (Datapath)**. O sistema não possui microprocessador ou software embutido; toda a lógica de tomada de decisão, acúmulo de saldo financeiro (em ponto fixo) e controle de estoque é implementada puramente em hardware (ASIC/FPGA) utilizando **SystemVerilog**.

## Funcionalidades e Características
* **Gerenciamento de Moedas:** Acumulador de créditos síncrono (0.25, 0.50, 1.00) suportando acúmulo contínuo até o limite de segurança em 8 bits.
* **Controle de Produtos e Estoque:** Memória síncrona embarcada com suporte para 4 itens distintos (Café, Água, Suco, Snack), armazenando preços como constantes e controlando a baixa de estoque a cada venda.
* **Validação Instantânea:** Hardware combinacional dedicado para comparar simultaneamente saldo e estoque, garantindo validação em 1 ciclo de clock.
* **Cálculo de Troco:** Subtrator aritmético que emite o saldo remanescente com segurança após a liberação física do produto.
* **Robustez:** Máquina de Estados Finitos (FSM) do tipo Moore com 6 estados (IDLE, COLLECT, CHECK, DISPENSE, CHANGE, ERROR), blindada contra *glitches* e com sistema de Reset/Cancelamento assíncrono para proteção do saldo do usuário.

---

## Ferramentas Utilizadas
O fluxo de desenvolvimento (*Front-End* RTL) seguiu o padrão da indústria de semicondutores:
* **Linguagem de Descrição de Hardware:** SystemVerilog
* **Simulação e Verificação:** Synopsys VCS & Verdi (DVE)
* **Síntese Lógica e Timing:** Synopsys Design Compiler

---
## Equipe
* **Amanda Gabriela**
* **Raissa Genésio**
Instituto Federal da Paraíba (IFPB) E Universidade Federal De Campina Grande (UFCG)

---

## Licença
Este projeto foi desenvolvido exclusivamente para fins acadêmicos na capacitação do CI EXPERT.

---

## Arquitetura e Estrutura de Diretórios
A arquitetura do projeto separa claramente os blocos sequenciais e combinacionais. A árvore de arquivos obedece à seguinte estrutura exigida pelo protocolo do projeto:

```text
vending_machine/
 ┣ 📂 rtl/
 ┃ ┣ 📜 vending_pkg.sv     # Parâmetros, preços e codificação de estados
 ┃ ┣ 📜 credit_reg.sv      # Registrador acumulador de crédito inserido
 ┃ ┣ 📜 memory.sv          # Memória síncrona 4x16 bits (Preço + Estoque)
 ┃ ┣ 📜 comparator.sv      # Lógica combinacional de validação de venda
 ┃ ┣ 📜 subtractor.sv      # Datapath combinacional para cálculo de troco
 ┃ ┣ 📜 control_unit.sv    # FSM de controle (Moore, 6 estados)
 ┃ ┗ 📜 vending_top.sv     # Top-Level: Instanciação e roteamento global
 ┣ 📂 sim/
 ┃ ┗ 📜 tb_vending.sv      # Testbench Self-Checking automatizado
 ┣ 📂 synth/
 ┃ ┣ 📜 synth.tcl          # Script de síntese (Design Compiler)
 ┃ ┗ 📜 vending.sdc        # Constraints temporais (SDC) e definições de clock
 ┃ ┗ 📜 sweep_timing.txt   # Script auxiliar para análise de temporização pós-síntese
 ┗ 📂 reports/
   ┗ 📜 relatorio.pdf      # Relatório técnico com diagramas e análise de timing
