# Study Python

## 1. Prep
  - Python
    - Interpreter language (do not need compilers)
    - Identations have important roles.
    - python2.x version will be dead soon...(EOL: 2020)
    - python2.x and python3.x are totally separate language systems.
    - Usage
      ```sh
      # Install python
      $ sudo apt-get install python2.x
      $ sudo apt-get install python3.x

      # Check python version
      $ python --version
      $ python3 --version
      ```
  - PIP (Python Package Index)
    - pip for python 2.x and pip3 for python 3.x
    - Usage
      ```sh
      # Install pip
      $ sudo apt-get install python-pip # install pip for python 2.x
      $ sudo apt-get install python3-pip # install pip3 for python 3.x

      # Install or Uninstall python packages, do not use sudo
      $ pip install xxx
      $ pip uninstall xxx
      $ pip3 install xxx
      $ pip3 uninstall xxx

      # Check version
      $ pip --version
      $ pip3 --version
      ```
  - Python Interpreter
    - Usage
      ```sh
      # Start python interpreter
      $ python
      $ python3

      # Exit interpreter
      'Ctrl' + 'z'
      ```
    - Modules
      ```sh
      # pickle
      >>> input = 'jaehyun stupid'
      >>> f = open('input.txt', 'w')
      >>> import pickle
      >>> pickle.dump(input, f)
      >>> f.close()

      >>> f = open('input.txt')
      >>> a = pickle.load(f)
      >>> print a
      'jaehyun stupid'

      # glob
      >>> import glob
      >>> glob.glob('*.*')
      ['CMakeLists.txt', 'package.xml']
      >>> glob.glob('*.txt')
      ['CMakeLists.txt']

      # os.path
      >>> import os
      >>> os.path.abspath("Downloads")
      '/home/jaehyun/Downloads'
      ```

## 2. Lecture Note
- Week0 (Introductions)
  - Lecture
    ```sh
    1) Python, powerfulll language
    2) [Anaconda](https://www.anaconda.com/products/individual)
    3) [JupyterLab](https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html)
    ```

