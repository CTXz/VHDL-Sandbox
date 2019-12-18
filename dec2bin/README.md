# Decimal to binary converter

The following directory hosts a simple decimal to binary converter. Think of this device as nothing more but a
black box with 10 inputs, each representing a digit from 0-9, and four outputs, representing that digit in binary
form.

![](img/Bin2Dec.png)

A practical use of such a converter could perhaps be applied to calculators, where the buttons for each digit would be
connected to the decimal inputs of this converter. The binary output in turn, could be connected to a set of registers,
which then would parse their values to a ALU.

## Truth table

|9|8|7|6|5|4|3|2|1|0|B3|B3|B1|B0|
|-|-|-|-|-|-|-|-|-|-|--|--|--|--|
|0|0|0|0|0|0|0|0|0|1|0|0|0|0|
|0|0|0|0|0|0|0|0|1|0|0|0|0|1|
|0|0|0|0|0|0|0|1|0|0|0|0|1|0|
|0|0|0|0|0|0|1|0|0|0|0|0|1|1|
|0|0|0|0|0|1|0|0|0|0|0|1|0|0|
|0|0|0|0|1|0|0|0|0|0|0|1|0|1|
|0|0|0|1|0|0|0|0|0|0|0|1|1|0|
|0|0|1|0|0|0|0|0|0|0|0|1|1|1|
|0|1|0|0|0|0|0|0|0|0|1|0|0|0|
|1|0|0|0|0|0|0|0|0|0|1|0|0|1|

## Simulate

To simulate the testbench, simply run

```
make clean all
make gtkview
```

