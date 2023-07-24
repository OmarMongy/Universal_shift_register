# Universal Shift Register

A Universal Shift Register is a versatile register that combines both right shift and left shift capabilities, along with the ability to perform parallel loads. These registers serve as essential memory elements in computer systems. The Universal Shift Register is the result of a clever combination of a bidirectional shift register and a unidirectional shift register with the added benefit of parallel load functionality.

## Description

In the Universal Shift Register, we have a 4-bit version as an example to illustrate its functioning. This 4-bit Universal Shift Register comprises of 4 flip-flops and 4 4×1 multiplexers. Each of these multiplexers shares the same select lines (S1 and S0) that determine the mode in which the shift register operates. The select inputs effectively choose the appropriate input for the flip-flops.

## Basic Connections

The Universal Shift Register is designed with the following fundamental connections:

1. The first input (zeroth pin of the multiplexer) is connected to the output pin of the corresponding flip-flop.
2. The second input (first pin of the multiplexer) is connected to the output of the very-previous flip-flop, enabling right shift functionality.
3. The third input (second pin of the multiplexer) is connected to the output of the very-next flip-flop, enabling left shift functionality.
4. The fourth input (third pin of the multiplexer) is connected to individual bits of the input data, facilitating parallel loading.

## Register Operations

The operation of the Universal Shift Register depends on the inputs provided to the select lines (S1 and S0). Here are the register operations performed based on different input configurations of the select lines:

- S1: 0, S0: 0 -> No changes (Hold state)
- S1: 0, S0: 1 -> Shift right
- S1: 1, S0: 0 -> Shift left
- S1: 1, S0: 1 -> Parallel load

## Usage

To use the Universal Shift Register effectively, ensure that the proper input combinations are provided to the select lines (S1 and S0) to perform the desired operation, be it shifting data to the right, left, or loading data in parallel.

## Examples

For a practical implementation and examples of how to use the Universal Shift Register, please refer to the provided source code in this repository.

## Contributing

If you find any issues or have ideas to enhance the Universal Shift Register, feel free to contribute by submitting pull requests.

---

### Images

Here are the placeholders for images related to the Universal Shift Register project:

1. Image of Universal Shift Register Circuit: [![Universal Shift Register Circuit](https://rjeyakumar.files.wordpress.com/2016/02/usr.jpg?w=840)]
 
2. Register Operation Truth Table: [![Register Operation Truth Table]()](https://www.electronicshub.org/wp-content/uploads/2015/06/table.jpg)