- Week1 (Basics of Python 3)
  - Lecture
    ```sh
    1.1) Python Basics
    - Interactive Mode, Standard Mode
    - Python distribution, Anaconda, supporting environment, Jupyter
    - Python2, legacy version, Python3, current and future version.

    1.2) Objects
    - changable -> mutable (e.g., dictionaries and lists)
      unchangable -> immutable (e.g, strings and tuples)
    - Object has Type, Value, Identity
    - Objects have either data or functions or both, aka, Attributes
    - Attributes: Data attributes and Methods
    - Instance: occurance of an object

    1.3) Modules and Methods
    - Modules: libraries of code
    - Namespaces: container of names shared by objects

    1.4) Numbers and Basic Calculations
    - Integers, Floating point numbers, Complex numbers
    - underscore (_) indicates the previous result

    1.5) Random Choice
    - import random and use random.choice method

    1.6) Expressions and Booleans
    - Boolean expression: True, False
    - Boolean operation: or, and, not
    - Comparison operation: >, <, >=, <=, ==, !=
    - == tests if the same value whereas is tests if the same identity

    2.1) Sequences
    - Sequence: a collection of objectgs ordered by their position
    - Ex) Lists, Tuples, Range Objects

    2.2) Lists
    - mutalbe sequence
    - list = [1, 3, 4, 5]
      type(list), list[0], list[-1], list.append(2), list.reverse(), list.sort(), len(list)

    2.3) Tuples
    - immutalbe sequence
    - tuple = (1, 2, 3, 5)
      type(tuple), tuple[0], tuple[-1], tuple + (4, 6), len(tuple), tuple.count(2), sum(tuple)
      type((2, )) is tuple

    2.4) Ranges
    - immutable sequence
    - range(5), range(1, 6), range(1, 6, 2)
    - only store starting number, stopping number, step size

    2.5) Strings
    - immutable sequence for characters
    - String = "Python"
      String[0], String[-1], String[0:3], String[-3:], "y" in String
      Split = String.split("t"), String.upper(), String.lower()
    - "Hello" + "World", 3 * "Hello"

    2.6) Sets
    - unordered collections of distinct hashable objects
    - hashable means you can use sets for immutable objects (e.g., numbers and strings)
    - Set is mutable, Frozen Set is immutable
    - ids = set([1,2,4,5,6,7,8,9])
      ids.add(10), ids.add(2), ids.pop(), ids - set([1,5,6])
    - len(set("aabbbbaaaccc"))
    - x = set([1, 2, 3]), y = set([1, 3, 4])
      x | y, x & y, x - y

    2.7) Dictionaries
    - mapping from key objects to value objects
    - keys must be immutable, values can be anything
    - Dictionaries are mutable
    - age = {"Tim": 29, "Jim": 31}
      age["Tim"], age["Tim"] += 1, age.keys(), age.values(), age["Nick"] = 30, "Tom" in age

    3.1) Dynamic Typing
    - type checking is performed at runtime
    - create object, create variable, link the variable to the object
    - == used for element comparison whereas is used for identity comparison
    - id(Variable) returns addresss of Variable

    3.2) Copies
    - Shallow copy, inserts references
    - Deep copy, inserts copies
    - x = [1,[2]]
      y = copy.copy(x), z = copy.deepcopy(x)

    3.3) Statements
    - Return statement
    - Import statement
    - Pass statement
    - Compound statement

    3.4) For and While Loop
    - for target in sequence
    - while (expr)

    3.5) List Comprehensions
    - List = [number**2 for number in range(10)]
    - sum([i for i in range(10) if i%2 == 1])

    3.6) Reading and Writing Files
    - filename = "input.txt"
      for line in open(filename)
          print(line.rstrip())
    - filename = "output.txt"
      F = open(filename, "w")
      F.write("Python\n")
      F.close()

    3.7) Introduction to Functions
    - def add(a,b):
          return a + b

    3.8) Writing Simple Functions
    - Try writing a simple function in editors and test them in interactive mode

    3.9) Common Mistakes and Errors
    - e.g., list index out of range
            forggeting that dictionaries are unordered
            trying to do an operation not supported by the object
            trying to access an object in the wrong way
            trying to modify an immutable object
            trying to operate on objects of different type
            improper indentation
    ```

