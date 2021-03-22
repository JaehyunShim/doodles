# Study Introduction to Computer Science

## 1. Lecture Note
- Week0 (Scratch)
  ```sh
  1) Computer Science: input -> () -> output
  2) Binary (zeros and ones), Transistor
  3) Unicode (e.g., A(=65), !(=33))
  4) RGB (e.g., Yellow(=72, 73, 33))
  5) input -> (algorithms i.e., step-by-step approach) -> out
  6) pseudocode
  7) functions, conditions, boolean expressions, loops, variables, threads, events
  8) abstraction, efficiency
  ```
- Week1 (C)
  - Lecture
  ```sh
  1) C, terminal window , command prompt, commandline argument
  2) source code -> (compiler) -> machine code
  3) nano, clang, make ${file_name}
  4) RAM(memory)

  1) Data Types: bool, char, int, float, long, double, string
  2) Operators: assignment operator, ...
  3) Condtional Statements
  4) Loops
  5) Command Line: ls, rm, cd, pwd, ...
  ```
  - Shorts
  ```sh
  Data Types
  1) int, 4 bytes (32 bits), integers, unsigned int
  2) char, 1 byte (8 bits), single characters
  3) float, 4 bytes (32 bits), floating-point values
  4) double, 8 bytes (64 bits), floating-point values
  5) void, not a data type, a placeholder for nothing
  6) bool, boolean values
  7) string, a series of characters
  8) struct, structures
  9) typedefs, defined types
  10) int number;      (declaration)
      number = 17;     (assignment)
      int number = 17; (declaration & initialization)

  Operators
  1) arithmetic operators: +, - , *, /, % (remainder)
  2) assignment operator: =
  3) x = x * 5; same as x *= 5;
  4) x++; (incrementing) x--; (decrementing)
  5) boolean expressions: logical operator, relational operators
  6) logical operators: && (and), || (or), ! (not)
  7) relational operators: < (less than), <= (less than or equal to), > (greater than), >= (greater than or equal to)
                           == (equal to), != (not equal to)

  Conditional Statements
  1) if (bollean-expression), if () {} else if () {} else{}
  2) switch (discrete cases), switch () {case 1: break; case 2: break; ... default: },
  3) ?: (ternary operator), int x = (expr) ? 5 : 6; (if true, then x is 5, or, x is 6)

  Loops
  1) while (boolean-expr){}
  2) do while (boolean-expr);
  3) for (int i = 0; i < 10; i++) {}

  Command Lines
  1) ls (list)
  2) cd <directory> (change directory), cd . (go to current directory), cd .. (go to parent directory), cd (go to home directory)
  3) pwd (present working directory)
  4) mkdir <directory> (make directory)
  5) cp <source> <destination> (copy), -r opt ion (recursive, for copying a folder)
  6) rm <file> (remove), -f option (forcible), -r option (recursive, for removing a folder)
  7) mv <source> <destination> (move), can be also used for renamming
  8) chmod, ln, touch, rmdir, man, diff, sudo, clear, telnet, etc.
  ```

 - Week2 (Arrays)
  - Lecture
  ```sh
  1) preprocessing, compiling, assembling, linking
  2) debug, test code, style guide
  3) RAM, data size, transistor
  4) casting, nesting
  5) array
  6) brackets([]), parentheses(()), curly braces({}), ampersand(&), percent(%), star(*), caret(^), ...
  7) \0 (Null Terminator Character), string takes up (length+1) bytes
  8) decimal ascii chart
  9) command-line argument, int argc, string argv[]
  10) return 0 (successful), return 1 (error)
  ```
  - Shorts
  ```sh
  Functions
  1) Organization, Simplification, Reusability
  2) return-type name(argument-list)
  3) declare and define functions to use them

  Arrays
  1) type name[size] = {};
  2) treat individual elements of arrays as variables
  3) thus, assign one array to another using assignment operator is not legal in C
  4) passed by reference in function calls

  Command Line Arguments
  1) int main(int agrc, char *argv[])
  2) argc (argument count)
  3) argv (argument vector, stored as strings)

  Variables and Scope
  1) local variables within the functions
  2) global variables by any function in the program
  ```

