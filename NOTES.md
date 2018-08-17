# Delivery Notes

## Note about .freeze

You’ll often see freeze used when assigning constants, to ensure that the values can’t be mutated. This is because reassigning a constant variable will generate a warning, but mutating a constant value will not.

## Framing

This lesson is part of the ruby sequence and specifically part of the ruby-enumerable sequence.

- ruby-enumerable-builtins
- ruby-enumerable-comparable

**ruby-enumerable-builtins**
This lesson starts with explaining how the abstract data type of list, whether an array, object or range, would benefit from a lot of the same methods such as iterating.  Developers are then shown how in Ruby, modules can be used to share methods between different classes.  One goal is to see the benefit of using a module for shared functionality.  The next goal is similar to [ruby-array-methods](https://git.generalassemb.ly/ga-wdi-boston/ruby-array-methods) or [js-array-iteration-methods](https://git.generalassemb.ly/ga-wdi-boston/js-array-iteration-methods) and that is to *use the enumerable methods that are already included in classes* such as array, object and range.

**ruby-enumerable-comparable**
This lesson is focused on how to implement a module into a custom class.  Developers will be including the enumerable and comparable module in custom classes and setting up their class as required by the modules.  The goal is to *implement the modules in a custom class*.


## Whiteboard Diagrams

![](https://cloud.githubusercontent.com/assets/5384023/22555791/f21e7ade-e932-11e6-8777-750f90377666.jpg)
