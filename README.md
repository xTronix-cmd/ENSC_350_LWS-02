# ENSC_350_LWS-02  
ENSC 350 Lab Worksheet 2  

## Main Objective (Part 1):  
To Learn Recursive Circuit Design using VHDL.  

## Sub-Objectives:  
1) To learn how to specify the architecture when instantiating an Entity.  
2) To design a N-bit Parity Detector using an iterated FOR statement.  
3) To design a N-bit Parity Detector forming a tree recursively.

## Main Objective (Part 2):  
To become familiar with the internal structure of Intel FPGA families.  

## Sub-Objectives:  
1) To practice using device datasheets to understand FPGA structures.  
2) To learn how to synthesise and view synthesis output using Quartus.  
3) To practice creating reasonable documentation of synthesis results.

## Specification:  
### An N-bit Odd-Parity Detector:  
The Odd-Parity Detector should:  
• should only use std_logic or std_logic_vector for its interface signals,
(to be compatible with the types created by Quartus’ netlist)  
• be a purely combinational circuit,  
• have an N-bit input, determined by a GENERIC parameter,  
• have an output that is ‘1’ when the parity of the input is Odd.  
#####  
&nbsp; &nbsp; &nbsp; &nbsp; Entity OddParity is  
&nbsp; &nbsp; &nbsp; &nbsp; Generic ( N : natural := 8 );  
&nbsp; &nbsp; &nbsp; &nbsp; Port ( X : in std_logic_vector( N-1 downto 0 );  
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IsOdd : out std_logic );  
&nbsp; &nbsp; &nbsp; &nbsp; End Entity OddParity;  