- Week3 (Alogrithms)
  - Lecture
  ```sh
  1) typedef struct {} A;, encapsulation
  2) O (big O notation), upper bound, for describing the worst case
  3) Ω (omega notation), lower bound, for describing the best case
  4) Θ (theta notation), upper bound = lower bound
  5) big O of n, omega of n, ...
  6) linear search, O(n), Ω(1)
  7) binary search, O(log n), Ω(1)
  8) bubble sort, O(n^2), Ω(n^2 -> n(checking))
  9) selection sort, O(n^2), Ω(n^2) -> Θ(n^2)
  10) merge sort, O(n log n), Ω(n log n) -> Θ(n log n)
  11) [comparison sorting algorithms](https://www.cs.usfca.edu/~galles/visualization/ComparisonSort.html)
  12) recursion
  ```
  - Shorts
  ```sh
  Linear Search
  1) iterate across the array from left to right
  2) pseudocode:
     Repeat below, starting at the first element
     - if the first element is what you are looking for, stop
     - otherwise, move to the next element
  3) Worst-case scenario: O (n)
  4) Best-case scenario: Ω (1)

  Binary Search
  1) divide and conquer, reducing the search area by half each time
  2) peseudocode:
     Repeat until the (sub)arrayis of size 0:
     - Calculate the middle point of the current (sub)array
     - if the target is at the middle, stop
     - Otherwise, if the target is less than what is at the middle,
       repeat, changing the end point to be just to  the left of the middle.
     - Otherwise, if the target is greater than what is at the middle,
       repeat, changing the start oint to be just to the right of the middle.
  3) Worst-case scenario: O (log n)
  4) Best-case scenario: Ω (1)
  5) faster than linear search but needs to be sorted

  Bubble Sort
  1) move higher valued elements generally towards the right and lower value elements generally towards the left
  2) peseudocode:
     Repeat until the swap counter is 0:
     - Reset swap counter to 0
     - Look at each adjacent pair, if two adjacent elements are not in order, swap them
       and add one to the swap counter
  3) Worst-case scenario: O (n^2)
  4) Best-case scenario: Ω (n)

  Selection Sort
  1) find the smallest unsorted element and add it to the end of the sorted list
  2) peseudocode:
     Repeat until no unsorted elemets remain:
     - Search the unsroted part of the data to find the smallest value
     - Swap the smallest found value with the first element of the unsorted part
  3) Worst-case scenario: O (n^2)
  4) Best-case scenario: Ω (n^2)

  Insertion Sort
  1) build your sorted array in place, shifting elements out of the way if necessary to make room as you go
  2) peseudocode:
     Call the first element of the array "sorted".
     Repeat until all elements are sorted:
     - Look at the next unsorted element. Insert into the "sorted" portion by shifting the requisite number of elements.
  3) Worst-case scenario: O (n^2)
  4) Best-case scenario: Ω (n)

  Recursion
  1) invokes itself as part of its execution
  2) The base case, which when triggered will terminate the recursive process
     The recursive base, which is where the recursion will actually occur
  3) In general, but not always, recursive functions replace loops in non-recursive functions
  4) Multiple base cases (e.g, Fibonacci number sequence)
  5) Multiple recursive cases (e.g., Collatz conjecture)

  Merge Sort
  1) sort smaller arrays and then combine those arrays together (merge them) in sorted order
  2) peseudocode:
     Sort the left half of the array (assuming n > 1)
     Sort the right half of the array (assuming n > 1)
     Merge the two halves together
  3) Worst-case scenario: O (n log n)
  4) Best-case scenario: Ω (n log n)

  Alogrithm Summary
  1) Selection Sort, find the smalelst unsroted element in an array and swap it with the first unsroted element of that array, O (n^2), Ω (n^2)
  2) Bubble Sort, swap adjacent pairs of elements if they are out of order, effectively "bubbling" larger elements to the right and smalelr ones to the left, O (n^2), Ω (n)
  3) Insertion Sort, process once through the array from left to right, shifting elements as necessary to insert each element into ints correct place, O (n^2), Ω (n)
  4) Merge Sort, split the full array into subarrays, then merge those subarrays back together in the correct order, O (n log n), Ω (n log n)
  5) Linear Search, iterate across the array from left-to-right, trying to find the target element, O (n), Ω (1)
  6) Tree Search, given a sorted array, divide and conquer by systematically eliminating half of the remaining elements in the search for the target element, O (log n), Ω (1)
  ```