- Week2 (Python Libraries and Concepts used in Research)
  - Lecture
    ```sh
    1.1) Scope Rules
    - Find objects in the following order
      L: Local
      E: Enclosing Function
      G: Global
      B: Built-in

    1.2) Classes and Object-Oriented Programming
    - class, inheritance
    - class MyList(list):
          def remove_min(self):
              self.remove(min(self))
          def remove_max(self):
              self.remove(max(self))

    2.1) Introduction to NumPy Arrays
    - import numpy as np
      x = np.zeros(3)
      y = np.zeros((3,3))
      z = np.array([[1,3], [2,3]])
      z.transpose()

    2.2) Slicing NumPy Arrays
    - import numpy as np
      z = np.array([[1,3], [2,3]])
      z[:,1]
    - np.array([1,3]) + np.array([2,4])

    2.3) Indexing NumPy Arrays
    - z1 = np.array([1, 3, 5])
      z2 = z1 + 1
      z2[[0, 2]] # using list
      z2[np.array([0, 2])] # using numpy array
      z2 > 3
      z2[z2 > 3]
      z1[z2 > 3]
      ind = z2 > 3
      z2[ind] # different than z2[z2 > 3]
              # By using index slicing, a new copy array will be created

    2.4) Building and Examining NumPy Arrays
    - np.linspace(0, 100, 10)
      np.logspace(1, 2, 10)
      np.logspace(np.log10(250), np.log10(500), 10)
    - X = np.array([[1, 2, 3], [2, 3, 5]])
      X.shape
      X.size
    - x = np.random.random(10)
      np.any(x > 0.9)
      np.all(x >= 0.1)

    3.1) Introduction to Matplotlib and Pyplot
    - import matplotlib.pyplot as plt
      plt.plot([0,1,4,9,16])
      plt.show()
    - x = np.linspace(0, 10, 20)
      y = x ** 2.0
      plt.plot(x,y)
    - linewidth and markersize
      plt.plot(x, y, "bo-", linewidth=2, markersize=4)

    3.2) Customizing your plots
    - Add legend: legend()
    - Adjust axes: axis()
    - Set axis lables: xlable(), ylabel()
    - Save figure: savefig()
    - example below
      import numpy as np
      import matplotlib.pyplot as plt
      x = np.linspace(0, 10 ,20)
      y1 = x**2.0
      y2 = x**1.5
      plt.plot(x, y1, "bo-", linewidth=2, markersize=12, label="first")
      plt.plot(x, y2, "gs-", linewidth=2, markersize=12, label="Second")
      plt.xlabel("X")
      plt.ylabel("Y")
      plt.axis([-0.5, 10.5, -5, 105])
      plt.legend(loc="upper left")
      plt.savefig("myplot.pdf")

    3.3) Plotting Using Logarithmic Axes
    - semilogx()
      semilogy()
      loglog()
    - example below
      import numpy as np
      import matplotlib.pyplot as plt
      x = np.logspace(-1, 1 ,40)
      y1 = x**2.0
      y2 = x**1.5
      plt.loglog(x, y1, "bo-", linewidth=2, markersize=12, label="first")
      plt.loglog(x, y2, "gs-", linewidth=2, markersize=12, label="Second")
      plt.xlabel("X")
      plt.ylabel("Y")
      plt.axis([-0.5, 10.5, -5, 105])
      plt.legend(loc="upper left")
      plt.savefig("myplot.pdf")

    3.4) Generating Histograms
    - example
      import numpy as np
      import matplotlib.pyplot as plt
      x = np.random.normal(size=1000)
      plt.hist(x)
      plt.hist(x, normed=True)
      plt.hist(x, normed=True, bins=np.linspace(-5, 5, 21))
    - plt.figure()
      plt.subplot(221)

    4.1) Simulating Randomness
    - example
      import random
      random.choice(["M", "T"])
      random.choice(range(1, 7))
      random.choice(random.choice([range(1, 6), range(1, 7)]))

    4.2) Example Involving Randomness
    - example
      import random
      import numpy as np
      import matplotlib.pyplot as plt
      rolls = []
      for k in range(100):
          rolls.append(random.choice([1, 2, 3, 4, 5, 6]))
      len(rolls)
      plt.hist(rolls, bins=np.linspace(0.5, 6.5, 7))
      plt.show()
    - central limit theorem

    4.3) Using the NumPy Random Module
    - example
      import numpy as np
      np.random.random()
      np.random.random(5)
      np.random.random((5, 2))
      np.random.normal(0, 1) # (mean, standard deviation)
      np.random.normal(0, 1, 5)
      np.random.normal(0, 1, (5, 2))
      np.random.randint(1, 7)
      X = np.random.randint(1, 7, (10, 3))
      np.sum(X)
      np.sum(X, axis=0) # dimension: 3
      np.sum(X, axis=1) # dimension: 10
    - NumPy faster than Standard python code, which could make a big difference

    4.4) Measuring Time
    - example
      import time
      start_time = time.clock()
      end_time = time.clock()
      print(end_time - start_time)

    4.5 Random Walks
    - example
      import numpy as np
      import matplotlib.pyplot as plt
      X_0 = np.array([[0], [0]])
      delta_X = np.random.normal(0, 1, (2,10000))
      X = np.concatenate((X_0, np.cumsum(delta_X, axis=1)), axis=1)
      plt.plot(X[0], X[1], "ro-")
      plt.show()
    ```

- Week5 (Statistical Learning)
  - Lecture
    ```sh
    1.1) Introduction to Statistical Learning
    - scikit-learn, machine learning library for Python
    - Supervised Learning: Inputs -> Outputs
      Unsupervised Learning: Inputs only
    - Regression: continuous outputs, quantitative
      Classification: categorical outputs, qualitative
    - least squares loss function
      0-1 loss function
    ```


## 3. Reference
- [python for beginners](https://wikidocs.net/book/2)
- [Using Python for Research](https://online-learning.harvard.edu/course/using-python-research?delta=0)
