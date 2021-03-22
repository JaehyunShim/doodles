# Study CPP

## 1. Function Overloading
  ```sh
  void printValue(char a)

  void printValue(int a, int b)
  ```

## 2. Namespace
  ```sh
  [namespace_name]::[function_name];

  or

  using namespace [namespace_name];
  [function_name];
  ```

## 3. Reference
  ```sh
  int & n2 = n1; # reference for variable n1, n2 cannot be redefined
  int * (& r_ptr) = ptr; # reference for pointer ptr, r_ptr cannot be redefined
  void funcA(int & n) # input variable's value can be changed in funcA
  void funcA(const int & n) # input variable's value cannot be changed in funcA
  ```

## 4. Class
- struct (only instances), class (instances + methods)
- instance (aka member variable), method (aka member function)
- public: allow to access
- protected: allow only subclasses to access
- private: do not allow to access

## 5. Object Oriented Programming
- Encapsulation (in Section 6)
- Inheritance (in Section 9)
- Polymorphism (in Section 10)

## 6. Encapsulation and Information Hiding
- Encapsulation and Information Hiding
  ```sh
  class A
  class B
  class C
  {
   private:
    A a; # Encapsulation
    B b;

   public:
    A getA() # Information Hiding
    {
      return a;
    }
    void setA(A temp) # Information Hiding
    {
      a = temp;
    }
  };
  ```

## 7. Constructor, Destructor and this
  ```sh
  class A
  {
   private:
    int num;
    int num2;

   public:
    A (int n) : num(n); # A: constructor, :num(n) member initialiser (const can also be initialised)
    {
      this->num2 = n; # 'this' used to point member variables
    }
    ~A () {delete [object_name];} # ~A: destructor, delete dynamically allocated memory
  };

  int main()
  {
    A a(1);
    return 0;
  }
  ```

## 8. Static Member Variables and Functions
  ```sh
  class A
  {
   private:
    static int num; # static member variable, cannot be initialised
    const static int num2 = 0; # can be initialised with 'const'
    int num3;

   public:
    static void printValue()
    {
      printf("%d \n",num); # static member functions cannot access to private static member variables
      printf("%d \n",num3); # error, cannot access if not static
    }
  };

  int main()
  {
    A a1, a2; # a1.num = a2.num, static member variables are shared by objects
  }
  ```

## 9. Inheritance
  ```sh
  class A # superclass
  {
   private:
    int a; # cannot be accessed by subclass
   protected:
    int b; # can be accessed by subclass
   public:
    int c; # can be accessed by subclass
  };

  class A2 : public A {}; # subclass
  ```

## 10. Polymorphism
  ```sh
  class A # superclass
  {
   private:
    int a;
   public:
    virtual printRandomLine()= 0;
  };

  class B : public A
  {
   public:
    printRandomLine() # function overriding
    {
      printf("BBB");
    }
  };

  class C : public A
  {
   public:
    printRandomLine() # function overriding
    {
      printf("CCC");
    }
  };

  int main()
  {
    B *b = new B;
    C *c = new C;

    # polymorphism, below two lines show different result
    b->printRandomLine();
    c->printRandomLine();
  }
  ```

## 12. Others
  ```sh
  [namespace_name]::[class_name] # double colon
  [object_name].[variable_name] # dot

  ++x # increase first and process
  x++ # process first and increase
  ```

## 13. Reference
- [B2IT](https://b2it.tistory.com/category/Computer%20Science/C%2B%2B)