- Week4 (Memory)
  - Lecture
  ```sh
  1) hexadecimal(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F)
  2) 0x0, 0x1, ..., 0xFF (0x by covention)
  3) RGB, blue (=0000FF)
  4) pointer, *
  5) string = char *
  6) typedef A B
  7) pointer = malloc(size), ..., free(pointer)
  8) overflow
  9) machine code
     globals
     heap
      ↓

      ↑
     stack
  10) heap overflow, stack overflow
  11) scanf("%d", &x)
  12) File *file = fopen(name, "a");
      fprinf(file, "%s, %s", str1, str2);
      fclose(file);
  ```
  - Shorts
  ```sh
  Hexadecimal
  1) base-16, much more concise way to express the data on a computer system
  2) 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF
  3) place values (1, 16, 256, ...)

  Pointers
  1) used to pass the actual variable inself, not a copy of data
  2) data item whose value is a memory address, type describes the data located at that memory address
  3) the value of the pointer should be set to NULL if not set immediately.
  4) dereference operator (*)
  5) Size(in bytes) of pointers is 4 in 32-bit system or 8 in 64-bit system

  Dynamic Memory Allocation
  1) dynamically allocated memory comes from the heap and statically allocated memory comes form the stack
  2) text
     intialized data
     uninitialized data
     heap
      ↓

      ↑
     stack
     environment variables
  3) // array of floats on the stack
     float stack_array[x];

     // array of floats on the heap
     float* heap_array = malloc(x * sizeof(float));
  4) must be finished using free() to prevent memory leaks

  Call Stacks
  1) stack frames (aka, function frames)
  2) When you call a function, the system sets aside space in momery for that function
  3) These frames are arranged in a stack. The frame for the most recently called function is always on the top of the (call) stack.
  4) When a function finishes its work, its frame is popped off of the stack.
  5) The frame immediately below it becomes the new, active function on the top of the stack.

  File Pointers
  1) fopen(), fclose(), fgetc(), fputc(), fread(), fwrite()
  2) accept FILE* as one of their parameters, except for fopen()
  3) FILE *ptr = fopen(<filename>, <operation>); (option "r" for read, "w" for write, "a" for append)
  4) fclose(<file pointer>);
  5) char ch = fgetc(<file pointer>); (only for option "r")
  6) fputc(<character>, <file pointer>); (only for option "w" and "a"
  7) fread(<buffer>, <size>, <qty>. <file pointer>); (only for option "r")
     e.g., int arr[10]; fread(arr, sizeof(int), 10, ptr);
  8) fwrite(<buffer>, <size>, <qty>. <file pointer>); (only for option "r")
     e.g., int arr[10]; fwrite(arr, sizeof(int), 10, ptr);
  9) fgets(), fputs(), fprintf(), fseek(), ftell(), feof(), ferror()
  ```

- Week5 (Data Structures)
  - Lectures
  ```sh
  1) Arrays: insert O(n), search O(log n)
  2) data_type ptr2 = realloc(ptr1, sizeof(data_type))
  3) struct
  4) . (dot operator, go to a property of a struct)
     * (dereference operator)
     & (reference operator)
  5) Linked lists: insert O(n), search O(n)
  6) memeory allocation: node *n = malloc(sizeof(node));
  7) arrow notation: (*n).number = 2 equals to n->number=2
  8) binary search tree: insert O(log n), search O(log n)
  9) Hash tables: insert O(1), search O(1)
  10) Tries: insert O(1), search O(1)
  11) queues (FIFO), enqueue, dequeue
  12) stacks (LIFO), push, pop
  13) dictionaries
  ```
  - Shorts
  ```sh
  Data Structures
  1) Arrays:
  - Insertion is bad, lots of shifting to fit an element in the middle
  - Deletion is bad, lots of shifting after removing an element
  - Lookup is great, random access, constant time
  - Relatively easy to sort
  - Relatively small size-wise
  - Stuck with a fixed size, no flexibility
  2) Linked lists:
  - Insertion is easy, just tack onto the front
  - Deletion is easy, once you find the element
  - Lookup is bad, have to rely on linear search
  - Relatively difficult to sort - unless you are willing to compromise on
    super-fast insertion and instead sort as you construct
  - Relatively small size-wise (nto as small as arrays)
  3) Hash tables:
  - Insertion is a two-step process: hash, then add
  - Deletion is easy - once you find the element
  - Lookup is on avrage better than with linked lists because you have the benefit
    of a real-world constant factor
  - Not an ideal data structure if sorting is the goal, just use an array
  - Can run the gamut of size
  4) Tries:
  - Insertion is complex, a lot of dynamic memory allocation, but gets easier as you go
  - Deletion is easy, just free a node
  - Lookup is fast, not quite as fast as an array, but almost
  - Already sorted, sorts as you build in almost all situations
  - Rapidly becomes huge, even with very little data present, not great if space is at a premium

  Linked lists
  1) A linked list node is a special kind of struct with two members:
     Data of some data type (int, chart, ...), A pointer to another node of the same type
  2) Create, e.g., node* new = create(value);
  3) Find, e.g., bool exists = find(list, value)
  4) Insert, e.g., list = insert(list, 12);
  5) Delete, e.g., destory(list);

  Hash tables
  1) a hash function, which returns an nonnegative integer value called a hash code
     + an array capable of storing data of the type we wish to place into the data structure
  2) a good hash function should
  - Use only the data being hashed
  - Use all of the data being hashed
  - Be deterministic
  - Uniformly distribute data
  - Generate very different hash codes for very similar data
  3) To resolve collision, use Linear probing or Chaining
  4) Create, Find, Insert, Delete

  Tries
  1) Combination of structures and pointers together to store data
  2) Create, Find, Insert, Delete
  ```

