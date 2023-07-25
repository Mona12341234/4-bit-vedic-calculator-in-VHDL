# 4-bit-vedic-calculator-in-VHDL
VHDL Code for 4 bit calculator using Vedic Maths
Vedic Mathematics is the old methodology of Indian mathematics which as has a unique technique of
calculations based on 16 formulas these are adopted from “Vedas”. On account of those 16 formulas,
the partial products and sums are generated in one step which reduces the carry propagation from LSB
to MSB
Adders, subtractors, Multipliers are a common component of DSP systems, which use them as one of
their primary hardware building blocks. In several DSP applications, including digital filtering, digital
communication, and Fast Fourier transform, multipliers play a vital role.
Multiplier architecture based on Urdhva tiryakbhyam Sutra(Vertically and Crosswise). Whereas
addition and subtraction follows parallel adder based implementation which is most commonly used
architectures.
The 4x4 multiplier output of any two binary symbols in vedic maths can be calculated by the
following way: The output will be of maximum 8 bits and let it be O. Let the two 8 bit multipliers be
A and B.The bits O will be the least significant bits of A and B.The product of bits A and B,A and B
as-well as the previous most significant bits of product of A and B are added using Carry save adder,
and the least significant bits correspond to O.The most significant bits are now added with the product
of A and B using Carry save adder, the output corresponds to .
In the same way mentioned above 2x2 multipliers are built which are required in 4x4 multiplier using
above method. A carry save adder is also necessary while implementing the following.A CSA of 4
input size is built using 8 full adders.

![image](https://github.com/Mona12341234/4-bit-vedic-calculator-in-VHDL/assets/83230859/7b6aeacc-4448-4584-ba12-b9ef0903b9a1)
![image](https://github.com/Mona12341234/4-bit-vedic-calculator-in-VHDL/assets/83230859/41291a18-95c2-42ec-9d4d-16ec12d4c8be)

![image](https://github.com/Mona12341234/4-bit-vedic-calculator-in-VHDL/assets/83230859/4520f43d-642a-467c-b476-c624f1d007f6)
![image](https://github.com/Mona12341234/4-bit-vedic-calculator-in-VHDL/assets/83230859/8ee0b023-d8d1-4a4d-9ba1-f18d015e4bd9)


