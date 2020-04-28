# Permutation Coefficient

Permutation refers to the process of arranging all the members of a given set to form a sequence. The number of permutations on a set of n (up to 14) elements is given by n! , where “!” represents factorial.
The Permutation Coefficient represented by P(n, k) is used to represent the number of ways to obtain an ordered subset having k (up to 14) elements from a set of n elements.
# FSMD
Basic Finite State Machine with Datapath (FSMD) example to find the permutation coefficient(n, k).

## Install

These examples use [ModelSim&reg; and Quartus&reg; Prime from Intel FPGA](http://fpgasoftware.intel.com/?edition=lite), [GIT](https://git-scm.com/download/win), [Visual Studio Code](https://code.visualstudio.com/download), make sure they are installed locally on your computer before proceeding.

## Usage

1. Grab a copy of this repository to your computer's local folder (i.e. C:\projects):

    ```sh
    $ cd projects
    $ git clone https://github.com/Salem22/PermutationCoeff.git
    ```
2. Use Visual Studio Code (VSC) to edit and view the design files:

    ```sh
    $ cd PermutationCoeff
    $ code .
    ```
    Click on the toplevel.vhd file in the left pane to view its contents.
    
3. From the VSC View menu, choose Terminal, in the VCS Terminal, create a "work" library:

    ```sh
    $ vlib work
    ```
    
4. Compile all the design units:

    ```sh
    $ vcom *.vhd
    ```
    
5. Simulate your design. For example, if n = 10, k = 2 then y = 90:

    ```sh
    $ vsim work.tb
    ```