- Week6 (Python)
  - Lecture
  ```sh
  1) range (sequence of numbers)
     list  (sequence of mutable values)
     tuple (sequence of immutable values)
     dict  (collection of key value pairs)
     set   (collection of unique values)
  2) rstrip
  3) || -> or, && -> and
  4) def function():
  5) def main():
  6) print("#\n" * 3, end="")
  7) list.append()
  8) upper(), lower()
  9) from sys import argv
  10) exit(1) (same as return 1 in C)
  11) "" for string and '' for char in C but "" and '' for both in Python
  12) import csv (comma separated value)
  13) regular expressions
      .  (any character)
      .* (0 or more characters)
      .+ (1 or more characters)
      ?  (optional)
      ^  (start of imput)
      $  (end of imput)
  14) import re  /// re.search("^y(es)?$", s, re.IGNORECASE):
  15) lots of applications e.g., speech_recognition, qr and so on
  ```
  - Shorts
  ```sh
  Differences from C:
  1) Syntax
  - No type specifier
  - Declared by initialization only
  - Python statements need not end with semicolons
  - || -> or, && -> and
  - good style is crucial in python, especially tabs and indentations
  - import lib_name instead of include

  2) Conditionals
  - if expr: elif: else:
  - result1 if expr else result2  (ternary operator)

  3) Loops
  - while expr:
  - for var in range(size):
  - for var in range(begin_val, end_val, count_by):

  4) Data structures
  - Arrays are called Lists in python
    e.g., num = []
          num = [val1, val2]
          num = list()
          num.append(new_val)
          num[len(num):]=[new_val]
          for var in list:
  - Tuples, immutable sets of data
    e.g., list = {
              ("name1", val1),
              ("name2", val2),
              ("name3", val3),
              ("name4", val4)
          }
          for name, year in list:
  - Dictionaries, allowing for specifiying list indices with words or phrases(keys)
    e.g., list = {
              "key1": val1,
              "key2": val2,
              "key3": val3,
              "key4": val4
          }
          list["key1"] = val1
          for key in list:
          for key, value in list.items():

  5) Printing and variable interpolation
  - print("haha" + smth + "haha" + smth2)

  6) Functions
  - no return type, no parameter data type
  - introduced with the def keyword
  - if no main(), the interpreter reads from top to bottom
  - if you need main(), add below tothe very end of your code
    if __name__ == "__main__":
        main()
    e.g., def function_name(input):

  7) Objects
  - objects have field (aka, properties) and methods (aka, functions)
    e.g., def __init__(input):
              self.field = filed
          def method(input):
          object.method()
  ```

- Week7 (SQL)
  - Lecture
  ```sh
   1) SQL, sqlite3
   2) relational database
   3) INSERT, SELECT, UPDATE, DELETE
   4) BLOB, INTEGER, NUMERIC, REAL, TEXT
   ```

- Week8 (Information)
  - Lecture
   ```sh
   1) Security, Cookies
   ```

## 2. Reference
- [CS50: Introduction to Computer Science](https://cs50.harvard.edu/x/2020/)
