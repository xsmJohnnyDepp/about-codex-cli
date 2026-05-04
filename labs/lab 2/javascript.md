### Example: Using the constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes/constructor

A practical example demonstrating how to define and use a constructor within a JavaScript class.

```APIDOC
## Example: Using the constructor

```javascript
class Person {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }

  greet() {
    console.log(`Hello, my name is ${this.name} and I am ${this.age} years old.`);
  }
}

const person1 = new Person('Alice', 30);
person1.greet(); // Output: Hello, my name is Alice and I am 30 years old.
```
```

--------------------------------

### Using Symbol.for() Example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol/for

An example demonstrating how to use Symbol.for() and a recommendation for prefixing global symbol keys to avoid name clashes.

```APIDOC
## Examples

### Using Symbol.for()
To avoid name clashes with your global symbol keys and other (library code) global symbols, it might be a good idea to prefix your symbols:

```javascript
let sym1 = Symbol.for('myApp.user.id');
let sym2 = Symbol.for('myApp.user.name');

let sym3 = Symbol.for('myApp.user.id');

console.log(sym1 === sym3); // true
console.log(sym1); // Symbol(myApp.user.id)
console.log(sym2); // Symbol(myApp.user.name)
console.log(sym3); // Symbol(myApp.user.id)
```
```

--------------------------------

### Standard Import Example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import

This example demonstrates creating a re-usable module that exports a function to find prime numbers within a specified range.

```javascript
export function getPrimes(start, end) {
  // Implementation to find primes
  const primes = [];
  for (let i = start; i <= end; i++) {
    if (isPrime(i)) {
      primes.push(i);
    }
  }
  return primes;
}

function isPrime(num) {
  if (num <= 1) return false;
  for (let i = 2; i <= Math.sqrt(num); i++) {
    if (num % i === 0) return false;
  }
  return true;
}
```

--------------------------------

### Reflect.ownKeys() Examples

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect/ownKeys

Provides various examples illustrating how Reflect.ownKeys() handles different types of properties and objects.

```APIDOC
## Examples
### Using Reflect.ownKeys()
```javascript
Reflect.ownKeys({ z: 3, y: 2, x: 1 }); // [ "z", "y", "x" ]
Reflect.ownKeys([]); // ["length"]

const sym = Symbol.for("comet");
const sym2 = Symbol.for("meteor");
const obj = {
  [sym]: 0,
  str: 0,
  773: 0,
  0: 0,
  [sym2]: 0,
  "-1": 0,
  8: 0,
  "second str": 0,
};
Reflect.ownKeys(obj);
// [ "0", "8", "773", "str", "-1", "second str", Symbol(comet), Symbol(meteor) ]
// Indexes in numeric order,
// strings in insertion order,
// symbols in insertion order
```
```

--------------------------------

### Examples of parseInt()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/parseInt

Illustrative examples demonstrating the behavior of the parseInt() function with various inputs and radices.

```APIDOC
## Examples of parseInt()

### Using parseInt()

The following examples all return `15`:

```javascript
parseInt("15");       // returns 15
parseInt("15.5");     // returns 15
parseInt("15", 10);   // returns 15
parseInt("15", 8);    // returns 13, because 15 in octal is 13
parseInt("15", 16);   // returns 21, because 15 in hexadecimal is 21
parseInt("15", 2);    // returns NaN, because 1 and 5 are not valid binary digits

// Leading and trailing spaces are ignored
parseInt("  15  ");    // returns 15

// A leading "0x" or "0X" indicates hexadecimal
parseInt("015");      // returns 15
parseInt("0x15");     // returns 21
parseInt("0X15");     // returns 21

// A leading "0" indicates octal (in older ECMAScript versions)
// but this is deprecated and not recommended.
// Use the radix argument instead.
parseInt("015", 8);   // returns 13

// Other prefixes are treated as decimal
parseInt("015", 10);  // returns 15
parseInt("015", 0);   // returns 15 (radix 0 is treated as 10)

// Invalid characters are ignored
parseInt("15e1", 10); // returns 15

// Invalid first character
parseInt("abc", 10);  // returns NaN
```

The following examples all return `NaN`:

```javascript
parseInt("abc", 10);
parseInt("15", 2);
parseInt("15", 37);
parseInt(" ");
parseInt("", 10);
```

The following examples all return `-15`:

```javascript
parseInt("-15");
parseInt("-15.5");
parseInt("-15", 10);
parseInt("-15", 8);
parseInt("-15", 16);
```

The following example returns `224`:

```javascript
parseInt("224", 10);
// returns 224
parseInt("224", "10");
// returns 224
```

`parseInt()` does not handle `BigInt` values. It stops at the `n` character, and treats the preceding string as a normal integer, with possible loss of precision.

You should pass the string to the `BigInt()` function instead, without the trailing `n` character.

```javascript
// Example with BigInt
const bigIntValue = BigInt("12345678901234567890");
console.log(bigIntValue); // 12345678901234567890n

// parseInt() with BigInt string
const parsedBigInt = parseInt("12345678901234567890n");
console.log(parsedBigInt); // 12345678901234567890n (loss of precision)

// Using BigInt() for accurate parsing
const accurateBigInt = BigInt("12345678901234567890n".replace('n', ''));
console.log(accurateBigInt); // 12345678901234567890n
```
```

--------------------------------

### Creating an ArrayBuffer

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/ArrayBuffer

Example demonstrating how to create a basic ArrayBuffer and an Int32Array view.

```APIDOC
## Creating an ArrayBuffer

### Description
This example shows how to create an 8-byte buffer and then create an `Int32Array` view that refers to this buffer.

### Code
```javascript
const buffer = new ArrayBuffer(8);
const intView = new Int32Array(buffer);

console.log(intView.length); // 2
console.log(intView[0]);     // 0

intView[0] = 32;
console.log(intView[0]);     // 32
console.log(buffer.byteLength); // 8
```
```

--------------------------------

### Sum all values with an initial value using reduceRight()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduceRight

This example shows how to use reduceRight() with an initial value for the accumulator. The reduction starts with the provided initial value and the last element of the array.

```javascript
const array = [1, 2, 3, 4];

// Sum the array elements from right to left with an initial value of 10
const sum = array.reduceRight(
  (accumulator, currentValue) => accumulator + currentValue,
  10,
);

console.log(sum); // Output: 20
```

--------------------------------

### Creating a resizable ArrayBuffer

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/ArrayBuffer

Example demonstrating the creation of a resizable ArrayBuffer and its subsequent resizing.

```APIDOC
## Creating a resizable ArrayBuffer

### Description
This example demonstrates creating an 8-byte buffer that is resizable up to a maximum length of 16 bytes, and then resizing it to 12 bytes.

### Code
```javascript
// Create a resizable buffer with a maximum size of 16 bytes
const resizableBuffer = new ArrayBuffer(8, { maxByteLength: 16 });

console.log(resizableBuffer.byteLength);    // 8
console.log(resizableBuffer.maxByteLength); // 16

// Resize the buffer to 12 bytes
resizableBuffer.resize(12);

console.log(resizableBuffer.byteLength);    // 12

// Note: It is recommended that maxByteLength is set to the smallest value possible for your use case.
// It should never exceed 1073741824 (1GB) to reduce the risk of out-of-memory errors.
```
```

--------------------------------

### Redefine all property accessors with a get() trap

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy

This example illustrates redefining all property accessors using a `get()` trap within the handler. It demonstrates how to intercept and modify property access behavior.

```javascript
const handler2 = {
  get: function(target, prop, receiver) {
    return "42";
  }
};

const proxy2 = new Proxy(target, handler2);
console.log(proxy2.message1); // 42
console.log(proxy2.message2); // 42
```

--------------------------------

### Immutable reduce() example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce

This example demonstrates an inefficient way to use reduce() when aiming for immutability by copying the entire accumulator in each iteration. This can lead to O(N^2) performance.

```javascript
const names = ["Alice", "Bob", "Charlie"];
const allNames = names.reduce((acc, name) => {
  // Copy the entire accumulator for each iteration
  const newAcc = { ...acc };
  newAcc[name] = name;
  return newAcc;
}, {});
```

--------------------------------

### Temporal.PlainMonthDay Examples

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainMonthDay/from

Illustrates how to create and use Temporal.PlainMonthDay objects.

```APIDOC
## Examples

### Creating a PlainMonthDay from an object

### Controlling overflow behavior
By default, out-of-range values are clamped to the valid range. A month-day without an explicit reference year is valid as long as there exists one year in which it is valid, even if it doesn't appear every year. If year, month, and day are all given, then the rules for mapping to a valid month-day could be complex and specific to each calendar, but here's the usual behavior:
  * If the `year`/`month` combination is invalid, the `month` is clamped to obtain a valid `monthCode` in the year.
  * If the `year`/`monthCode` combination is invalid, a different year is chosen to keep the `monthCode` as-is.
  * The `day` is clamped in the given year-month to obtain a valid month-day.

This is slightly different from usual date clamping, which favors the year over the month code.
You can change this behavior to throw an error instead:
```

--------------------------------

### JavaScriptCore Stack Trace Example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/stack

Example of a stack trace format generated by JavaScriptCore.

```javascript
baz@filename.js:10:24
bar@filename.js:6:6
foo@filename.js:2:6
global code@filename.js:13:4
```

--------------------------------

### Examples of Iterator.zip()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Iterator/zip

Illustrative examples demonstrating how to use Iterator.zip() for various scenarios, including iteration with indices, creating Maps, and joint iteration over multiple data sources.

```APIDOC
## Examples

### Iteration over a map with indices

```javascript
const data = [1, 2, 3];
const labels = ["a", "b", "c"];

for (const [index, [value, label]] of Iterator.zip(Iterator.map(data, (v, i) => [v, i]), labels)) {
  console.log(index, value, label);
}
// Output:
// 0 1 a
// 1 2 b
// 2 3 c
```

### Creating a Map from lists of keys and values

```javascript
const keys = ["name", "age", "city"];
const values = ["Alice", 30, "New York"];

const userMap = new Map(Iterator.zip(keys, values));
console.log(userMap);
// Output: Map(3) {"name" => "Alice", "age" => 30, "city" => "New York"}
```

### Joint iteration over multiple data sources

```javascript
const source1 = ["data1_1", "data1_2", "data1_3"];
const source2 = ["data2_1", "data2_2", "data2_3"];
const source3 = ["data3_1", "data3_2", "data3_3"];

for (const [d1, d2, d3] of Iterator.zip(source1, source2, source3)) {
  console.log(d1, d2, d3);
}
// Output:
// data1_1 data2_1 data3_1
// data1_2 data2_2 data3_2
// data1_3 data2_3 data3_3
```

### Using `mode: "longest"` with `padding`

```javascript
const iter1 = [1, 2];
const iter2 = ["a", "b", "c", "d"];

// Using undefined for padding
for (const item of Iterator.zip(iter1, iter2, { mode: "longest" })) {
  console.log(item);
}
// Output:
// [ 1, "a" ]
// [ 2, "b" ]
// [ undefined, "c" ]
// [ undefined, "d" ]

// Using a custom padding iterable
const paddingValues = ["X", "Y"];
for (const item of Iterator.zip(iter1, iter2, { mode: "longest", padding: paddingValues })) {
  console.log(item);
}
// Output:
// [ 1, "a" ]
// [ 2, "b" ]
// [ "X", "c" ]
// [ "Y", "d" ]
```
```

--------------------------------

### Object.assign() Examples

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/assign

Illustrative examples demonstrating the usage of Object.assign() for various scenarios including cloning, merging, and handling specific property types.

```APIDOC
## Examples

### Cloning an object
```javascript
const original = { a: 1, b: 2 };
const clone = Object.assign({}, original);

console.log(clone); // { a: 1, b: 2 }
```

### Warning for deep clone
For deep cloning, we need to use alternatives like `structuredClone()`, because `Object.assign()` copies property values. If the source value is a reference to an object, it only copies the reference value.

### Merging objects
```javascript
const target = { a: 1, b: 2 };
const source1 = { b: 3, c: 4 };
const source2 = { c: 5, d: 6 };

Object.assign(target, source1, source2);
console.log(target); // { a: 1, b: 3, c: 5, d: 6 }
```

### Merging objects with same properties
The properties are overwritten by other objects that have the same properties later in the parameters order.

### Copying symbol-typed properties
```javascript
const obj = {};
const sym = Symbol('sym');

obj[sym] = 5;
const copy = Object.assign({}, obj);

console.log(copy[sym]); // 5
```

### Properties on the prototype chain and non-enumerable properties cannot be copied
```javascript
const proto = { inheritedProp: 'hello' };
const obj = Object.create(proto);
obj.ownProp = 'world';

const copy = Object.assign({}, obj);

console.log(copy.ownProp);      // 'world'
console.log(copy.inheritedProp); // undefined
```

### Primitives will be wrapped to objects
```javascript
const target = Object.assign(1, {a:1}); // target is a Number object (primitive value is 1)
console.log(target); // Number {1, a: 1}

const target2 = Object.assign('hello', {a:1}); // target2 is a String object (primitive value is 'hello')
console.log(target2); // String {"hello", a: 1}
```

### Exceptions will interrupt the ongoing copying task
```javascript
const target = Object.defineProperty({}, 'immutable', {
  value: 1,
  writable: false
});

try {
  Object.assign(target, { a: 1, b: 2 });
} catch (e) {
  console.error(e); // TypeError: Cannot assign to read only property 'immutable' of object '#<Object>'
}

console.log(target.a); // undefined (property 'a' was not assigned because an error occurred)
console.log(target.b); // undefined (property 'b' was not assigned because an error occurred)
```

### Copying accessors
```javascript
const obj = {
  get foo() { return this.bar; },
  bar: 1
};

const copy = Object.assign({}, obj);

console.log(copy.foo); // undefined (getter is not copied, only its value at the time of assignment)
console.log(copy.bar); // 1

// To copy accessors, use Object.getOwnPropertyDescriptor and Object.defineProperty
const descriptor = Object.getOwnPropertyDescriptor(obj, 'foo');
Object.defineProperty(copy, 'foo', descriptor);
console.log(copy.foo); // 1
```
```

--------------------------------

### Create a basic Proxy

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy

This example demonstrates creating a proxy for a target object. Since the handler is empty, the proxy initially behaves identically to the target.

```javascript
const target = {};
const handler = {};
const proxy = new Proxy(target, handler);
proxy.a = 1;
console.log(target.a); // 1
```

--------------------------------

### Number() Examples

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/Number

Illustrates how to use the Number() constructor for creating Number objects and converting BigInt values.

```APIDOC
## Number() Examples

### Description
Examples demonstrating the usage of the `Number()` constructor.

### Method
Constructor (can be called with or without `new`)

### Endpoint
N/A (Built-in JavaScript object)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
// Creating Number objects
let numObj = new Number(10);
console.log(numObj); // Output: Number { 10 }

// Converting a BigInt to a number
let bigIntValue = 9007199254740991n;
let numFromBigInt = Number(bigIntValue);
console.log(numFromBigInt); // Output: 9007199254740991

// Converting other types to numbers
console.log(Number('123'));     // 123
console.log(Number(true));      // 1
console.log(Number(false));     // 0
console.log(Number(null));      // 0
console.log(Number(undefined)); // NaN
console.log(Number('hello'));   // NaN
```

### Response
#### Success Response (200)
- **Output** (various) - Console logs demonstrating the results of the examples.

#### Response Example
```javascript
// For 'let numObj = new Number(10);':
// Number { 10 }

// For 'let numFromBigInt = Number(bigIntValue);':
// 9007199254740991

// For 'console.log(Number('123'));':
// 123

// For 'console.log(Number(true));':
// 1

// For 'console.log(Number(false));':
// 0

// For 'console.log(Number(null));':
// 0

// For 'console.log(Number(undefined));':
// NaN

// For 'console.log(Number('hello'));':
// NaN
```
```

--------------------------------

### Create and resize a resizable ArrayBuffer

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/resize

This example demonstrates creating a resizable ArrayBuffer and then resizing it. Ensure the buffer is resizable before attempting to resize.

```javascript
const buffer = new ArrayBuffer(8, { maxByteLength: 16 });
console.log(buffer.resizable); // true

if (buffer.resizable) {
  buffer.resize(12);
  console.log(buffer.byteLength); // 12
}

buffer.resize(6);
console.log(buffer.byteLength); // 6
```

--------------------------------

### Slice with negative start and end indexes

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/slice

This example demonstrates using negative indexes for both `indexStart` and `indexEnd` to extract a substring. The `indexEnd` is exclusive.

```javascript
const str = "The quick brown fox jumps over the lazy dog.";

// Counts backwards from the end by 5 to find the start index and backwards from the end by 1 to find the end index.
console.log(str.slice(-5, -1));
// Expected output: "lazy"
```

--------------------------------

### V8 Stack Trace Example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/stack

Example of a stack trace format generated by V8.

```javascript
Error
    at baz (filename.js:10:15)
    at bar (filename.js:6:3)
    at foo (filename.js:2:3)
    at filename.js:13:1
```

--------------------------------

### Using locales for localized date formats

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toLocaleDateString

Shows how to specify different locales to get localized date formats. It includes examples for French (France) and German (Germany), with English (US) as a fallback.

```javascript
const date = new Date(Date.UTC(2012, 11, 12, 3, 0, 0));

// English - United States
console.log(date.toLocaleDateString('en-US'));
// Expected output: 12/12/2012

// English - United Kingdom
console.log(date.toLocaleDateString('en-GB'));
// Expected output: 12/12/2012

// French - France
console.log(date.toLocaleDateString('fr-FR'));
// Expected output: 12/12/2012

// Arabic - Egypt
console.log(date.toLocaleDateString('ar-EG'));
// Expected output: ١٢‏/١٢‏/٢٠١٢

// Using an array of locales for fallback
console.log(date.toLocaleDateString(['ban', 'id'])); // Indonesian
// Expected output: 12/12/2012
```

--------------------------------

### Bitwise OR operation example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Atomics/or

Demonstrates the bitwise OR calculation for 5 | 1.

```text
5  0101
1  0001
   ----
5  0101
```

--------------------------------

### Constructor Initialization Steps

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes/constructor

Details the step-by-step process when using the `new` keyword with a class constructor.

```APIDOC
## Using `new` with a Constructor

When `new` is used on a class, the following steps occur:

1.  **(Derived Class) Constructor Body Before `super()`:** The constructor body before the `super()` call is evaluated. `this` should not be accessed here as it's not yet initialized.
2.  **(Derived Class) `super()` Call:** The `super()` call is evaluated, initializing the parent class.
3.  **Field Initialization:** The current class's fields are initialized.
4.  **Constructor Body After `super()`:** The constructor body after the `super()` call (or the entire body for a base class) is evaluated.
```

--------------------------------

### Using toLocaleString() with a TypedArray

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray/toLocaleString

This example demonstrates how to use the toLocaleString() method on a typed array to get a locale-specific string representation of its elements. No specific setup or imports are required beyond creating a typed array instance.

```javascript
const buffer = new ArrayBuffer(16);
const int32View = new Int32Array(buffer);

int32View[0] = 42;
int32View[1] = 314159;

console.log(int32View.toLocaleString()); // Expected output: "42,314,159"
console.log(int32View.toLocaleString('de-DE')); // Expected output: "42.314.159"
console.log(int32View.toLocaleString('es-ES')); // Expected output: "42,314,159"
```

--------------------------------

### Get ZonedDateTime offset in nanoseconds

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/offsetNanoseconds

This example demonstrates how to get the offset in nanoseconds from a ZonedDateTime object. The offsetNanoseconds property is read-only.

```javascript
const dt = Temporal.now.zonedDateTimeISO("Europe/Paris");
console.log(dt.offsetNanoseconds);
```

--------------------------------

### Get UTC Day of the Week

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getUTCDay

This example demonstrates how to get the day of the week for the current date in UTC. The returned value is an integer from 0 (Sunday) to 6 (Saturday).

```javascript
const today = new Date();
const weekday = today.getUTCDay();
console.log(weekday);
```

--------------------------------

### Bitwise XOR Example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Bitwise_XOR

Demonstrates the bitwise XOR operation between two numbers, showing the binary representation and the resulting value.

```javascript
     9 (base 10) = 00000000000000000000000000001001 (base 2)
    14 (base 10) = 00000000000000000000000000001110 (base 2)
                   --------------------------------
14 ^ 9 (base 10) = 00000000000000000000000000000111 (base 2) = 7 (base 10)
```

--------------------------------

### Basic usage of await using

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/await_using

Demonstrates using await using with a Node.js FileHandle, which implements the async disposable protocol.

```javascript
await using file = await fs.open("./example.txt", "w");
```

--------------------------------

### Create a Fibonacci sequence iterator and take the first three terms

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Iterator/take

This example demonstrates creating an iterator for the Fibonacci sequence and then using `take()` to get only the first three terms. Ensure the `fibonacci` generator function is defined.

```javascript
function* fibonacci() {
  let [prev, curr] = [0, 1];
  while (true) {
    yield curr;
    [prev, curr] = [curr, prev + curr];
  }
}

const firstThree = [...fibonacci().take(3)];
console.log(firstThree); // [1, 1, 2]
```

--------------------------------

### String.prototype.padStart()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/padStart

The padStart() method pads the current string with a given string (repeated and/or truncated, if needed) so that the resulting string has a given length.

```APIDOC
## String.prototype.padStart()

### Description
The padStart() method pads the current string with a given string (repeated and/or truncated, if needed) so that the resulting string has a given length. The padding is applied from the start of this string.

### Parameters
- **targetLength** (number) - Required - The length of the resulting string once the current string has been padded. If the value is less than or equal to the string length, the string is returned as-is.
- **padString** (string) - Optional - The string to pad the current string with. If too long, it will be truncated from the end. Defaults to a space character.

### Return value
- **String** - A string of the specified targetLength with padString applied at the start.
```

--------------------------------

### Invalid Variable Name in JavaScript

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Identifier_after_number

Variable names in JavaScript cannot start with a number. This example shows an invalid declaration.

```javascript
let 1variable = 1;
```

--------------------------------

### Extract elements from index 1 up to (but not including) the last element

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice

This example shows how to use a positive start index and a negative end index. The slice extracts elements from the start index up to, but not including, the element specified by the negative end index.

```javascript
const fruits = ["Apple", "Banana", "Orange", "Lemon", "Mango", "Apple"] 

console.log(fruits.slice(1, -1)) 
// Expected output: 
// ['Banana', 'Orange', 'Lemon', 'Mango']
```

--------------------------------

### Using options to customize date output

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toLocaleDateString

Demonstrates customizing the date output format using the 'options' parameter. It shows examples for different combinations of 'weekday', 'year', 'month', and 'day' formats.

```javascript
const date = new Date(Date.UTC(2012, 11, 12, 3, 0, 0));

const options1 = {
  weekday: 'long',
  year: 'numeric',
  month: 'long',
  day: 'numeric'
};
console.log(date.toLocaleDateString('en-US', options1));
// Expected output: Wednesday, December 12, 2012

const options2 = {
  year: 'numeric',
  month: '2-digit',
  day: '2-digit',
  weekday: 'short'
};
console.log(date.toLocaleDateString('de-DE', options2));
// Expected output: Mi., 12.12.2012

const options3 = {
  year: 'numeric',
  month: '2-digit',
  day: '2-digit'
};
console.log(date.toLocaleDateString('en-US', options3));
// Expected output: 12/12/2012

// If weekday, year, month, and day are all undefined, year, month, and day default to "numeric"
const options4 = {};
console.log(date.toLocaleDateString('en-US', options4));
// Expected output: 12/12/2012
```

--------------------------------

### Literal dash usage in character classes

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Character_class

Examples of using the dash character literally by placing it at the start, end, or using an escape sequence.

```javascript
[a-]
```

```javascript
[!--]
```

```javascript
[--9]
```

```javascript
\-
```

--------------------------------

### Detecting Words Example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Word_boundary_assertion

An example demonstrating how to use word boundary assertions to detect specific words within a string, with a note on language-specific considerations.

```APIDOC
## Detecting Words

### Description
This example shows how to use `\b` to ensure that you match whole words, preventing partial matches within other words.

### Method
N/A (JavaScript String Method)

### Endpoint
N/A (JavaScript String Method)

### Parameters
None

### Request Example
```javascript
const text = 'thank you, thanks a lot!';
const regex = /\bthank(s| you)\b/;

console.log(regex.test(text)); // true

// Example with a word that might be part of another
const text2 = 'The category is important.';
const regex2 = /\bcat\b/;
console.log(regex2.test(text2)); // false

// Warning: Not all languages have clearly defined word boundaries. For languages like Chinese or Thai, consider using Intl.Segmenter.
```

### Response
#### Success Response (Boolean)
- `true`: If the pattern is found matching whole words.
- `false`: Otherwise.

#### Response Example
```json
{
  "matchFound": true
}
```
```

--------------------------------

### Conjunction selection based on locale and word

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/ListFormat/ListFormat

The conjunction word can change based on the locale and the starting letter of list items. This example shows Spanish conjunctions.

```javascript
const formatterEs = new Intl.ListFormat('es', {
  style: 'long',
  type: 'conjunction'
});
formatterEs.format(['apples', 'oranges', 'bananas']); // "apples, oranges y bananas"
formatterEs.format(['apples', 'oranges', 'iguanas']); // "apples, oranges e iguanas"
```

--------------------------------

### Retrieve ListFormat options

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/ListFormat/resolvedOptions

Demonstrates how to initialize an Intl.ListFormat object and inspect its resolved configuration properties.

```javascript
const deListFormatter = new Intl.ListFormat("de-DE", { type: "disjunction" });
const options = deListFormatter.resolvedOptions();

console.log(options.locale);
// Expected output: "de-DE"

console.log(options.style);
// Expected output: "long"

console.log(options.type);
// Expected output: "disjunction"
```

--------------------------------

### Trapping Object.defineProperty()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy/Proxy/defineProperty

This example demonstrates how to trap the Object.defineProperty() operation using a Proxy. The descriptor passed to the trap has specific usable properties: enumerable, configurable, writable, value, get, and set. Non-standard properties in the descriptor will be ignored.

```javascript
const handler = {
  defineProperty(target, property, descriptor) {
    // ... your custom logic ...
    return Reflect.defineProperty(target, property, descriptor);
  }
};

const target = {};
const proxy = new Proxy(target, handler);

Object.defineProperty(proxy, 'myProp', {
  value: 42,
  writable: false,
  enumerable: true,
  configurable: true
});
```

--------------------------------

### Creating a ReferenceError

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ReferenceError

Example demonstrating how to manually create and throw a ReferenceError.

```APIDOC
## Creating a ReferenceError

### Description
This example demonstrates how to explicitly create a `ReferenceError` object using its constructor and then throw it.

### Method
`new ReferenceError()` and `throw` statement

### Endpoint
N/A (JavaScript code execution)

### Parameters
None

### Request Body
None

### Response
#### Success Response (200)
- **Throws a `ReferenceError` that can be caught.**

### Request Example
```javascript
function checkVariable(variableName) {
  try {
    // Simulate checking if a variable exists, if not, throw ReferenceError
    if (typeof window[variableName] === 'undefined') {
      throw new ReferenceError(`${variableName} is not defined.`);
    }
    console.log(`${variableName} exists.`);
  } catch (error) {
    console.error(error.toString());
  }
}

checkVariable('existingVariable'); // Assuming 'existingVariable' is defined elsewhere
checkVariable('nonExistentVariable');
```

### Response Example
```
existingVariable exists.
ReferenceError: nonExistentVariable is not defined.
```
```

--------------------------------

### Get ZonedDateTime offset in nanoseconds (UTC)

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/offsetNanoseconds

This example shows how to obtain a ZonedDateTime representing the same wall-clock time in UTC by using the offsetNanoseconds property. The set accessor for offsetNanoseconds is undefined, so it cannot be changed directly.

```javascript
const dt = Temporal.now.zonedDateTimeISO("Europe/Paris");
const utcOffsetNs = dt.offsetNanoseconds;
const utcDt = dt.with({ offset: Temporal.Duration.from({ nanoseconds: utcOffsetNs }) });
console.log(utcDt.toString());
```

--------------------------------

### Get a random number between two values

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random

This example returns a random number between the specified values. The returned value is no lower than min (inclusive), and less than max (exclusive).

```javascript
function getRandomArbitrary(min, max) {
  return Math.random() * (max - min) + min;
}

console.log(getRandomArbitrary(1, 5)); // Output: a number between 1 and 5
```

--------------------------------

### Get baseName with options overriding input

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale/baseName

When creating an Intl.Locale object, options can override parts of the input string. This example shows how the baseName reflects the overridden region.

```javascript
// Input string indicates language as Dutch and region as Belgium,
// but options object overrides the region and sets it to the Netherlands
const dutch = new Intl.Locale("nl-Latn-BE", { region: "NL" });

console.log(dutch.baseName); // "nl-Latn-NL"
```

--------------------------------

### Get baseName from a locale string

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale/baseName

Use the baseName property to retrieve the core locale information. This example shows how to create a new Intl.Locale object and access its baseName.

```javascript
const myLoc = new Intl.Locale("fr-Latn-CA"); // Sets locale to Canadian French
console.log(myLoc.toString()); // "fr-Latn-CA-u-ca-gregory"
console.log(myLoc.baseName); // "fr-Latn-CA"
```

--------------------------------

### SpiderMonkey Stack Trace Example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/stack

Example of a stack trace format generated by SpiderMonkey.

```javascript
baz@filename.js:10:15
bar@filename.js:6:3
foo@filename.js:2:3
@filename.js:13:1
```

--------------------------------

### Create Fibonacci sequence iterator skipping first two terms

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Iterator/drop

This example demonstrates creating an iterator for the Fibonacci sequence and then using `drop()` to skip the first two terms, effectively starting the sequence from the third term.

```javascript
function* fibonacci() {
  let [a, b] = [0, 1];
  while (true) {
    yield a;
    [a, b] = [b, a + b];
  }
}

const fib = Iterator.from(fibonacci());
const droppedFib = fib.drop(2);

console.log(droppedFib.next().value); // 1
console.log(droppedFib.next().value); // 2
console.log(droppedFib.next().value); // 3
```

--------------------------------

### Bitwise AND operation example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Bitwise_AND

Demonstrates the bitwise AND operation between two numbers, showing their binary representations and the resulting binary and decimal values.

```javascript
     9 (base 10) = 00000000000000000000000000001001 (base 2)
    14 (base 10) = 00000000000000000000000000001110 (base 2)
                   --------------------------------
14 & 9 (base 10) = 00000000000000000000000000001000 (base 2) = 8 (base 10)
```

--------------------------------

### Get exact source text of a function

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/toString

You can obtain the exact source text of a function, including comments and whitespace, by coercing it to a string, for example, using a template literal.

```javascript
const code = `
${myFunction.toString()}
`;
```

--------------------------------

### String Constructor and Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/split

Documentation for the String constructor and its static and instance methods.

```APIDOC
## String Constructor

### Description
Creates a new String object or primitive.

### Method
`String()`

### Parameters
None

### Request Example
```javascript
const str = new String("hello");
```

### Response
#### Success Response (200)
Returns a new String object.

#### Response Example
```json
"hello"
```

## String Static Methods

### Description
Provides static methods for String objects.

### Method
`String.fromCharCode()`

### Description
Returns a string created by using the specified sequence of Unicode values.

### Parameters
- `num1`, `...`, `numN` (number) - A sequence of numbers representing Unicode character codes.

### Request Example
```javascript
String.fromCharCode(65, 66, 67);
```

### Response
#### Success Response (200)
Returns a string representing the characters corresponding to the given Unicode values.

#### Response Example
```json
"ABC"
```

### Method
`String.fromCodePoint()`

### Description
Returns a string created by using the specified sequence of code points.

### Parameters
- `num1`, `...`, `numN` (number) - A sequence of numbers representing Unicode code points.

### Request Example
```javascript
String.fromCodePoint(9731, 9732, 9733);
```

### Response
#### Success Response (200)
Returns a string representing the characters corresponding to the given code points.

#### Response Example
```json
"☃ C"
```

### Method
`String.raw()`

### Description
Returns a string created by using a template string, escaping the backticks and `${expression}`.

### Parameters
- `templateObject` (template object) - An object with a `raw` property containing an array of strings.
- `...` (any) - Substitution values.

### Request Example
```javascript
String.raw`Hello\nWorld`;
```

### Response
#### Success Response (200)
Returns a raw string with escape sequences interpreted literally.

#### Response Example
```json
"Hello\\nWorld"
```

## String Instance Methods

### Description
Provides methods for String instances.

### Method
`anchor()`

### Description
Creates an HTML anchor element (`<a>`). Deprecated.

### Parameters
- `name` (string) - The name for the anchor.

### Request Example
```javascript
"myLink".anchor("section1");
```

### Response
#### Success Response (200)
Returns an HTML anchor tag string.

#### Response Example
```html
"<a name=\"section1\">myLink</a>"
```

### Method
`at()`

### Description
Returns the character at the specified index in a string. Allows for negative indexing.

### Parameters
- `index` (number) - The index of the character to retrieve.

### Request Example
```javascript
"hello".at(1);
"hello".at(-1);
```

### Response
#### Success Response (200)
Returns the character at the specified index.

#### Response Example
```json
"e"
"o"
```

### Method
`big()`

### Description
Creates a string within a `<big>` tag. Deprecated.

### Parameters
None

### Request Example
```javascript
"big text".big();
```

### Response
#### Success Response (200)
Returns a string wrapped in `<big>` tags.

#### Response Example
```html
"<big>big text</big>"
```

### Method
`blink()`

### Description
Creates a string within a `<blink>` tag. Deprecated.

### Parameters
None

### Request Example
```javascript
"blink text".blink();
```

### Response
#### Success Response (200)
Returns a string wrapped in `<blink>` tags.

#### Response Example
```html
"<blink>blink text</blink>"
```

### Method
`bold()`

### Description
Creates a string within a `<b>` tag. Deprecated.

### Parameters
None

### Request Example
```javascript
"bold text".bold();
```

### Response
#### Success Response (200)
Returns a string wrapped in `<b>` tags.

#### Response Example
```html
"<b>bold text</b>"
```

### Method
`charAt()`

### Description
Returns the character at the specified index in a string.

### Parameters
- `index` (number) - The index of the character to retrieve.

### Request Example
```javascript
"hello".charAt(1);
```

### Response
#### Success Response (200)
Returns the character at the specified index.

#### Response Example
```json
"e"
```

### Method
`charCodeAt()`

### Description
Returns the Unicode value of the character at the specified index in a string.

### Parameters
- `index` (number) - The index of the character.

### Request Example
```javascript
"hello".charCodeAt(1);
```

### Response
#### Success Response (200)
Returns the Unicode value of the character.

#### Response Example
```json
101
```

### Method
`codePointAt()`

### Description
Returns the Unicode value of the character at the specified index in a string, considering supplementary Unicode characters.

### Parameters
- `index` (number) - The index of the character.

### Request Example
```javascript
"hello".codePointAt(1);
```

### Response
#### Success Response (200)
Returns the Unicode value of the character.

#### Response Example
```json
101
```

### Method
`concat()`

### Description
Joins two or more strings.

### Parameters
- `string1`, `...`, `stringN` (string) - The strings to concatenate.

### Request Example
```javascript
"hello".concat(" ", "world");
```

### Response
#### Success Response (200)
Returns the concatenated string.

#### Response Example
```json
"hello world"
```

### Method
`endsWith()`

### Description
Determines whether a string ends with the characters of a specified string.

### Parameters
- `searchString` (string) - The string to search for at the end.
- `length` (number, optional) - The length of the string to search within.

### Request Example
```javascript
"hello world".endsWith("world");
"hello world".endsWith("hello", 5);
```

### Response
#### Success Response (200)
Returns `true` if the string ends with the specified characters, `false` otherwise.

#### Response Example
```json
true
true
```

### Method
`fixed()`

### Description
Creates a string within a `<tt>` tag. Deprecated.

### Parameters
None

### Request Example
```javascript
"fixed text".fixed();
```

### Response
#### Success Response (200)
Returns a string wrapped in `<tt>` tags.

#### Response Example
```html
"<tt>fixed text</tt>"
```

### Method
`fontcolor()`

### Description
Creates a string within a `<font>` tag. Deprecated.

### Parameters
- `color` (string) - The color for the font.

### Request Example
```javascript
"colored text".fontcolor("red");
```

### Response
#### Success Response (200)
Returns a string wrapped in `<font>` tags with the specified color.

#### Response Example
```html
"<font color=\"red\">colored text</font>"
```

### Method
`fontsize()`

### Description
Creates a string within a `<font>` tag with a specified size. Deprecated.

### Parameters
- `size` (number) - The font size (1-7).

### Request Example
```javascript
"large text".fontsize(5);
```

### Response
#### Success Response (200)
Returns a string wrapped in `<font>` tags with the specified size.

#### Response Example
```html
"<font size=\"5\">large text</font>"
```

### Method
`includes()`

### Description
Determines whether a string contains the characters of a specified string.

### Parameters
- `searchString` (string) - The string to search for.
- `position` (number, optional) - The position to start searching from.

### Request Example
```javascript
"hello world".includes("world");
"hello world".includes("hello", 1);
```

### Response
#### Success Response (200)
Returns `true` if the string contains the specified characters, `false` otherwise.

#### Response Example
```json
true
false
```

### Method
`indexOf()`

### Description
Returns the index within the calling String object of the first occurrence of the specified value, starting the search at `fromIndex`.

### Parameters
- `searchValue` (string) - The value to search for.
- `fromIndex` (number, optional) - The index to start the search at.

### Request Example
```javascript
"hello world".indexOf("o");
"hello world".indexOf("o", 5);
```

### Response
#### Success Response (200)
Returns the index of the first occurrence, or -1 if not found.

#### Response Example
```json
4
7
```

### Method
`isWellFormed()`

### Description
Determines whether a string consists of valid Unicode characters.

### Parameters
- `input` (string) - The string to check.

### Request Example
```javascript
String.isWellFormed("hello");
String.isWellFormed("\uD800");
```

### Response
#### Success Response (200)
Returns `true` if the string is well-formed, `false` otherwise.

#### Response Example
```json
true
false
```

### Method
`italics()`

### Description
Creates a string within an `<i>` tag. Deprecated.

### Parameters
None

### Request Example
```javascript
"italic text".italics();
```

### Response
#### Success Response (200)
Returns a string wrapped in `<i>` tags.

#### Response Example
```html
"<i>italic text</i>"
```

### Method
`lastIndexOf()`

### Description
Returns the index within the calling String object of the last occurrence of the specified value, searching backwards from `fromIndex`.

### Parameters
- `searchValue` (string) - The value to search for.
- `fromIndex` (number, optional) - The index to start the search at.

### Request Example
```javascript
"hello world".lastIndexOf("o");
"hello world".lastIndexOf("o", 5);
```

### Response
#### Success Response (200)
Returns the index of the last occurrence, or -1 if not found.

#### Response Example
```json
7
4
```

### Method
`link()`

### Description
Creates an HTML hyperlink (`<a>`) with the `href` attribute. Deprecated.

### Parameters
- `url` (string) - The URL for the hyperlink.

### Request Example
```javascript
"click me".link("https://example.com");
```

### Response
#### Success Response (200)
Returns an HTML anchor tag string.

#### Response Example
```html
"<a href=\"https://example.com\">click me</a>"
```

### Method
`localeCompare()`

### Description
Returns a number indicating whether a reference string comes before, or after, or is equivalent to the given string in sort order.

### Parameters
- `compareString` (string) - The string to compare against.
- `locales` (string or array, optional) - A string with a BCP 47 language tag, or an array of such strings.
- `options` (object, optional) - An object with properties that specify comparison options.

### Request Example
```javascript
"réservé".localeCompare("RESERVE", "en", { sensitivity: "base" });
```

### Response
#### Success Response (200)
Returns -1, 0, or 1 based on the sort order.

#### Response Example
```json
0
```

### Method
`match()`

### Description
Retrieves the result of matching a string against a regular expression.

### Parameters
- `regexp` (RegExp) - The regular expression to match.

### Request Example
```javascript
"hello world".match(/o/);
```

### Response
#### Success Response (200)
Returns an array containing the match results, or null if no match is found.

#### Response Example
```json
["o", index: 4, input: "hello world", groups: undefined]
```

### Method
`matchAll()`

### Description
Returns an iterator of all results matching a string against a regular expression, including capturing groups.

### Parameters
- `regexp` (RegExp) - The regular expression to match.

### Request Example
```javascript
const str = "hello world";
const regex = /o/g;
const matches = str.matchAll(regex);
```

### Response
#### Success Response (200)
Returns an iterator of match objects.

#### Response Example
```json
Iterator object
```

### Method
`normalize()`

### Description
Returns the Unicode Normalization Form of the given string.

### Parameters
- `form` (string, optional) - The normalization form ('NFC', 'NFD', 'NFKC', 'NFKD'). Defaults to 'NFC'.

### Request Example
```javascript
const str = String.fromCharCode(0x0061, 0x030A);
str.normalize('NFD');
```

### Response
#### Success Response (200)
Returns the normalized string.

#### Response Example
```json
"å"
```

### Method
`padEnd()`

### Description
Pads the current string with a given string (repeated, if necessary) so that the resulting string reaches a given length.

### Parameters
- `targetLength` (number) - The length of the resulting string.
- `padString` (string, optional) - The string to pad with. Defaults to ' '.

### Request Example
```javascript
"abc".padEnd(5, "_");
```

### Response
#### Success Response (200)
Returns the padded string.

#### Response Example
```json
"abc__"
```

### Method
`padStart()`

### Description
Pads the current string with a given string (repeated, if necessary) so that the resulting string reaches a given length. The padding is applied from the start of the string.

### Parameters
- `targetLength` (number) - The length of the resulting string.
- `padString` (string, optional) - The string to pad with. Defaults to ' '.

### Request Example
```javascript
"abc".padStart(5, "_");
```

### Response
#### Success Response (200)
Returns the padded string.

#### Response Example
```json
"__abc"
```

### Method
`repeat()`

### Description
Constructs and returns a new string which contains the specified number of copies of the string on which it was called, concatenated together.

### Parameters
- `count` (number) - The number of times to repeat the string.

### Request Example
```javascript
"abc".repeat(3);
```

### Response
#### Success Response (200)
Returns the repeated string.

#### Response Example
```json
"abcabcabc"
```

### Method
`replace()`

### Description
Returns the new string with some or all matches of a pattern replaced by a replacement.

### Parameters
- `pattern` (RegExp or string) - The pattern to search for.
- `replacement` (string or function) - The replacement string or function.

### Request Example
```javascript
"hello world".replace("world", "there");
"hello world".replace(/o/g, "*");
```

### Response
#### Success Response (200)
Returns the new string with replacements made.

#### Response Example
```json
"hello there"
"hell* w*rld"
```

### Method
`replaceAll()`

### Description
Returns a new string with all matches of a pattern replaced by a replacement.

### Parameters
- `pattern` (RegExp or string) - The pattern to search for.
- `replacement` (string or function) - The replacement string or function.

### Request Example
```javascript
"hello world hello".replaceAll("hello", "hi");
```

### Response
#### Success Response (200)
Returns the new string with all replacements made.

#### Response Example
```json
"hi world hi"
```

### Method
`search()`

### Description
Executes a search for a match between a regular expression and this String object.

### Parameters
- `regexp` (RegExp) - The regular expression to search for.

### Request Example
```javascript
"hello world".search(/o/);
```

### Response
#### Success Response (200)
Returns the index of the first match, or -1 if not found.

#### Response Example
```json
4
```

### Method
`slice()`

### Description
Extracts a section of a string and returns it as a new string, without modifying the original string.

### Parameters
- `indexStart` (number) - The beginning index of the specified section of the string. Defaults to 0.
- `indexEnd` (number, optional) - The end index (exclusive) of the specified section of the string. Defaults to the string's length.

### Request Example
```javascript
"hello world".slice(6);
"hello world".slice(0, 5);
```

### Response
#### Success Response (200)
Returns the extracted section of the string.

#### Response Example
```json
"world"
"hello"
```

### Method
`small()`

### Description
Creates a string within a `<small>` tag. Deprecated.

### Parameters
None

### Request Example
```javascript
"small text".small();
```

### Response
#### Success Response (200)
Returns a string wrapped in `<small>` tags.

#### Response Example
```html
"<small>small text</small>"
```

### Method
`split()`

### Description
Splits a String object into an array of strings by separating the string into substrings, using a specified separator string to determine where to make each split.

### Parameters
- `separator` (string or RegExp, optional) - Specifies the character(s) or pattern to use for separating the string. If omitted, the array contains one element consisting of the entire string.
- `limit` (number, optional) - An integer that limits the number of splits to be found. If provided, splits the string at most `limit` times.

### Request Example
```javascript
"apple,banana,cherry".split(",");
"apple,banana,cherry".split(",", 2);
```

### Response
#### Success Response (200)
Returns an array of strings.

#### Response Example
```json
["apple", "banana", "cherry"]
["apple", "banana"]
```

### Method
`startsWith()`

### Description
Determines whether a string begins with the characters of a specified string.

### Parameters
- `searchString` (string) - The string to search for at the beginning.
- `position` (number, optional) - The position in the string at which to begin searching. Defaults to 0.

### Request Example
```javascript
"hello world".startsWith("hello");
"hello world".startsWith("world", 6);
```

### Response
#### Success Response (200)
Returns `true` if the string starts with the specified characters, `false` otherwise.

#### Response Example
```json
true
true
```

### Method
`strike()`

### Description
Creates a string within a `<strike>` tag. Deprecated.

### Parameters
None

### Request Example
```javascript
"strike text".strike();
```

### Response
#### Success Response (200)
Returns a string wrapped in `<strike>` tags.

#### Response Example
```html
"<strike>strike text</strike>"
```

### Method
`sub()`

### Description
Creates a string within a `<sub>` tag. Deprecated.

### Parameters
None

### Request Example
```javascript
"subscript text".sub();
```

### Response
#### Success Response (200)
Returns a string wrapped in `<sub>` tags.

#### Response Example
```html
"<sub>subscript text</sub>"
```

### Method
`substr()`

### Description
Returns a subset of a string between the specified indices. Deprecated.

### Parameters
- `start` (number) - The index at which to begin extraction.
- `length` (number, optional) - The number of characters to extract.

### Request Example
```javascript
"hello world".substr(6, 5);
```

### Response
#### Success Response (200)
Returns the extracted substring.

#### Response Example
```json
"world"
```

### Method
`substring()`

### Description
Returns the part of the string between the start and end parameters.

### Parameters
- `indexStart` (number) - The index of the first character to include in the returned substring.
- `indexEnd` (number, optional) - The index of the first character to exclude from the returned substring.

### Request Example
```javascript
"hello world".substring(6, 11);
"hello world".substring(6);
```

### Response
#### Success Response (200)
Returns the extracted substring.

#### Response Example
```json
"world"
"world"
```

### Method
`sup()`

### Description
Creates a string within a `<sup>` tag. Deprecated.

### Parameters
None

### Request Example
```javascript
"superscript text".sup();
```

### Response
#### Success Response (200)
Returns a string wrapped in `<sup>` tags.

#### Response Example
```html
"<sup>superscript text</sup>"
```

### Method
`toLocaleLowerCase()`

### Description
Returns the calling string value converted to lower case, according to any locale-specific case mappings.

### Parameters
- `locales` (string or array, optional) - A string with a BCP 47 language tag, or an array of such strings.

### Request Example
```javascript
"HELLO".toLocaleLowerCase("tr");
```

### Response
#### Success Response (200)
Returns the lowercased string.

#### Response Example
```json
"hello"
```

### Method
`toLocaleUpperCase()`

### Description
Returns the calling string value converted to upper case, according to any locale-specific case mappings.

### Parameters
- `locales` (string or array, optional) - A string with a BCP 47 language tag, or an array of such strings.

### Request Example
```javascript
"hello".toLocaleUpperCase("tr");
```

### Response
#### Success Response (200)
Returns the uppercased string.

#### Response Example
```json
"HELLO"
```

### Method
`toLowerCase()`

### Description
Converts a string to lower case.

### Parameters
None

### Request Example
```javascript
"HELLO".toLowerCase();
```

### Response
#### Success Response (200)
Returns the lowercased string.

#### Response Example
```json
"hello"
```

### Method
`toString()`

### Description
Returns the string value of a String object.

### Parameters
None

### Request Example
```javascript
const strObj = new String("hello");
strObj.toString();
```

### Response
#### Success Response (200)
Returns the string value.

#### Response Example
```json
"hello"
```

### Method
`toUpperCase()`

### Description
Converts a string to upper case.

### Parameters
None

### Request Example
```javascript
"hello".toUpperCase();
```

### Response
#### Success Response (200)
Returns the uppercased string.

#### Response Example
```json
"HELLO"
```

### Method
`toWellFormed()`

### Description
Returns a new string that is guaranteed to be well-formed UTF-16.

### Parameters
None

### Request Example
```javascript
const str = String.fromCharCode(0xD800);
str.toWellFormed();
```

### Response
#### Success Response (200)
Returns the well-formed string.

#### Response Example
```json
"\uFFFD"
```

### Method
`trim()`

### Description
Removes whitespace from both ends of a string.

### Parameters
None

### Request Example
```javascript
"   hello world   ".trim();
```

### Response
#### Success Response (200)
Returns the trimmed string.

#### Response Example
```json
"hello world"
```

### Method
`trimEnd()`

### Description
Removes whitespace from the end of a string.

### Parameters
None

### Request Example
```javascript
"   hello world   ".trimEnd();
```

### Response
#### Success Response (200)
Returns the trimmed string.

#### Response Example
```json
"   hello world"
```

### Method
`trimStart()`

### Description
Removes whitespace from the beginning of a string.

### Parameters
None

### Request Example
```javascript
"   hello world   ".trimStart();
```

### Response
#### Success Response (200)
Returns the trimmed string.

#### Response Example
```json
"hello world   "
```

### Method
`valueOf()`

### Description
Returns the primitive value of a String object.

### Parameters
None

### Request Example
```javascript
const strObj = new String("hello");
strObj.valueOf();
```

### Response
#### Success Response (200)
Returns the primitive string value.

#### Response Example
```json
"hello"
```

### Method
`[Symbol.iterator]()`

### Description
Returns a new iterator object that contains the `[Symbol.iterator]` property.

### Parameters
None

### Request Example
```javascript
const str = "hello";
const iterator = str[Symbol.iterator]();
```

### Response
#### Success Response (200)
Returns an iterator object.

#### Response Example
```json
Iterator object
```

## String Instance Properties

### Description
Provides properties for String instances.

### Property
`length`

### Description
Returns the length of the string.

### Request Example
```javascript
"hello".length;
```

### Response
#### Success Response (200)
Returns the length of the string.

#### Response Example
```json
5
```

## Object/Function Static Methods

### Description
Provides static methods for Object and Function.

### Method
`apply()`

### Description
Calls a method of an object, optionally specifying the `this` value and an array of arguments.

### Parameters
- `thisArg` (any) - The value to be passed as the `this` parameter to the method.
- `argsArray` (array, optional) - An array-like object of parameters to pass to the method.

### Request Example
```javascript
function greet(name) {
  console.log(`Hello, ${name}, from ${this.city}`);
}
const person = { city: "New York" };
greet.apply(person, ["Alice"]);
```

### Response
#### Success Response (200)
Returns the result of calling the method.

#### Response Example
```json
Hello, Alice, from New York
```

### Method
`bind()`

### Description
Creates a new function that, when called, has its `this` keyword set to the provided value.

### Parameters
- `thisArg` (any) - The value to be passed as the `this` parameter to the new function.
- `args` (any, optional) - Arguments to prepend to the arguments provided to the new function.

### Request Example
```javascript
function greet(name) {
  console.log(`Hello, ${name}, from ${this.city}`);
}
const person = { city: "New York" };
const greetAlice = greet.bind(person, "Alice");
greetAlice();
```

### Response
#### Success Response (200)
Returns a new function with the bound `this` value and arguments.

#### Response Example
```json
Hello, Alice, from New York
```

### Method
`call()`

### Description
Calls a method of an object, specifying the `this` value and the arguments to be passed individually.

### Parameters
- `thisArg` (any) - The value to be passed as the `this` parameter to the method.
- `arg1`, `...`, `argN` (any, optional) - Arguments to pass to the method.

### Request Example
```javascript
function greet(name) {
  console.log(`Hello, ${name}, from ${this.city}`);
}
const person = { city: "New York" };
greet.call(person, "Alice");
```

### Response
#### Success Response (200)
Returns the result of calling the method.

#### Response Example
```json
Hello, Alice, from New York
```

### Method
`toString()`

### Description
Returns a string representing the source code of the function.

### Parameters
None

### Request Example
```javascript
function myFunc() { return true; }
myFunc.toString();
```

### Response
#### Success Response (200)
Returns the function's source code as a string.

#### Response Example
```json
"function myFunc() { return true; }"
```

### Method
`[Symbol.hasInstance]()`

### Description
Determines if the `prototype` property of a constructor is in the prototype chain of an object. Used by the `instanceof` operator.

### Parameters
- `obj` (any) - The object to test.

### Request Example
```javascript
function MyClass() {}
const instance = new MyClass();
Object.prototype.toString.call(instance)[Symbol.hasInstance](instance);
```

### Response
#### Success Response (200)
Returns `true` if the object is an instance of the constructor, `false` otherwise.

#### Response Example
```json
true
```

## Object/Function Static Properties

### Description
Provides static properties for Object and Function.

### Property
`displayName`

### Description
Non-standard. Used for debugging purposes.

### Property
`length`

### Description
Returns the number of arguments expected by the function.

### Property
`name`

### Description
Returns the name of the function.

### Property
`prototype`

### Description
Allows the addition of properties to an object.

### Property
`arguments`

### Description
Non-standard. Deprecated. Refers to the arguments passed to a function.

### Property
`caller`

### Description
Non-standard. Deprecated. Refers to the function that invoked the current function.

## Object/Function Instance Methods

### Description
Provides instance methods for Object and Function.

### Method
`__defineGetter__()`

### Description
Associates a function with the property whose name matches the string passed to the method. Deprecated.

### Parameters
- `propertyName` (string) - The name of the property.
- `getter` (function) - The function to call when the property is accessed.

### Request Example
```javascript
const obj = {};
obj.__defineGetter__("x", function() { return this._x; });
obj._x = 10;
obj.x;
```

### Response
#### Success Response (200)
No return value, but defines a getter for the property.

#### Response Example
```json
10
```

### Method
`__defineSetter__()`

### Description
Associates a function with the property whose name matches the string passed to the method. Deprecated.

### Parameters
- `propertyName` (string) - The name of the property.
- `setter` (function) - The function to call when the property is assigned a value.

### Request Example
```javascript
const obj = {};
obj.__defineSetter__("x", function(val) { this._x = val; });
obj.x = 10;
obj._x;
```

### Response
#### Success Response (200)
No return value, but defines a setter for the property.

#### Response Example
```json
10
```

### Method
`__lookupGetter__()`

### Description
Returns the getter function associated with the specified property name. Deprecated.

### Parameters
- `propertyName` (string) - The name of the property.

### Request Example
```javascript
const obj = { get x() { return 10; } };
obj.__lookupGetter__("x");
```

### Response
#### Success Response (200)
Returns the getter function.

#### Response Example
```json
function get x() { return 10; }
```

### Method
`__lookupSetter__()`

### Description
Returns the setter function associated with the specified property name. Deprecated.

### Parameters
- `propertyName` (string) - The name of the property.

### Request Example
```javascript
const obj = { set x(val) { this._x = val; } };
obj.__lookupSetter__("x");
```

### Response
#### Success Response (200)
Returns the setter function.

#### Response Example
```json
function set x(val) { this._x = val; }
```

### Method
`hasOwnProperty()`

### Description
Indicates whether an object has the specified property as its own property.

### Parameters
- `prop` (string) - The name of the property to test.

### Request Example
```javascript
const obj = { name: "Alice" };
obj.hasOwnProperty("name");
obj.hasOwnProperty("toString");
```

### Response
#### Success Response (200)
Returns `true` if the object has the specified property, `false` otherwise.

#### Response Example
```json
true
false
```

### Method
`isPrototypeOf()`

### Description
Tests whether an object is an ancestor in the prototype chain of a specified object.

### Parameters
- `V` (object) - The object to test for.

### Request Example
```javascript
const proto = { };
const obj = Object.create(proto);
proto.isPrototypeOf(obj);
```

### Response
#### Success Response (200)
Returns `true` if `V` is in the prototype chain of the object, `false` otherwise.

#### Response Example
```json
true
```

### Method
`propertyIsEnumerable()`

### Description
Indicates whether the specified property is the object's own property and can be enumerated (that is, included in the `for...in` loop).

### Parameters
- `V` (string) - The name of the property to test.

### Request Example
```javascript
const obj = { a: 1 };
obj.propertyIsEnumerable('a');
Object.defineProperty(obj, 'b', { value: 2, enumerable: false });
obj.propertyIsEnumerable('b');
```

### Response
#### Success Response (200)
Returns `true` if the property is own and enumerable, `false` otherwise.

#### Response Example
```json
true
false
```

### Method
`toLocaleString()`

### Description
Returns a string representing the object. This method is provided for compatibility with other languages that use locale-specific representations of numbers, dates, etc.

### Parameters
None

### Request Example
```javascript
const date = new Date();
date.toLocaleString();
```

### Response
#### Success Response (200)
Returns a string representing the object in the current locale.

#### Response Example
```json
"7/10/2025, 10:30:00 AM"
```

### Method
`toString()`

### Description
Returns a string representing the specified Object. Deprecated.

### Parameters
None

### Request Example
```javascript
const obj = { a: 1 };
obj.toString();
```

### Response
#### Success Response (200)
Returns a string representation of the object.

#### Response Example
```json
"[object Object]"
```

### Method
`valueOf()`

### Description
Returns the primitive value of the specified object.

### Parameters
None

### Request Example
```javascript
const obj = { a: 1 };
obj.valueOf();
```

### Response
#### Success Response (200)
Returns the primitive value of the object.

#### Response Example
```json
{
  "a": 1
}
```

## Object/Function Instance Properties

### Description
Provides instance properties for Object and Function.

### Property
`__proto__`

### Description
Deprecated. Refers to the prototype of the object.

### Property
`constructor`

### Description
Specifies the function that creates an object instance.

```

--------------------------------

### Object/Function Constructor and Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findLast

Documentation for the Object and Function constructors, including their static and instance methods and properties.

```APIDOC
## Object/Function

### Static Methods

#### `Object.prototype.toString()`

Returns a string representing the object. Overrides the Object.prototype.toString() method.

#### `Function.prototype.apply(thisArg[, argsArray])`

Calls or invokes a function with a given `this` value and arguments provided as an array (or an array-like object).

#### `Function.prototype.bind(thisArg[, arg1[, arg2[, ...]]])`

Creates a new function that, when called, has its `this` keyword set to the provided value, with a given sequence of arguments preceding any provided when the new function is called.

#### `Function.prototype.call(thisArg[, arg1[, arg2[, ...]]])`

Calls or invokes a function with a given `this` value and arguments provided individually.

#### `Function.prototype.toString()`

Returns a string of the source code of the function.

#### `Symbol.hasInstance`

Determines if a constructor's `prototype` property appears as a prototype in the prototype chain of an object. Called via the `instanceof` operator.

### Static Properties

#### `displayName` (Non-standard)

Returns or sets the display name of an object. This property is non-standard.

#### `length`

Returns the number of arguments expected by the function.

#### `name`

Returns the name of the function.

#### `prototype`

Specifies the prototype for the object.

#### `arguments` (Non-standard, Deprecated)

Represents the arguments passed to a function. This property is non-standard and deprecated.

#### `caller` (Non-standard, Deprecated)

Represents the function that invoked the current function. This property is non-standard and deprecated.

### Instance Methods

#### `__defineGetter__(propertyName, getter)` (Deprecated)

Associates a function with the property that gets the value of that property. This method is deprecated.

#### `__defineSetter__(propertyName, setter)` (Deprecated)

Associates a function with the property that sets the value of that property. This method is deprecated.

#### `__lookupGetter__(propertyName)` (Deprecated)

Returns the getter function associated with the specified property. This method is deprecated.

#### `__lookupSetter__(propertyName)` (Deprecated)

Returns the setter function associated with the specified property. This method is deprecated.

#### `hasOwnProperty(prop)`

Returns a boolean indicating whether the object has the specified property as its own property.

#### `isPrototypeOf(V)`

Returns a boolean indicating whether the specified value is in the prototype chain of the object.

#### `propertyIsEnumerable(prop)`

Returns a boolean indicating whether the specified property is enumerable.

#### `toLocaleString()`

Returns a string representing the object. Overrides the Object.prototype.toLocaleString() method.

#### `toString()`

Returns a string representing the object. Overrides the Object.prototype.toString() method.

#### `valueOf()`

Returns the primitive value of an object.

### Instance Properties

#### `__proto__` (Deprecated)

Returns the prototype of the specified object. This property is deprecated.

#### `constructor`

Specifies the function that creates an object's prototype, and thus the function that defines a prototype's `__proto__` property.

```

--------------------------------

### Get baseName with extension tags

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale/baseName

This example demonstrates how baseName extracts core information even when the locale string includes extension tags like calendar and hour cycle.

```javascript
// Sets language to Japanese, region to Japan,
// calendar to Gregorian, hour cycle to 24 hours
const japan = new Intl.Locale("ja-JP-u-ca-gregory-hc-24");
console.log(japan.toString()); // "ja-JP-u-ca-gregory-hc-h24"
console.log(japan.baseName); // "ja-JP"
```

--------------------------------

### Correctly importing an exported module

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Not_a_function

Ensure that modules are imported using the correct syntax. This example demonstrates the correct way to import from a helper library.

```javascript
// helpers.js
export function greet(name) {
  return `Hello, ${name}!`;
}

// App.js
import { greet } from './helpers.js';

console.log(greet('World')); // Hello, World!
```

--------------------------------

### Displaying the constructor of an object

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/constructor

This example demonstrates how to access and display the constructor function of an object instance. It shows the output when logging the constructor property of an object created from a custom constructor function.

```javascript
function Tree(name) {
  this.name = name;
}

const theTree = new Tree('Living Room');
console.log('theTree.constructor is ' + theTree.constructor);
```

--------------------------------

### Get milliseconds using getUTCMilliseconds()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getUTCMilliseconds

This example assigns the milliseconds portion of the current time to the variable `milliseconds`. Use this method to retrieve the milliseconds component of a Date object in UTC.

```javascript
const date = new Date();
const milliseconds = date.getUTCMilliseconds();

console.log(milliseconds);
// Expected output: (a number between 0 and 999)
```

--------------------------------

### Initialization block syntax

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for

Demonstrates the use of variable declarations in the initialization block.

```javascript
let i = 0;
for (; i < 9; i++) {
  console.log(i);
}
```

--------------------------------

### Bitwise XOR calculation example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Atomics/xor

Demonstrates the bitwise XOR operation logic for the values 5 and 1.

```text
5  0101
1  0001
   ----
4  0100
```

--------------------------------

### Extract elements from index 1 up to (but not including) index 3

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice

This example demonstrates extracting a portion of an array using positive start and end indices. The element at the end index is not included.

```javascript
const fruits = ["Apple", "Banana", "Orange", "Lemon", "Mango", "Apple"] 

console.log(fruits.slice(1, 3)) 
// Expected output: 
// ['Orange', 'Lemon']
```

--------------------------------

### Object/Function Constructor and Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/toSpliced

Documentation for the Object and Function constructors, including their static and instance methods.

```APIDOC
## Object/Function

### Static Methods

#### `Function.prototype.apply(thisArg[, argsArray])`

- Description: Calls a function with a given `this` value and arguments provided as an array (or an array-like object).

#### `Function.prototype.bind(thisArg[, arg1[, arg2[, ...]]])`

- Description: Creates a new function that, when called, has its `this` keyword set to the provided value, with a given sequence of arguments preceding any provided when the new function is called.

#### `Function.prototype.call(thisArg[, arg1[, arg2[, ...]]])`

- Description: Calls a function with a given `this` value and arguments provided individually.

#### `Object.prototype.toString()`

- Description: Returns a string representing the object. This method returns "[object Type]", where Type is the internal [[Class]] property of the object. For Object, this is "Object".

#### `Function[Symbol.hasInstance]()`

- Description: Determines if the `instanceof` operator works correctly with a function.

### Static Properties

#### `displayName` (Non-standard)

- Description: A non-standard property used for debugging purposes.

#### `length`

- Description: The value of the `length` property is the number of arguments expected by the function.

#### `name`

- Description: The name of the function.

#### `prototype`

- Description: The `prototype` property is used for the built-in inheritance implementation.

#### `arguments` (Non-standard, Deprecated)

- Description: A deprecated, non-standard property that refers to the arguments object of the enclosing function.

#### `caller` (Non-standard, Deprecated)

- Description: A deprecated, non-standard property that refers to the function that invoked the current function.

### Instance Methods

#### `__defineGetter__(propertyName, getter)` (Deprecated)

- Description: Deprecated. Associates a function with the property that gets the value of that property.

#### `__defineSetter__(propertyName, setter)` (Deprecated)

- Description: Deprecated. Associates a function with the property that sets the value of that property.

#### `__lookupGetter__(propertyName)` (Deprecated)

- Description: Deprecated. Returns the getter function associated with the given property.

#### `__lookupSetter__(propertyName)` (Deprecated)

- Description: Deprecated. Returns the setter function associated with the given property.

#### `hasOwnProperty(prop)`

- Description: Returns a Boolean indicating whether the object has the specified property as its own property (as opposed to inheriting it).

#### `isPrototypeOf(V)`

- Description: Returns a Boolean value that indicates whether or not an object appears anywhere in the prototype chain of another object.

#### `propertyIsEnumerable(prop)`

- Description: Returns a Boolean indicating whether the specified property is the object's own property and will be included in a `for...in` enumeration.

#### `toLocaleString()`

- Description: Returns a string representing the object. This method is intended to be overridden by the Object.prototype.toLocaleString method.

#### `toString()`

- Description: Returns a string representing the object. This method overrides the Object.prototype.toString method.

#### `valueOf()`

- Description: Returns the primitive value of the specified object.

### Instance Properties

#### `__proto__` (Deprecated)

- Description: A deprecated property that refers to the prototype of the object.

#### `constructor`

- Description: A reference to the constructor function that created the object instance.

```

--------------------------------

### Get a random integer between two values, inclusive

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random

This function returns a random integer that is inclusive at both the minimum and maximum values. It builds upon the previous example by adjusting the maximum bound.

```javascript
function getRandomIntInclusive(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1) + min); //The maximum is inclusive and the minimum is inclusive
}

console.log(getRandomIntInclusive(1, 5)); // Output: a random integer between 1 and 5
```

--------------------------------

### Mutable reduce() example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce

This example shows a more performant approach to reduce() by mutating the accumulator object directly. However, if mutation is acceptable, a for loop might be clearer.

```javascript
const names = ["Alice", "Bob", "Charlie"];
const allNames = names.reduce((acc, name) => {
  // Mutate the accumulator object
  acc[name] = name;
  return acc;
}, {});
```

--------------------------------

### Create a List formatter in English

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/ListFormat/ListFormat

This example demonstrates creating a List formatter for the English language. It initializes the formatter with the 'en' locale.

```javascript
const formatter = new Intl.ListFormat('en');
formatter.format(['Apple', 'Banana', 'Orange']); // "Apple, Banana, and Orange"
```

--------------------------------

### Demonstrate Temporal Dead Zone with let and var

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let

Compares the behavior of let and var when accessed before their declaration.

```javascript
{ // We are in the TDZ for 'a'
  try {
    console.log(a); // ReferenceError
  } catch (e) {
    console.error(e);
  }
  let a = 1;
}

{ // 'b' is not in the TDZ
  console.log(b); // undefined
  var b = 1;
}
```

--------------------------------

### Retrieve values using get()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/get

Demonstrates retrieving existing and non-existent keys from a Map.

```javascript
const myMap = new Map();
myMap.set("bar", "foo");

console.log(myMap.get("bar")); // Returns "foo"
console.log(myMap.get("baz")); // Returns undefined
```

--------------------------------

### Sequential case statement example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/switch

This example demonstrates a sequential case statement where multiple values perform the same action due to fall-through.

```javascript
let x = "Beans";

switch (x) {
  case "Beans":
  case "Oatmeal":
  case "Carrots":
    console.log("Today is " + x + ", which is my favorite!");
    break;
  case "Apple":
    console.log("Today is my favorite fruit, Apple.");
    break;
}
```

--------------------------------

### Example of using named exports

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/export

This example demonstrates how to export named values from one module (`my-module.js`) and import them into another module, which must be loaded with `type="module"` in HTML.

```javascript
// my-module.js
export const Пи = 3.14;

export function square(x) {
  return x * x;
}
```

```html
<!DOCTYPE html>
<html>
<head>
  <title>JS Modules Example</title>
</head>
<body>
  <script type="module">
    // main.js - imported in HTML
    import { Пи, square } from './my-module.js';

    console.log(Пи);
    console.log(square(5));
  </script>
</body>
</html>
```

--------------------------------

### Alternative example using error event

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/lineNumber

This example shows an alternative way to potentially access line number information via an error event. This is a non-standard feature and lacks widespread support.

```javascript
window.addEventListener('error', function(event) {
  console.log(event.lineno); // Non-standard
});
```

--------------------------------

### Object/Function Instance Methods and Properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findLastIndex

Reference for the instance methods and properties of Object/Function, including methods like hasOwnProperty() and properties like constructor.

```APIDOC
## Object/Function Instance Methods and Properties

### Description
Details the instance methods and properties available on Object and Function instances, used for introspection and object manipulation.

### Instance Methods
- `__defineGetter__(propertyName, getter)` (Deprecated)
- `__defineSetter__(propertyName, setter)` (Deprecated)
- `__lookupGetter__(propertyName)` (Deprecated)
- `__lookupSetter__(propertyName)` (Deprecated)
- `hasOwnProperty(prop)`: Returns a boolean indicating whether the object has the specified property as its own property.
- `isPrototypeOf(V)`: Returns a boolean indicating whether the specified object is in the prototype chain of this object.
- `propertyIsEnumerable(prop)`: Returns a boolean indicating whether the specified property is the object's own property and can be enumerated (i.e., included in for...in loop).
- `toLocaleString()`: Returns a string representing the object. Uses locale-specific formatting.
- `toString()`: Returns a string representing the object. Overrides the Object.prototype.toString method.
- `valueOf()`: Returns the primitive value of an object.

### Instance Properties
- `__proto__` (Deprecated)
- `constructor`: Specifies the function that creates an object instance.

### Request Example
```json
{
  "example": "({ a: 1 }).hasOwnProperty('a')"
}
```

### Response Example
```json
{
  "example": "true"
}
```
```

--------------------------------

### Get a random integer between two values

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random

This example returns a random integer between the specified values. The value is no lower than min (inclusive), and less than max (exclusive). Avoid using Math.round() for this purpose as it can lead to a non-uniform distribution.

```javascript
function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min) + min); //The maximum is exclusive and the minimum is inclusive
}

console.log(getRandomInt(1, 5)); // Output: a random integer between 1 and 4
```

--------------------------------

### Throwing and Handling Errors

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error

Examples demonstrating how to throw and catch errors in JavaScript.

```APIDOC
### Throwing a generic error

Usually you create an `Error` object with the intention of raising it using the `throw` keyword. You can handle the error using the `try...catch` construct:

```javascript
try {
  throw new Error('Something went wrong');
} catch (error) {
  console.error(error.message);
}
```

### Handling a specific error type

You can choose to handle only specific error types by testing the error type with the `instanceof` keyword:

```javascript
try {
  // Code that might throw a RangeError
  throw new RangeError('Value out of range');
} catch (error) {
  if (error instanceof RangeError) {
    console.error('Caught a RangeError:', error.message);
  } else {
    console.error('Caught an unexpected error:', error);
  }
}
```
```

--------------------------------

### String.prototype.trimStart()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/trimStart

Removes whitespace from the beginning of a string and returns a new string.

```APIDOC
## String.prototype.trimStart()

### Description
The trimStart() method of String values removes whitespace from the beginning of this string and returns a new string, without modifying the original string. trimLeft() is an alias of this method.

### Return value
A new string representing the original string stripped of whitespace from its beginning (left side). If the beginning of the string has no whitespace, a new string is still returned (a copy of the original).
```

--------------------------------

### Stream encoding example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Uint8Array/toBase64

This example demonstrates a userland implementation of streaming base64 encoding, mimicking the TextEncoder API with a 'stream' option. It's adapted from the original proposal.

```javascript
class StreamEncoder {
  constructor(options = {}) {
    this.options = options;
    this.buffer = new Uint8Array(0);
  }

  encode(chunk) {
    const combined = new Uint8Array(this.buffer.length + chunk.length);
    combined.set(this.buffer);
    combined.set(chunk, this.buffer.length);
    this.buffer = combined;

    // In a real stream, you'd process chunks here and potentially flush
    // For simplicity, we'll just accumulate and encode at the end.
  }

  flush() {
    const result = this.buffer.toBase64(this.options);
    this.buffer = new Uint8Array(0); // Reset buffer
    return result;
  }
}

const encoder = new StreamEncoder({
  alphabet: "base64url",
  omitPadding: true
});

const chunk1 = new Uint8Array([72, 101, 108]);
const chunk2 = new Uint8Array([108, 111]);

encoder.encode(chunk1);
encoder.encode(chunk2);

const finalBase64 = encoder.flush();
console.log(finalBase64); // "SGVsbG8"

```

--------------------------------

### Object Constructor and Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array

Reference for the Object constructor and its static and instance methods.

```APIDOC
## Object

### Description
The `Object` constructor has properties and methods for other global objects, and for object manipulation.

### Static Methods
#### `Object.apply(thisArg, argsArray)`
Calls or applies the provided function with a given `this` value and arguments provided as an array (or an array-like object).

#### `Object.bind(thisArg[, arg1[, arg2[, ...]]])`
Creates a new function that, when called, has its `this` keyword set to the provided value, with a given sequence of arguments preceding any provided when the new function is called.

#### `Object.call(thisArg[, arg1[, arg2[, ...]]])`
Calls or applies the provided function with a given `this` value and arguments provided individually.

#### `Object.toString()`
Returns a string representing the object.

#### `Object[Symbol.hasInstance]()`
Determines if the `this` object is an instance of a class.

### Static Properties
#### `displayName` (Non-standard)
Returns the name of the function.

#### `length`
The value of the `length` property is the number of arguments expected by the function.

#### `name`
The name of the function.

#### `prototype`
Specifies the prototype for the object.

#### `arguments` (Non-standard, Deprecated)
Represents arguments passed to a function.

#### `caller` (Non-standard, Deprecated)
Represents the function that invoked the currently executing function.

### Instance Methods
#### `__defineGetter__(propertyName, getter)` (Deprecated)
Associates a function with the property identified by the given string name. When that property is accessed, the function is called and its return value is returned.

#### `__defineSetter__(propertyName, setter)` (Deprecated)
Associates a function with the property identified by the given string name. When that property is assigned to, the function passed as the `setter` parameter is called, with the value assigned as its single parameter.

#### `__lookupGetter__(propertyName)` (Deprecated)
Returns the getter function associated with the specified property of the object.

#### `__lookupSetter__(propertyName)` (Deprecated)
Returns the setter function associated with the specified property of the object.

#### `hasOwnProperty(prop)`
Returns a Boolean indicating whether the object has the specified property as its own property (as opposed to inheriting it).

#### `isPrototypeOf(V)`
Returns a Boolean value that indicates whether or not an object appears anywhere in the prototype chain of another object.

#### `propertyIsEnumerable(prop)`
Returns a Boolean indicating whether the specified property is her own property and will be included in a `for...in` enumeration.

#### `toLocaleString()`
Returns a string representing the object. This method is intended to be overridden by objects that need a locale-specific representation.

#### `toString()`
Returns a string representing the object. This method is intended to be overridden by objects that need a custom string representation.

#### `valueOf()`
Returns the primitive value of the specified object.

### Instance Properties
#### `__proto__` (Deprecated)
Returns the prototype of the specified object.

#### `constructor`
Specifies the function that creates an object's prototype.

```

--------------------------------

### Create PluralRules object and use select()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/PluralRules/select

Create an Intl.PluralRules object with specified locales and options, then use the select() method to get the pluralization category for a number. This example demonstrates cardinal number formatting for Egyptian Arabic.

```javascript
const rules = new Intl.PluralRules("ar-EG", {
  type: "cardinal",
});

rules.select(1); // "one"
rules.select(2); // "two"
rules.select(3); // "few"
rules.select(11); // "many"
rules.select(0); // "zero"
rules.select(100); // "other"
```

--------------------------------

### Asynchronicity of then()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/then

Provides an example to demonstrate the asynchronous nature of the `then` method.

```APIDOC
## Asynchronicity of then()

### Description
The following is an example to demonstrate the asynchronicity of the `then` method.

### Method
`Promise.prototype.then(onFulfilled, onRejected)`

### Endpoint
N/A (Instance method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
// Example demonstrating asynchronicity
console.log('Start');

Promise.resolve(1).then(value => {
  console.log('Inside then:', value);
  return value;
});

console.log('End');

// Expected output:
// Start
// End
// Inside then: 1
```

### Response
#### Success Response (200)
- **Promise** (Promise) - A new Promise that resolves or rejects based on the outcome of the `onFulfilled` or `onRejected` handlers.

#### Response Example
```json
{
  "message": "Promise resolved or rejected based on handler execution"
}
```
```

--------------------------------

### Create and use a GeneratorFunction

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/GeneratorFunction/GeneratorFunction

This example demonstrates creating a generator function using the GeneratorFunction constructor and then iterating over its yielded values. Note that this example omits trusted types for brevity; for secure code, use TrustedScript objects.

```javascript
const GeneratorFunction = Object.getPrototypeOf(function*(){}).constructor;
const myGenFunc = new GeneratorFunction('a', 'b', 'yield a + b;');

const generator = myGenFunc(1, 2);

let result = generator.next();
while (!result.done) {
  console.log(result.value);
  result = generator.next();
}
// Output:
// 3
```

--------------------------------

### Find element less than neighbors using array argument (advanced)

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/find

This advanced example uses `filter` to get positive values and then `find` to locate the first element smaller than its neighbors, showcasing the utility of the `array` argument.

```javascript
const numbers = [-5, 10, -3, 8, 5, -1, 6];
const positiveNumbers = numbers.filter((n) => n > 0);

const firstLessThanNeighbors = positiveNumbers.find((element, index, arr) => {
  if (index === 0) {
    return element < arr[index + 1];
  }
  if (index === arr.length - 1) {
    return element < arr[index - 1];
  }
  return element < arr[index - 1] && element < arr[index + 1];
});

console.log(firstLessThanNeighbors); // 5
```

--------------------------------

### Install stack trace on a custom error object

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/captureStackTrace

This example demonstrates the primary use case of Error.captureStackTrace() for custom error objects. It ensures that the constructor call itself is excluded from the stack trace, preventing the leak of implementation details.

```javascript
function MyError(message) {
  this.name = 'MyError';
  this.message = message;

  Error.captureStackTrace(this, MyError);
}

MyError.prototype = Object.create(Error.prototype);
MyError.prototype.constructor = MyError;

try {
  throw new MyError('Something went wrong');
} catch (e) {
  console.error(e.stack);
}
```

--------------------------------

### Creating Boolean Objects with Initial Values

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean/Boolean

Illustrates examples of creating Boolean objects with initial values of false and true.

```APIDOC
## Creating Boolean Objects

### Description
Examples demonstrating the creation of `Boolean` objects with specific initial values.

### Method
Constructor Call

### Endpoint
N/A (Built-in JavaScript object)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
// Creating Boolean objects with an initial value of false
const falseBooleanObject = new Boolean(false);
console.log(falseBooleanObject); // Boolean { false }

// Creating Boolean objects with an initial value of true
const trueBooleanObject = new Boolean(true);
console.log(trueBooleanObject);  // Boolean { true }

// Example showing Boolean object coercion
const wrapper = new Boolean(false);
console.log(wrapper); // Boolean { false }
console.log(Boolean(wrapper)); // true (Note: wrapper object itself is truthy)
console.log(wrapper.valueOf()); // false (Use valueOf() to get the primitive value)
```

### Response
#### Success Response
- **Boolean Object**: A `Boolean` object instance.

#### Response Example
```javascript
// Output from the examples above:
// Boolean { false }
// Boolean { true }
// Boolean { false }
// true
// false
```
```

--------------------------------

### No-op forwarding proxy example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy

This example demonstrates a basic no-operation forwarding proxy using a native JavaScript object. Note that this approach does not work for native objects with internal slots.

```javascript
const target = {};
const handler = {
  get(target, property, receiver) {
    console.log(`Getting property: ${property}`);
    return Reflect.get(...arguments);
  },
  set(target, property, value, receiver) {
    console.log(`Setting property ${property} to ${value}`);
    return Reflect.set(...arguments);
  }
};
const proxy = new Proxy(target, handler);

proxy.a = 1;
console.log(proxy.a);
// Output:
// Setting property a to 1
// Getting property: a
// 1
```

--------------------------------

### String constructor and String function usage

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/String

Demonstrates the difference between calling String() as a function versus using the new keyword.

```javascript
const a = String("Hello World");
const b = new String("Hello World");

console.log(typeof a); // "string"
console.log(typeof b); // "object"
```

--------------------------------

### Get the base 10 logarithm of e

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/LOG10E

This function demonstrates how to retrieve the value of Math.LOG10E, which represents the base 10 logarithm of e. No specific setup or imports are required as it's a static property of the built-in Math object.

```javascript
function getLog10e() {
  return Math.LOG10E;
}

console.log(getLog10e()); // Output: 0.4342944819032518
```

--------------------------------

### Creating a SuppressedError Example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SuppressedError

Example demonstrating how to manually create a SuppressedError object. This is typically done when implementing custom resource management logic.

```APIDOC
### Creating a SuppressedError

```javascript
// Example of creating a SuppressedError manually

try {
  // Simulate an error during resource handling
  throw new Error('Original error during operation');
} catch (originalError) {
  try {
    // Simulate another error during cleanup
    throw new Error('Error during resource cleanup');
  } catch (cleanupError) {
    // Create a SuppressedError to wrap the cleanup error and the original error
    const suppressedError = new SuppressedError(cleanupError, originalError);
    console.error(suppressedError);
    // Output might look like:
    // SuppressedError: Error: Error during resource cleanup
    //   suppressed: Error: Original error during operation
  }
}
```
```

--------------------------------

### Finding all occurrences of an element

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/lastIndexOf

This example shows how to find all indices of a specific element in an array by repeatedly using `lastIndexOf()` and adjusting the starting index for the next search. It requires special handling for the case where the element is found at index 0.

```javascript
const indices = [];
const array = [1, 2, 3, 2, 1, 2];
let element = 2;
let idx = array.lastIndexOf(element);

while (idx !== -1) {
  indices.push(idx);
  idx = array.lastIndexOf(element, idx - 1);
}

console.log(indices); // [ 5, 3, 1 ]
```

--------------------------------

### Log Set Contents with forEach()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/forEach

This example demonstrates how to use the forEach() method to iterate over a Set and log each element. The callback function receives the value, key (which is the same as value for Sets), and the Set itself.

```javascript
const mySet = new Set([1, 5, 'some text']);

mySet.forEach((value, key, set) => {
  console.log(`Value is ${value}, Key is ${key}`);
  console.log(set);
});
// Expected output:
// Value is 1, Key is 1
// Set(3) { 1, 5, 'some text' }
// Value is 5, Key is 5
// Set(3) { 1, 5, 'some text' }
// Value is some text, Key is some text
// Set(3) { 1, 5, 'some text' }
```

--------------------------------

### Regex Flags: Multiline Search

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Regular_expressions

The 'm' flag allows the start (^) and end ($) anchors to match the start and end of each line, in addition to the start and end of the entire string.

```javascript
const regex = /^a/m;
```

--------------------------------

### Using formatToParts()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/ListFormat/formatToParts

Demonstrates how to use formatToParts to decompose a formatted list into its constituent parts.

```javascript
const list = ["Apple", "Orange", "Banana"];
const listFormat = new Intl.ListFormat("en", { style: "long", type: "conjunction" });

console.log(listFormat.formatToParts(list));
// [ 
//   { type: "element", value: "Apple" },
//   { type: "literal", value: ", " },
//   { type: "element", value: "Orange" },
//   { type: "literal", value: ", and " },
//   { type: "element", value: "Banana" }
// ]
```

--------------------------------

### Set-like Browser Objects Overview

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set

Explanation of Set-like objects in browsers, their characteristics, and examples.

```APIDOC
## Set-like Browser Objects

### Description
Browser **`Set`-like objects** (or "setlike objects") are Web API interfaces that behave in many ways like a `Set`. They allow elements to be iterated in the same order they were added and share similar properties and methods with `Set`. However, they enforce a specific predefined type for each entry, as defined in the specification IDL.

`Set`-like objects can be either read-only or read-writable.

- **Read-only `Set`-like objects** have a `size` property and methods: `entries()`, `forEach()`, `has()`, `keys()`, `values()`, and `Symbol.iterator()`.
- **Writeable `Set`-like objects** additionally include `clear()`, `delete()`, and `add()` methods.

### Examples of Set-like Browser Objects

**Read-only:**
- `GPUSupportedFeatures`
- `XRAnchorSet`

**Writable:**
- `CustomStateSet`
- `FontFaceSet`
- `Highlight`
- `ViewTransitionTypeSet`
```

--------------------------------

### Match multiline format at string start

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Modifier

Uses a modifier to restrict the 'm' flag, ensuring the first caret matches the start of the string while others match line starts.

```javascript
/(?-m:^).*(?m:^.*)*/
```

--------------------------------

### Basic example: accessing non-existent property

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Optional_chaining

This example demonstrates optional chaining when accessing a property ('name') on a map entry ('CSS') that does not exist. The result correctly evaluates to undefined.

```javascript
const CSS = new Map();
console.log(CSS?.get('name')); // undefined
```

--------------------------------

### Examples of charAt() usage

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/charAt

Demonstrates various use cases for the charAt() method, including default index, out-of-range index, and handling of Unicode characters.

```APIDOC
## Examples

### Using charAt()
```javascript
const anyString = "Brave new world";
console.log(`The character at index 0   is '${anyString.charAt()}'`); // No index was provided, used 0 as default
console.log(`The character at index 0   is '${anyString.charAt(0)}'`);
console.log(`The character at index 1   is '${anyString.charAt(1)}'`);
console.log(`The character at index 999 is '${anyString.charAt(999)}'`);
```

### Handling Unicode Characters
```javascript
const str = "\uD842\uDFB7"; // Represents a character outside the Basic Multilingual Plane
console.log(str.charAt(0)); // Returns a lone surrogate: "\ud842"
console.log(str.charAt(1)); // Returns a lone surrogate: "\udfb7"

// To get the full Unicode code point:
console.log(String.fromCodePoint(str.codePointAt(0))); // "\u{1f4e7}"
console.log([...str][0]); // "\u{1f4e7}"
```
```

--------------------------------

### BigInt Addition Example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Addition

Illustrates addition with BigInt operands. Mixing BigInt and number operands requires explicit conversion.

```javascript
const bigIntValue1 = 9007199254740991n;
const bigIntValue2 = 1n;
console.log(bigIntValue1 + bigIntValue2); // Output: 9007199254740992n
```

```javascript
const bigIntValue = 10n;
const numberValue = 5;
// console.log(bigIntValue + numberValue); // Throws TypeError
console.log(bigIntValue + BigInt(numberValue)); // Output: 15n
console.log(Number(bigIntValue) + numberValue); // Output: 15
```

--------------------------------

### Array Constructor and Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findLast

Documentation for the Array constructor and its static and instance methods.

```APIDOC
## Array

### Constructor

#### `Array()`

Creates a new Array object.

### Static Methods

#### `Array.from(arrayLike[, mapFn[, thisArg]])`

Creates a new, shallow-copied Array instance from an array-like or iterable object.

#### `Array.fromAsync(arrayLike[, mapFn[, thisArg]])`

Creates a new Array instance from an async iterable or array-like object.

#### `Array.isArray(obj)`

Determines whether the passed value is an Array.

#### `Array.of(element0[, element1[, ...[, elementN]]])`

Creates a new Array instance from a variable number of arguments, regardless of number or type of the arguments.

### Static Properties

#### `Array[Symbol.species]`

Returns the constructor function that is used to create derived objects from an Array.

### Instance Methods

#### `at(index)`

Returns an indexed element of the array. Accepts negative integers, which count back from the end of the array.

#### `concat(value1[, value2[, ...[, valueN]]])`

Merges two or more arrays. This method does not change the existing arrays, but instead returns a new array.

#### `copyWithin(target[, start[, end]])`

Copies a sequence of array elements within the array to a position.

#### `entries()`

Returns a new Array Iterator object that contains the key/value pairs for each index in the array.

#### `every(callbackFn[, thisArg])`

Tests whether all elements in the array pass the test implemented by the provided function. It returns a Boolean value.

#### `fill(value[, start[, end]])`

Fills elements of an array with a static value from a start index to an end index.

#### `filter(callbackFn[, thisArg])`

Creates a new array populated with elements that pass the test implemented by the provided function.

#### `find(callbackFn[, thisArg])`

Returns the value of the first element in the provided array that satisfies the provided testing function. If no values satisfy the testing function, undefined is returned.

#### `findIndex(callbackFn[, thisArg])`

Returns the index of the first element in the array that satisfies the provided testing function. Otherwise, it returns -1, indicating that no element passed the test.

#### `findLast(callbackFn[, thisArg])`

Returns the value of the last element in the array that satisfies the provided testing function. Otherwise, undefined is returned.

#### `findLastIndex(callbackFn[, thisArg])`

Returns the index of the last element in the array that satisfies the provided testing function. Otherwise, -1 is returned.

#### `flat([depth])`

Creates a new array with all sub-array elements concatenated into it recursively up to the specified depth.

#### `flatMap(callbackFn[, thisArg])`

Combines a map and flat operation with a specified depth, and flattens the result into a new array.

#### `forEach(callbackFn[, thisArg])`

Executes a provided function once for each array element.

#### `includes(valueToFind[, index])`

Determines whether an array includes a certain value among its entries, returning true or false as appropriate.

#### `indexOf(searchElement[, fromIndex])`

Returns the first index at which a given element can be found in the array, or -1 if it is not present.

#### `join([separator])`

Joins all elements of an array into a string.

#### `keys()`

Returns a new Array Iterator object that contains the keys for each index in the array.

#### `lastIndexOf(searchElement[, fromIndex])`

Returns the last index at which a given element can be found in the array, or -1 if it is not present.

#### `map(callbackFn[, thisArg])`

Creates a new array populated with the results of calling a provided function on every element in the calling array.

#### `pop()`

Removes the last element from an array and returns that element. This method changes the length of the array.

#### `push(element1[, ...[, elementN]])`

Adds one or more elements to the end of an array and returns the new length of the array.

#### `reduce(callbackFn[, initialValue])`

Executes a user-supplied "reducer" callback function on each element of the array, in order, passing in the return value from the calculation on the preceding element. The final result of running the reducer across all elements of the array is a single value.

#### `reduceRight(callbackFn[, initialValue])`

Executes a user-supplied "reducer" callback function on each element of the array, in ascending order, using the previous value returned by the callback function.

#### `reverse()`

Reverses a array in place. The first array element becomes the last, and the last array element becomes the first.

#### `shift()`

Removes the first element from an array and returns that element. This method changes the length of the array.

#### `slice([start[, end]])`

Returns a shallow copy of a portion of an array into a new array object selected from `start` to `end` ( `end` not included). The original array will not be modified.

#### `some(callbackFn[, thisArg])`

Tests whether at least one element in the array passes the test implemented by the provided function.

#### `sort([compareFunction])`

Sorts the elements of an array in place and returns the sorted array.

#### `splice(start[, deleteCount[, item1[, item2[, ...]]]])`

Changes the contents of an array by removing or replacing existing elements and/or adding new elements in place.

#### `toLocaleString()`

Returns a string representing the array and its elements. Overrides the Object.prototype.toLocaleString() method.

#### `toReversed()`

Returns a new array with the elements in reversed order.

#### `toSorted([compareFunction])`

Returns a new array with the elements sorted.

#### `toSpliced(start[, deleteCount[, item1[, item2[, ...]]]])`

Returns a new array with elements removed or replaced and/or new elements added.

#### `toString()`

Returns a string representing the array. Overrides the Object.prototype.toString() method.

#### `unshift(element1[, ...[, elementN]])`

Adds one or more elements to the beginning of an array and returns the new length of the array.

#### `values()`

Returns a new Array Iterator object that contains the values for each index in the array.

#### `with(index, value)`

Returns a new array with the element at the given index replaced with the given value.

#### `[Symbol.iterator]()`

Returns an iterator for the array.

### Instance Properties

#### `length`

The value of the `length` property is always one greater than the highest index in the array.

#### `[Symbol.unscopables]`

Specifies the default exclusion list of object properties that are excluded from `with` statement bindings.

```

--------------------------------

### Using Atomics.add()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Atomics/add

This example demonstrates the basic usage of Atomics.add(). Note that SharedArrayBuffer requires specific security configurations and cannot be run directly in all environments.

```javascript
const buffer = new SharedArrayBuffer(1024);
const typedArray = new Int32Array(buffer);

Atomics.store(typedArray, 0, 5); // Store 5 at index 0

const oldValue = Atomics.add(typedArray, 0, 10); // Add 10 to index 0

console.log(oldValue); // Output: 5
console.log(Atomics.load(typedArray, 0)); // Output: 15
```

--------------------------------

### Promise Constructor and Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/resolve

Documentation for the Promise object, including its constructor, static methods, and instance methods.

```APIDOC
## Promise

### Constructor

#### `Promise()`

- **Description**: Creates a new Promise object.
- **Method**: Constructor
- **Endpoint**: N/A

### Static Methods

#### `Promise.all(iterable)`

- **Description**: Returns a single Promise that fulfills when all of the promises in the iterable argument have fulfilled, or rejects with the reason of any of the promises in the iterable.
- **Method**: GET
- **Endpoint**: N/A

#### `Promise.allSettled(iterable)`

- **Description**: Returns a Promise that always fulfills after all of the promises in the iterable argument have either fulfilled or rejected. It resolves with an array of objects, each describing the outcome of a promise.
- **Method**: GET
- **Endpoint**: N/A

#### `Promise.any(iterable)`

- **Description**: Returns a Promise that fulfills as soon as any of the promises in the iterable fulfills, with the value of that fulfilled promise. If no promises in the iterable fulfill (if all of the given promises are rejected), then the returned promise is rejected with an AggregateError containing the rejection reasons.
- **Method**: GET
- **Endpoint**: N/A

#### `Promise.race(iterable)`

- **Description**: Returns a Promise that fulfills or rejects as soon as one of the promises in the iterable fulfills or rejects, with the value or reason from that promise.
- **Method**: GET
- **Endpoint**: N/A

#### `Promise.reject(reason)`

- **Description**: Returns a Promise object that is rejected with the given reason. This allows you to create a promise that is already in the 'rejected' state.
- **Method**: GET
- **Endpoint**: N/A

#### `Promise.resolve(value)`

- **Description**: Returns a new Promise object that is resolved with the given value. If the value is a promise, this function returns that promise. If the value is a thenable, this function returns a promise that follows the thenable's state.
- **Method**: GET
- **Endpoint**: N/A

#### `Promise.try(fn)`

- **Description**: Executes a function and returns a Promise that resolves with the return value of the function or rejects if the function throws an error.
- **Method**: GET
- **Endpoint**: N/A

#### `Promise.withResolvers()`

- **Description**: Returns an object containing a new Promise and functions to resolve or reject it.
- **Method**: GET
- **Endpoint**: N/A

### Instance Methods

#### `promise.catch(onRejected)`

- **Description**: Appends a rejection handler callback to the promise. It is equivalent to `promise.then(undefined, onRejected)`.
- **Method**: GET
- **Endpoint**: N/A

#### `promise.finally(onFinally)`

- **Description**: Attaches a callback that is invoked when the Promise is settled (either fulfilled or rejected). It is equivalent to `promise.then(onFinally, onFinally)`.
- **Method**: GET
- **Endpoint**: N/A

#### `promise.then(onFulfilled, onRejected)`

- **Description**: Attaches callbacks for the resolution and/or rejection of the Promise. Returns a new Promise that resolves or rejects with the outcome of the called callback.
- **Method**: GET
- **Endpoint**: N/A

### Static Properties

#### `Promise[Symbol.species]`

- **Description**: Returns the constructor for which a Promise is associated. This is used when deconstructing a Promise chain.
- **Method**: GET
- **Endpoint**: N/A
```

--------------------------------

### Basic switch statement example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/switch

Demonstrates a basic switch statement. Execution proceeds to the statement following the matching case and continues until a 'break' statement is encountered. Omitting 'break' leads to fall-through.

```javascript
let expr = 'Bananas';

switch (expr) {
  case 'Oranges':
    console.log('Sorry, we are out of Oranges.');
    break;
  case 'Bananas':
    console.log('Welcome to our Banana store!!!');
    break;
  case 'Cherries':
    console.log('Sorry, we are out of Cherries.');
    break;
  default:
    console.log('Sorry, we are out of fruit right now.');
    break;
}
```

--------------------------------

### Example: Using a WeakRef object

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakRef

This example demonstrates how to use a `WeakRef` object to maintain a weak reference to a DOM element and stop a counter when the element is no longer available.

```APIDOC
## Example: Using a WeakRef object

### Description
This example starts a counter shown in a DOM element, stopping when the element doesn't exist anymore.

### Method
N/A (Illustrative Example)

### Endpoint
N/A (Illustrative Example)

### Parameters
N/A

### Request Example
```javascript
class Counter {
  constructor(element) {
    // Remember a weak reference to the DOM element
    this.ref = new WeakRef(element);
    this.start();
  }

  start() {
    if (this.timer) {
      return;
    }

    this.count = 0;

    const tick = () => {
      // Get the element from the weak reference, if it still exists
      const element = this.ref.deref();
      if (element) {
        element.textContent = ++this.count;
      } else {
        // The element doesn't exist anymore
        console.log("The element is gone.");
        this.stop();
        this.ref = null;
      }
    };

    tick();
    this.timer = setInterval(tick, 1000);
  }

  stop() {
    if (this.timer) {
      clearInterval(this.timer);
      this.timer = 0;
    }
  }
}

const counter = new Counter(document.getElementById("counter"));
setTimeout(() => {
  document.getElementById("counter").remove();
}, 5000);
```

### Response
#### Success Response (N/A)
N/A

#### Response Example
N/A
```

--------------------------------

### Example: Using Named Capturing Groups

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Named_capturing_group

Demonstrates how to use named capturing groups to parse a timestamp and author name from a Git log entry.

```APIDOC
## Examples
### Using named capturing groups
The following example parses a timestamp and an author name from a Git log entry (output with `git log --format=%ct,%an -- filename`):
```

--------------------------------

### Example of Correct Regular Expression Flags

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Bad_regexp_flag

This example uses only valid flags for a regular expression.

```javascript
/foobar/gi
```

--------------------------------

### Using static members in classes

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes/static

Demonstrates defining static members, subclassing, and access patterns.

```javascript
class Point {
  constructor(x, y) {
    this.x = x;
    this.y = y;
  }

  static displayName = "Point";
  static distance(a, b) {
    const dx = a.x - b.x;
    const dy = a.y - b.y;

    return Math.hypot(dx, dy);
  }
}

const p1 = new Point(5, 5);
const p2 = new Point(10, 10);

console.log(p1.displayName); // undefined
console.log(p1.distance); // undefined
console.log(Point.displayName); // "Point"
console.log(Point.distance(p1, p2)); // 7.0710678118654755
```

--------------------------------

### Remove 2 elements starting from index 2

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice

Removes a range of elements starting from a specific index.

```javascript
const myFish = ["parrot", "anemone", "blue", "trumpet", "sturgeon"];
const removed = myFish.splice(2, 2);

// myFish is ["parrot", "anemone", "sturgeon"]
// removed is ["blue", "trumpet"]
```

--------------------------------

### Promise Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/all

Documentation for the instance methods of the Promise object.

```APIDOC
## Promise

### Instance Methods

#### `promise.catch(onRejected)`

- **Description**: Appends a rejection handler callback to the promise. It is equivalent to calling `promise.then(undefined, onRejected)`.
- **Method**: GET
- **Endpoint**: N/A

#### `promise.finally(onFinally)`

- **Description**: Attaches a callback for only the "settled" cases of the promise. It is called when the promise is either fulfilled or rejected.
- **Method**: GET
- **Endpoint**: N/A

#### `promise.then(onFulfilled, onRejected)`

- **Description**: Returns a Promise and takes up to two arguments: the callback functions for the resolved and/or rejected cases of the Promise.
- **Method**: GET
- **Endpoint**: N/A
```

--------------------------------

### Using trimStart()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/trimStart

Removes whitespace from the beginning of a string while preserving trailing whitespace.

```javascript
const str = "   foo  ";
console.log(str.trimStart()); // "foo  "
```

--------------------------------

### Compare import.meta.resolve() with new URL()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/import.meta/resolve

This example illustrates the difference between import.meta.resolve() and the URL() constructor when resolving a relative path with import.meta.url as the base. import.meta.resolve() returns a string, while new URL() returns a URL object.

```javascript
const resolvedString = import.meta.resolve("./lib/helper.js");
const resolvedUrlObject = new URL("./lib/helper.js", import.meta.url);

console.log(resolvedString);
console.log(resolvedUrlObject.href);
```

--------------------------------

### Using formatToParts()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat/formatToParts

Demonstrates how to retrieve date components as an array of objects for custom formatting and manipulation.

```javascript
const date = new Date(2020, 11, 20, 3, 23, 16, 78);
const fmt = new Intl.DateTimeFormat("en-US", {
  dateStyle: "full",
  timeStyle: "long",
});

console.log(fmt.format(date));
// "Sunday, December 20, 2020 at 3:23:16 AM GMT+5:30"

console.log(fmt.formatToParts(date));
// [
//   { type: "weekday", value: "Sunday" },
//   { type: "literal", value: ", " },
//   { type: "month", value: "December" },
//   { type: "literal", value: " " },
//   { type: "day", value: "20" },
//   { type: "literal", value: ", " },
//   { type: "year", value: "2020" },
//   { type: "literal", value: " at " },
//   { type: "hour", value: "3" },
//   { type: "literal", value: ":" },
//   { type: "minute", value: "23" },
//   { type: "literal", value: ":" },
//   { type: "second", value: "16" },
//   { type: "literal", value: " " },
//   { type: "dayPeriod", value: "AM" },
//   { type: "literal", value: " " },
//   { type: "timeZoneName", value: "GMT+5:30" }
// ]
```

--------------------------------

### Get a value from a Map

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map

The get() method returns the value corresponding to the key in this Map, or undefined if there is none.

```javascript
const map = new Map([
  ['key1', 'value1'],
  ['key2', 'value2'],
]);

console.log(map.get('key1')); // 'value1'
console.log(map.get('key3')); // undefined
```

--------------------------------

### Get available collation types

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale

Use the getCollations() method on an Intl.Locale object to get an array of supported collation types.

```javascript
const locale = new Intl.Locale("en-US");
console.log(locale.getCollations()); // ["lex", "traditional", ...]
```

--------------------------------

### Temporal.Instant Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Instant

Methods available on Temporal.Instant instances.

```APIDOC
## Temporal.Instant.prototype.add()

### Description
Returns a new `Temporal.Instant` object representing this instant moved forward by a given duration (in a form convertible by `Temporal.Duration.from()`).

## Temporal.Instant.prototype.equals()

### Description
Returns `true` if this instant is equivalent in value to another instant (in a form convertible by `Temporal.Instant.from()`), and `false` otherwise. They are compared by their epoch nanoseconds. Equivalent to `Temporal.Instant.compare(this, other) === 0`.

## Temporal.Instant.prototype.round()

### Description
Returns a new `Temporal.Instant` object representing this instant rounded to the given unit.

## Temporal.Instant.prototype.since()

### Description
Returns a new `Temporal.Duration` object representing the duration from another instant (in a form convertible by `Temporal.Instant.from()`) to this instant. The duration is positive if the other instant is before this instant, and negative if after.

## Temporal.Instant.prototype.subtract()

### Description
Returns a new `Temporal.Instant` object representing this instant moved backward by a given duration (in a form convertible by `Temporal.Duration.from()`).

## Temporal.Instant.prototype.toJSON()

### Description
Returns a string representing this instant in the same RFC 9557 format as calling `toString()`. Intended to be implicitly called by `JSON.stringify()`.

## Temporal.Instant.prototype.toLocaleString()

### Description
Returns a string with a language-sensitive representation of this instant. In implementations with `Intl.DateTimeFormat` API support, this method delegates to `Intl.DateTimeFormat`.

## Temporal.Instant.prototype.toString()

### Description
Returns a string representing this instant in the RFC 9557 format using the specified time zone.

## Temporal.Instant.prototype.toZonedDateTimeISO()

### Description
Returns a new `Temporal.ZonedDateTime` object representing this instant in the specified time zone using the ISO 8601 calendar system.

## Temporal.Instant.prototype.until()

### Description
Returns a new `Temporal.Duration` object representing the duration from this instant to another instant (in a form convertible by `Temporal.Instant.from()`). The duration is positive if the other instant is after this instant, and negative if before.

## Temporal.Instant.prototype.valueOf()

### Description
Throws a `TypeError`, which prevents `Temporal.Instant` instances from being implicitly converted to primitives when used in arithmetic or comparison operations.
```

--------------------------------

### Example of UTC to local time conversion

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime

Demonstration of applying a -05:00 offset to a specific UTC timestamp.

```text
1970-01-01T00:00:00 + -05:00 = 1969-12-31T19:00:00
```

--------------------------------

### Displaying the first image loaded

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/any

Fetches multiple images and displays the first one that successfully loads using Promise.any(). This example requires a function `fetchImage` that returns a promise resolving with a blob.

```javascript
const fetchImage = (url) => {
  return fetch(url).then(response => {
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }
    return response.blob();
  });
};

const imageUrls = [
  'https://example.com/image1.jpg',
  'https://example.com/image2.png',
  'https://example.com/image3.gif'
];

Promise.any(imageUrls.map(url => fetchImage(url)))
  .then(firstBlob => {
    const imageUrl = URL.createObjectURL(firstBlob);
    const img = document.createElement('img');
    img.src = imageUrl;
    document.body.appendChild(img);
  })
  .catch(error => {
    console.error('All images failed to load:', error);
  });

```

--------------------------------

### Getter and setter function names

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/name

When using `get` and `set` accessor properties, 'get' or 'set' will appear in the function name.

```javascript
const obj = {
  get myProp() {},
  set myProp(value) {}
};
console.log(Object.getOwnPropertyDescriptor(obj, 'myProp').get.name); // "get myProp"
console.log(Object.getOwnPropertyDescriptor(obj, 'myProp').set.name); // "set myProp"
```

--------------------------------

### Create equivalent regular expressions

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/RegExp

Demonstrates the three ways to create the same regular expression using literal notation and the constructor.

```javascript
const re1 = /ab+c/;
const re2 = new RegExp("ab+c");
const re3 = new RegExp(/ab+c/);
```

--------------------------------

### Object Static Methods and Properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some

Documentation for static methods and properties of the Object constructor, such as call(), apply(), and toString().

```APIDOC
## Object Static Methods and Properties

### Description
Details the static methods and properties available on the Object constructor.

### Static Methods
- `Object.apply(thisArg, argsArray)`
- `Object.bind(thisArg[, arg1[, arg2[, ...]]])`
- `Object.call(thisArg[, arg1[, arg2[, ...]]])`
- `Object.toString()`
- `Object[Symbol.hasInstance](O)

### Static Properties
- `displayName` (Non-standard)
- `length`
- `name`
- `prototype`
- `arguments` (Non-standard, Deprecated)
- `caller` (Non-standard, Deprecated)

### Request Example
```json
{
  "example": "Object.prototype.toString.call([1, 2, 3])"
}
```

### Response Example
```json
{
  "example": "[object Array]"
}

```

--------------------------------

### For loop alternative to reduce()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce

This example demonstrates converting a reduce() operation to a for loop for improved clarity when the accumulator is mutated. This avoids the potential performance pitfalls of immutable reduce.

```javascript
const names = ["Alice", "Bob", "Charlie"];
const allNames = {};
for (const name of names) {
  allNames[name] = name;
}
```

--------------------------------

### Function Constructor and Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/resolve

Documentation for the Function object, including its constructor, static methods, and instance methods.

```APIDOC
## Function

### Constructor

#### `Function()`

- **Description**: Creates a new Function object. This is a built-in object that has methods and properties that allow you to manipulate functions.
- **Method**: Constructor
- **Endpoint**: N/A

### Static Methods

#### `Function.apply(thisArg, argsArray)`

- **Description**: Calls a function with a given `this` value and arguments provided as an array (or an array-like object).
- **Method**: GET
- **Endpoint**: N/A

#### `Function.bind(thisArg, arg1, arg2, ...)`

- **Description**: Creates a new function that, when called, has its `this` keyword set to the provided value, with a given sequence of arguments preceding any provided when the new function is called.
- **Method**: GET
- **Endpoint**: N/A

#### `Function.call(thisArg, arg1, arg2, ...)`

- **Description**: Calls a function with a given `this` value and arguments provided individually.
- **Method**: GET
- **Endpoint**: N/A

#### `Function.toString()`

- **Description**: Returns a string representing the source code of the function.
- **Method**: GET
- **Endpoint**: N/A

#### `Function[Symbol.hasInstance]()`

- **Description**: Determines if a given value is an instance of the Function object.
- **Method**: GET
- **Endpoint**: N/A

### Instance Methods

#### `func.__defineGetter__(propertyName, getter)`

- **Description**: Associates a function with the property that is invoked when that property is looked up. Deprecated.
- **Method**: GET
- **Endpoint**: N/A

#### `func.__defineSetter__(propertyName, setter)`

- **Description**: Associates a function with the property that is invoked when that property is set. Deprecated.
- **Method**: GET
- **Endpoint**: N/A

#### `func.__lookupGetter__(propertyName)`

- **Description**: Returns the getter function associated with the given property. Deprecated.
- **Method**: GET
- **Endpoint**: N/A

#### `func.__lookupSetter__(propertyName)`

- **Description**: Returns the setter function associated with the given property. Deprecated.
- **Method**: GET
- **Endpoint**: N/A

#### `func.hasOwnProperty(propertyName)`

- **Description**: Returns a boolean indicating whether the object has the specified property as its own property.
- **Method**: GET
- **Endpoint**: N/A

#### `func.isPrototypeOf(V)`

- **Description**: Returns a boolean indicating whether the specified object is an ancestor of the object that is called for.
- **Method**: GET
- **Endpoint**: N/A

#### `func.propertyIsEnumerable(propertyName)`

- **Description**: Returns a boolean indicating whether the specified property is enumerable.
- **Method**: GET
- **Endpoint**: N/A

#### `func.toLocaleString()`

- **Description**: Returns a string representing the function, using the locale conventions of the runtime. This method is not typically used for functions.
- **Method**: GET
- **Endpoint**: N/A

#### `func.toString()`

- **Description**: Returns a string representing the source code of the function.
- **Method**: GET
- **Endpoint**: N/A

#### `func.valueOf()`

- **Description**: Returns the primitive value of the Function object.
- **Method**: GET
- **Endpoint**: N/A

### Static Properties

#### `Function.length`

- **Description**: The number of arguments expected by the function.
- **Method**: GET
- **Endpoint**: N/A

#### `Function.name`

- **Description**: The name of the function.
- **Method**: GET
- **Endpoint**: N/A

#### `Function.prototype`

- **Description**: The prototype property of the Function constructor.
- **Method**: GET
- **Endpoint**: N/A

#### `Function.arguments` (Non-standard, Deprecated)

- **Description**: An array-like object containing the arguments passed to the function. Deprecated.
- **Method**: GET
- **Endpoint**: N/A

#### `Function.caller` (Non-standard, Deprecated)

- **Description**: The function that invoked the current function. Deprecated.
- **Method**: GET
- **Endpoint**: N/A

### Instance Properties

#### `func.__proto__` (Deprecated)

- **Description**: The prototype of the function. Deprecated.
- **Method**: GET
- **Endpoint**: N/A

#### `func.constructor`

- **Description**: The constructor function that created the object.
- **Method**: GET
- **Endpoint**: N/A
```

--------------------------------

### Example Error Messages

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Getter_only

These are example error messages that can occur in different browsers when attempting to set a getter-only property in strict mode.

```javascript
TypeError: Cannot set property x of #<Object> which has only a getter (V8-based)
```

```javascript
TypeError: '#x' was defined without a setter (V8-based)
```

```javascript
TypeError: setting getter-only property "x" (Firefox)
```

```javascript
TypeError: Attempted to assign to readonly property. (Safari)
```

```javascript
TypeError: Trying to access an undefined private setter (Safari)
```

--------------------------------

### Bitwise OR operation example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Bitwise_OR

Demonstrates the bitwise OR operation between two numbers, showing their decimal and binary representations and the resulting binary and decimal values.

```javascript
     9 (base 10) = 00000000000000000000000000001001 (base 2)
    14 (base 10) = 00000000000000000000000000001110 (base 2)
                   --------------------------------
14 | 9 (base 10) = 00000000000000000000000000001111 (base 2) = 15 (base 10)
```

--------------------------------

### Adding properties and default values

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty

This example highlights the difference between assigning a value using property accessors and using Object.defineProperty(), especially concerning default attribute values.

```javascript
const obj = {};

// Using property accessor
obj.a = 1;

// Using Object.defineProperty
Object.defineProperty(obj, "b", {
  value: 2
});

console.log(obj.a); // 1
console.log(obj.b); // 2

console.log(Object.getOwnPropertyDescriptor(obj, "a"));
/*
undefined
*/

console.log(Object.getOwnPropertyDescriptor(obj, "b"));
/*
{ value: 2, writable: false, enumerable: false, configurable: false }
*/

// To get the same behavior as property accessor, you need to specify attributes:
Object.defineProperty(obj, "c", {
  value: 3,
  writable: true,
  enumerable: true,
  configurable: true
});

console.log(Object.getOwnPropertyDescriptor(obj, "c"));
/*
{ value: 3, writable: true, enumerable: true, configurable: true }
*/

```

--------------------------------

### Get the offset of a Temporal.ZonedDateTime

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/offset

You can access the `offset` property directly on a `Temporal.ZonedDateTime` instance to get the current offset string. This property is read-only.

```javascript
const dt = Temporal.ZonedDateTime.from("2023-01-01T10:00:00-05:00[America/New_York]");
console.log(dt.offset); // "-05:00"
```

--------------------------------

### Using dateStyle and timeStyle

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat/DateTimeFormat

Illustrates how dateStyle and timeStyle can be used as shortcuts for setting multiple date-time component options.

```APIDOC
## Using dateStyle and timeStyle Shortcuts

### Description
`dateStyle` and `timeStyle` provide a shortcut for setting multiple date-time component options at once. They cannot be used with other individual date or time component options.

### Example Usage
```javascript
// For 'en-US', dateStyle: "short" is equivalent to { year: "2-digit", month: "numeric", day: "numeric" }
// For 'en-US', timeStyle: "short" is equivalent to { hour: "numeric", minute: "numeric" }

const options = { dateStyle: "short", timeStyle: "short" };
const formatter = new Intl.DateTimeFormat('en-US', options);
const now = new Date();
console.log(formatter.format(now)); // Example output: 10/26/2023, 10:30 AM
```

### Note
The exact component styles resolved by `dateStyle` and `timeStyle` are locale-dependent and are not included in the `resolvedOptions()` output. This ensures that the result of `resolvedOptions()` can be passed directly back to the `Intl.DateTimeFormat()` constructor, as an options object with both `dateStyle` or `timeStyle` and individual component styles is invalid.
```

--------------------------------

### Decoding a valid URI component

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Malformed_URI

This example demonstrates successful decoding of a URI component that was properly encoded.

```javascript
const encoded = "http://example.com/search%3Fq%3Dtest";
console.log(decodeURIComponent(encoded));
// Output: http://example.com/search?q=test
```

--------------------------------

### Get the day of the week for a date

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDate/dayOfWeek

Demonstrates how to access the `dayOfWeek` property of a `Temporal.PlainDate` instance to get the day of the week. This property is calendar-dependent.

```javascript
const today = Temporal.Now.plainDateISO();
console.log(today.dayOfWeek); // For example, 1 (Monday)
```

--------------------------------

### Object/Function Instance Methods and Properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every

Reference for instance methods and properties of Object and Function objects, including methods for property checking and inheritance.

```APIDOC
## Object/Function Instance Methods and Properties

### Description
Details the instance methods and properties available on Object and Function objects.

### Instance Methods
- `__defineGetter__(propertyName, getter)`: Deprecated. Associates a function with the property specified in the object.
- `__defineSetter__(propertyName, setter)`: Deprecated. Associates a function with the property specified in the object.
- `__lookupGetter__(propertyName)`: Deprecated. Returns the getter function associated with the specified property.
- `__lookupSetter__(propertyName)`: Deprecated. Returns the setter function associated with the specified property.
- `hasOwnProperty(prop)`: Returns a boolean indicating whether the object has the specified property as its own property (as opposed to inheriting it).
- `isPrototypeOf(V)`: Returns a boolean indicating whether the specified object is in the prototype chain of the object this method is called upon.
- `propertyIsEnumerable(prop)`: Returns a boolean indicating whether the specified property is her own and enumerable.
- `toLocaleString()`: Returns a string representing the object. This method is locale-aware.
- `toString()`: Returns a string representing the specified object.
- `valueOf()`: Returns the primitive value of the specified object.

### Instance Properties
- `__proto__`: Deprecated. Returns the prototype of the specified object.
- `constructor`: Refers to the function that created an object's prototype. In the case of the default Object constructor, `constructor` refers to the `Object` function itself.
```

--------------------------------

### Async IIFE example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/async_function

An Async IIFE allows the use of await and for...await in contexts where top-level await is not available. This example uses an arrow function to define the IIFE, but async function expressions can also be used.

```javascript
const result = await (async () => {
  const response = await fetch('/api/user/123');
  return await response.json();
})();
```

--------------------------------

### Get epochNanoseconds of a Temporal.Instant

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Instant/epochNanoseconds

Use the epochNanoseconds accessor property to get the number of nanoseconds since the Unix epoch. This property is read-only.

```javascript
const now = Temporal.Now.instant();
console.log(now.epochNanoseconds);
```

--------------------------------

### Using parseInt() with various inputs

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/parseInt

Examples demonstrating how parseInt() handles different string inputs and radices to return specific integer values.

```javascript
parseInt(" 0xF", 16);
parseInt(" F", 16);
parseInt("17", 8);
parseInt(021, 8);
parseInt("015", 10);
parseInt(15.99, 10);
parseInt("15,123", 10);
parseInt("FXX123", 16);
parseInt("1111", 2);
parseInt("15 * 3", 10);
parseInt("15e2", 10);
parseInt("15px", 10);
parseInt("12", 13);
```

```javascript
parseInt("Hello", 8);
parseInt("546", 2);
```

```javascript
parseInt("-F", 16);
parseInt("-0F", 16);
parseInt("-0XF", 16);
parseInt(-15.1, 10);
parseInt(" -17", 8);
parseInt(" -15", 10);
parseInt("-1111", 2);
parseInt("-15e1", 10);
parseInt("-12", 13);
```

```javascript
parseInt("0e0", 16);
```

```javascript
parseInt("900719925474099267n");
```

```javascript
parseInt("123_456", 10);
```

--------------------------------

### Using Math.log() with a different base

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/log

Example of how to calculate the logarithm of a number with a base other than e.

```APIDOC
## Using Math.log() with a different base

### Description
The following function returns the logarithm of `y` with base `x` (i.e., logxy\log_x y):

If you run `getBaseLog(10, 1000)`, it returns `2.9999999999999996` due to floating-point rounding, but still very close to the actual answer of 3.

### Request Example
```javascript
function getBaseLog(x, y) {
  return Math.log(y) / Math.log(x);
}

console.log(getBaseLog(10, 1000)); // 2.9999999999999996
console.log(getBaseLog(Math.E, Math.E)); // 1
```

### Response Example
```json
{
  "example": "2.9999999999999996, 1"
}
```
```

--------------------------------

### Specifying Arguments with the Function Constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/Function

Demonstrates how to create a `Function` object that accepts specific arguments, which are then used within the function body.

```APIDOC
## Specifying Arguments with the Function Constructor

### Description
This example shows how to create a `Function` object that takes two arguments, `a` and `b`, which are then used in the function's body to perform an addition.

### Method
`new Function(arg1, arg2, ..., body)`

### Endpoint
N/A (This is a constructor, not an API endpoint)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const adder = new Function('a', 'b', 'return a + b');
```

### Response
#### Success Response (200)
N/A (This is a constructor, not an API endpoint)

#### Response Example
```javascript
console.log(adder(5, 3)); // Output: 8
```
```

--------------------------------

### Object/Function Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/join

Reference for instance methods of Object and Function, including hasOwnProperty(), isPrototypeOf(), and toString().

```APIDOC
## Object/Function Instance Methods

### Description
Instance methods available on Object and Function.

### Method
`__defineGetter__()` (Deprecated)
### Endpoint
N/A

### Description
Associates a function with the property descriptor for getting.

### Method
`__defineSetter__()` (Deprecated)
### Endpoint
N/A

### Description
Associates a function with the property descriptor for setting.

### Method
`__lookupGetter__()` (Deprecated)
### Endpoint
N/A

### Description
Retrieves the function associated with the given property-discriptor for getting.

### Method
`__lookupSetter__()` (Deprecated)
### Endpoint
N/A

### Description
Retrieves the function associated with the given property-discriptor for setting.

### Method
`hasOwnProperty()`
### Endpoint
N/A

### Description
Returns a Boolean indicating whether the object has the specified property as its own property.

### Method
`isPrototypeOf()`
### Endpoint
N/A

### Description
Returns a Boolean that indicates whether or not a specified object appears in the prototype chain of the object on which the method was called.

### Method
`propertyIsEnumerable()`
### Endpoint
N/A

### Description
Returns a Boolean indicating whether the specified property is the object's own property and if it is enumerable.

### Method
`toLocaleString()`
### Endpoint
N/A

### Description
Returns a string representing the object. Overrides Object.prototype.toLocaleString().

### Method
`toString()`
### Endpoint
N/A

### Description
Returns a string representing the specified object. Overrides Object.prototype.toString().

### Method
`valueOf()`
### Endpoint
N/A

### Description
Returns the primitive value of the specified object.
```

--------------------------------

### Using Atomics.sub()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Atomics/sub

This example demonstrates the usage of Atomics.sub(). Note that running this code requires specific security conditions to be met for SharedArrayBuffer.

```javascript
const buffer = new SharedArrayBuffer(1024);
const i8a = new Int8Array(buffer);

Atomics.store(i8a, 0, 5); // Store 5 at index 0

console.log(Atomics.sub(i8a, 0, 2)); // Subtract 2 from index 0, returns 5
console.log(Atomics.load(i8a, 0));   // Load value at index 0, returns 3
```

--------------------------------

### Using exec()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/exec

Demonstrates executing a regular expression search with capturing groups and the global flag.

```javascript
const re = /\w+\s(?<color>\w+)\s\w+\s\w+\s(\w+)/d;
const str = "The Quick Brown Fox Jumps Over The Lazy Dog";
const result = re.exec(str);
```

--------------------------------

### Catching a SuppressedError Example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SuppressedError

Example demonstrating how to catch a SuppressedError, which is thrown when an error occurs during resource disposal. It illustrates the chain of suppressed errors.

```APIDOC
### Catching a SuppressedError

A `SuppressedError` is thrown when an error occurs during resource disposal. Throwing an error causes scope cleanup, and each disposer during the cleanup can throw its own error. All these errors are collected into a chain of `SuppressedError` instances, with the original error as the `suppressed` property and the new error thrown by the next disposer as the `error` property.

The chain looks like this:
```
       SuppressedError --suppressed--> SuppressedError --suppressed--> Original error
              |																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					*`

```javascript
// Example of catching a SuppressedError

try {
  // Code that might throw an error during resource disposal
  // For example, using 'await using' with a resource that fails to dispose
  await using (resourceThatMightFail) {
    // ... use the resource ...
  }
} catch (e) {
  if (e instanceof SuppressedError) {
    console.log('A SuppressedError occurred:');
    console.log('Original error:', e.suppressed);
    console.log('Error during disposal:', e.error);
    // You can traverse the chain if there are multiple suppressed errors
    if (e.suppressed instanceof SuppressedError) {
      console.log('Further suppressed error:', e.suppressed.suppressed);
    }
  } else {
    console.error('An unexpected error occurred:', e);
  }
}
```
```

--------------------------------

### Using fromCharCode() with BMP and supplementary characters

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/fromCharCode

Examples showing the creation of Basic Multilingual Plane (BMP) characters using a single code unit and supplementary characters using surrogate pairs.

```javascript
String.fromCharCode(65, 66, 67); // "ABC"
String.fromCharCode(0x2014); // "—"
String.fromCharCode(0x12014); // "—" (0x12014 truncated to 0x2014)
```

```javascript
String.fromCharCode(0xd83c, 0xdf03); // "🌃"
String.fromCharCode(0xd834, 0xdf06, 0x61, 0x62, 0x63); // "𝌆abc"
```

--------------------------------

### Non-well-formed iterable example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol/iterator

This example demonstrates a non-well-formed iterable where the `[Symbol.iterator]` method does not return a valid iterator object. This can lead to runtime exceptions.

```javascript
const nonWellFormedIterable = {
  [Symbol.iterator]: () => 1 // Does not return an iterator object
};

try {
  for (const value of nonWellFormedIterable) {
    console.log(value);
  }
} catch (e) {
  console.error(e); // TypeError: nonWellFormedIterable is not an iterable object
}
```

--------------------------------

### RFC 9557 format example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainTime

This is an example of the RFC 9557 format for Temporal.PlainTime. It shows the structure for hours, minutes, and seconds, including optional fractional seconds. The date, offset, time zone, and calendar components are ignored if present.

```plaintext
HH:mm:ss.sssssssss

```

--------------------------------

### Using options with toLocaleTimeString()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toLocaleTimeString

This example demonstrates customizing the time format using the `options` parameter. Various options like `hour`, `minute`, `second`, `timeZone`, and `hour12` can be used to control the output.

```javascript
const date = new Date(Date.UTC(2012, 11, 20, 3, 0, 0));

// Use 24-hour format, include seconds, and specify time zone
const options1 = {
  timeZone: 'America/New_York',
  hour: '2-digit',
  minute: '2-digit',
  second: '2-digit'
};
console.log(date.toLocaleTimeString('en-US', options1));
// Expected output: "03:00:00 AM"

// Use 12-hour format with AM/PM
const options2 = {
  hour: 'numeric',
  minute: 'numeric',
  hour12: true
};
console.log(date.toLocaleTimeString('en-US', options2));
// Expected output: "3:00 AM"

// Include fractional seconds
const options3 = {
  hour: 'numeric',
  minute: 'numeric',
  second: 'numeric',
  fractionalSecondDigits: 3
};
console.log(date.toLocaleTimeString('en-US', options3));
// Expected output: "3:00:00.000 AM"
```

--------------------------------

### Equivalent parsed syntax for property access

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Lexical_grammar

The parsed interpretation of the previous ambiguous property access example.

```javascript
a = b[1, 2, 3].forEach(console.log)
```

--------------------------------

### RangeError Usage Examples

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RangeError

Examples demonstrating how RangeError is used, particularly with numeric values and non-numeric values that fall outside expected ranges.

```APIDOC
## Using RangeError (for numeric values)

### Description
This example shows a `RangeError` being thrown when a numeric value is outside the acceptable range for a method like `toFixed()`.

### Method
JavaScript Execution

### Endpoint
N/A

### Parameters
None

### Request Body
None

### Response
Throws a `RangeError` if the number is outside the valid range for the method.

### Request Example
```javascript
try {
  let num = 123.456;
  console.log(num.toFixed(200)); // toFixed() expects an integer between 0 and 100
} catch (e) {
  if (e instanceof RangeError) {
    console.error('RangeError caught:', e.message);
  }
}
```

## Using RangeError (for non-numeric values)

### Description
This example demonstrates a `RangeError` when using `String.prototype.normalize()` with an invalid normalization form.

### Method
JavaScript Execution

### Endpoint
N/A

### Parameters
None

### Request Body
None

### Response
Throws a `RangeError` if the normalization form is invalid.

### Request Example
```javascript
try {
  '\u0041\u0300'.normalize('NFKC'); // Example with an invalid normalization form
} catch (e) {
  if (e instanceof RangeError) {
    console.error('RangeError caught:', e.message);
  }
}
```
```

--------------------------------

### Number Constructor and Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/EPSILON

Documentation for the Number constructor, its static methods, and instance methods.

```APIDOC
## Number Constructor

### Description
Represents numeric values. The `Number` constructor is used to create Number objects.

### Method
`Number()`

### Endpoint
N/A (Built-in Object)

### Parameters
None

### Request Example
```javascript
const numObj = new Number(123);
```

### Response
#### Success Response (200)
Returns a Number object.

#### Response Example
```json
{
  "value": 123
}
```

## Number Static Methods

### Description
Provides methods for working with numbers.

### Method
`Number.isFinite(value)`
`Number.isInteger(value)`
`Number.isNaN(value)`
`Number.isSafeInteger(value)`
`Number.parseFloat(string)`
`Number.parseInt(string, radix)`

### Endpoint
N/A (Built-in Object Methods)

### Parameters
- **value** (Number) - The value to test.
- **string** (String) - The string to parse.
- **radix** (Number) - An integer between 2 and 36 that represents the radix (the base in mathematical numeral systems) of the `string`. Optional.

### Request Example
```javascript
console.log(Number.isFinite(Infinity)); // false
console.log(Number.parseInt("101", 2)); // 5
```

### Response
#### Success Response (200)
Returns a Boolean or a Number depending on the method.

#### Response Example
```json
{
  "result": true
}
```

## Number Static Properties

### Description
Provides properties with special numeric values.

### Endpoint
N/A (Built-in Object Properties)

### Properties
- **`Number.EPSILON`** (Number) - The smallest difference between two representable numbers.
- **`Number.MAX_SAFE_INTEGER`** (Number) - The maximum safe integer in JavaScript.
- **`Number.MAX_VALUE`** (Number) - The largest representable number in JavaScript.
- **`Number.MIN_SAFE_INTEGER`** (Number) - The minimum safe integer in JavaScript.
- **`Number.MIN_VALUE`** (Number) - The smallest positive representable number in JavaScript.
- **`Number.NaN`** (Number) - Not-a-Number value.
- **`Number.NEGATIVE_INFINITY`** (Number) - Represents negative infinity.
- **`Number.POSITIVE_INFINITY`** (Number) - Represents positive infinity.

### Response Example
```json
{
  "value": 1.7976931348623157e+308
}
```

## Number Instance Methods

### Description
Methods available on Number instances.

### Method
`toExponential(fractionDigits)`
`toFixed(digits)`
`toLocaleString(locales, options)`
`toPrecision(precision)`
`toString(radix)`
`valueOf()`

### Endpoint
N/A (Instance Methods)

### Parameters
- **fractionDigits** (Number) - Optional. Number of digits to appear after the decimal point.
- **digits** (Number) - Optional. Number of digits to appear after the decimal point.
- **locales** (String or Array) - Optional. Language tags.
- **options** (Object) - Optional. Formatting options.
- **precision** (Number) - Optional. The number of significant digits.
- **radix** (Number) - Optional. An integer between 2 and 36.

### Request Example
```javascript
const num = 123.456;
console.log(num.toExponential(2)); // "1.23e+2"
console.log(num.toString(16)); // "7b.8040000000000"
```

### Response
#### Success Response (200)
Returns a string representation of the number.

#### Response Example
```json
{
  "result": "123.46"
}
```
```

--------------------------------

### Get the day of the year

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDate/dayOfYear

Use the `dayOfYear` accessor property to get the 1-based day index of a date within its year. This property is calendar-dependent.

```javascript
const date = Temporal.PlainDate.from("2023-01-10");
console.log(date.dayOfYear); // 10

const date2 = Temporal.PlainDate.from("2023-12-31");
console.log(date2.dayOfYear); // 365
```

--------------------------------

### Using fill() to populate an empty array

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/fill

Shows how to fill a sparse array that has been initialized with a length.

```javascript
const emptyArray = Array(3);
console.log(emptyArray.fill(2)); // [2, 2, 2]
```

--------------------------------

### Map.prototype.get() syntax

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/get

The syntax for calling the get method on a Map instance.

```javascript
get(key)
```

--------------------------------

### Basic Reflect.construct() usage

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect/construct

This example demonstrates the basic usage of Reflect.construct() to create a new instance of a constructor with a list of arguments. It is equivalent to `new MyClass(...args)`.

```javascript
function MyClass(a, b) {
  this.a = a;
  this.b = b;
}

const args = [1, 2];
const instance = Reflect.construct(MyClass, args);

console.log(instance.a); // 1
console.log(instance.b); // 2
```

--------------------------------

### Using String.prototype.small()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/small

This example demonstrates how to use the deprecated small() method to create an HTML string. It is recommended to use DOM APIs instead.

```javascript
const str = "Mozilla";

document.body.innerHTML = "<p>" + str.small() + "</p>";
```

--------------------------------

### Example of Invalid Regular Expression Flags

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Bad_regexp_flag

This example demonstrates the use of invalid flags (`b`, `a`, `r`) in a regular expression, which would result in a SyntaxError.

```javascript
/foobar/bar
```

--------------------------------

### Using fontcolor()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/fontcolor

Demonstrates the usage of the fontcolor() method to create an HTML string.

```javascript
const worldString = "Hello, world";
console.log(worldString.fontcolor("DeepSkyBlue"));
// '<font color="DeepSkyBlue">Hello, world</font>'

document.body.innerHTML = worldString.fontcolor("DeepSkyBlue");
```

--------------------------------

### Get the microsecond component of a time

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainTime/microsecond

Access the `microsecond` property to get the microsecond component of a `Temporal.PlainTime` instance. This property returns an integer between 0 and 999.

```javascript
const dt = new Temporal.PlainTime(10, 30, 15, 123, 456789);
console.log(dt.microsecond); // 456
```

--------------------------------

### RegExp Constructor and Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/sticky

Documentation for the RegExp object, including its constructor, static methods, and instance methods.

```APIDOC
## RegExp

### Description
Represents a regular expression, a pattern that matches characters in a string.

### Constructor
#### `RegExp()`
Creates a new regular expression object.

### Static Methods
#### `RegExp.escape(string)`
Escapes special characters in a string, making it safe to use in a regular expression.

### Instance Methods
#### `exec(string)`
Executes a search for a match in a specified string and returns the result.

#### `test(string)`
Tests for a match in a specified string and returns `true` or `false`.

#### `compile()`
Compiles a regular expression (Deprecated).

#### `toString()`
Returns a string representing the regular expression.

#### `[Symbol.match](string)`
Retrieves the result of matching a string against a regular expression.

#### `[Symbol.matchAll](string)`
Returns an iterator of all results matching a string against a regular expression, including capturing groups.

#### `[Symbol.replace](string, replacement)`
Replaces occurrences of a pattern matched against a string with a replacement.

#### `[Symbol.search](string)`
Executes a search for a match between a regular expression and a specified string.

#### `[Symbol.split](string, limit)`
Splits a string into an array of substrings by separating the string into substrings, using a specified separator string or regular expression.

### Instance Properties
#### `lastIndex`
Specifies the index at which to start the next match.

#### `dotAll`
Indicates whether the 'dot' character in a regular expression matches newline characters.

#### `flags`
Returns a string containing the flags of the regular expression.

#### `global`
Indicates whether to search globally or only for the first match.

#### `hasIndices`
Indicates whether the regular expression includes match indices.

#### `ignoreCase`
Indicates whether case is ignored when matching.

#### `multiline`
Indicates whether to match globally or only for the first match.

#### `source`
Returns the text of the regular expression.

#### `sticky`
Indicates whether to match only starting at the first position in the string.

#### `unicode`
Indicates whether the regular expression is used with the unicode flag.

#### `unicodeSets`
Indicates whether the regular expression uses unicode property escapes.

### Static Properties
#### `$1, …, $9` (Deprecated)
Refer to the captured groups from the last successful match.

#### `input ($_)` (Deprecated)
Refer to the string that was searched for a match.

#### `lastMatch ($&)` (Deprecated)
Refer to the portion of the string that matched the regular expression.

#### `lastParen ($+)` (Deprecated)
Refer to the last captured group in the last successful match.

#### `leftContext ($`)` (Deprecated)
Refer to the portion of the string that precedes the matched substring.

#### `rightContext ($')` (Deprecated)
Refer to the portion of the string that follows the matched substring.

#### `[Symbol.species]`
Returns the constructor for regular expressions.
```

--------------------------------

### Catching a ReferenceError

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ReferenceError

Example demonstrating how to catch a ReferenceError in JavaScript.

```APIDOC
## Catching a ReferenceError

### Description
This example shows how to use a `try...catch` block to handle a `ReferenceError` that occurs when trying to access an undeclared variable.

### Method
`try...catch` block

### Endpoint
N/A (JavaScript code execution)

### Parameters
None

### Request Body
None

### Response
#### Success Response (200)
- **Logs the error message to the console.**

### Request Example
```javascript
try {
  console.log(undeclaredVariable);
} catch (error) {
  if (error instanceof ReferenceError) {
    console.error("Caught a ReferenceError:", error.message);
  } else {
    console.error("Caught an unexpected error:", error);
  }
}
```

### Response Example
```
Caught a ReferenceError: undeclaredVariable is not defined
```
```

--------------------------------

### Get the hour from a Temporal.PlainTime instance

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainTime/hour

Use the `hour` accessor property to get the hour component of a `Temporal.PlainTime` object. The hour is an integer between 0 and 23.

```javascript
const p = Temporal.PlainTime.from("14:30:00");
console.log(p.hour); // 14
```

--------------------------------

### Basic ternary operator example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Conditional_operator

A simple demonstration of the ternary operator's syntax and usage.

```javascript
let result = condition ? value1 : value2;
```

--------------------------------

### Get epoch milliseconds from a Temporal.Instant

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Instant/epochMilliseconds

Use the `epochMilliseconds` property to get the number of milliseconds since the Unix epoch from a `Temporal.Instant` object. This property is read-only.

```javascript
const now = Temporal.Now.instant();
console.log(now.epochMilliseconds);
```

--------------------------------

### Object.keys() Method

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/keys

This section details the Object.keys() method, its syntax, parameters, return value, and provides examples of its usage.

```APIDOC
## Object.keys()

### Description
The `Object.keys()` static method returns an array of a given object's own enumerable string-keyed property names. It is similar to iterating with a `for...in` loop, but it does not include properties from the prototype chain.

### Method
`Object.keys(obj)`

### Parameters
#### Path Parameters
- **obj** (Object) - Required - The object whose enumerable own properties are to be returned.

### Return value
An array of strings representing the given object's own enumerable string-keyed property keys.

### Request Example
```json
{
  "example": "Object.keys({ a: 1, b: 2, c: 3 })"
}
```

### Response
#### Success Response (200)
- **Array** (Array<string>) - An array containing the enumerable own property names of the object.

#### Response Example
```json
{
  "example": "[\"a\", \"b\", \"c\"]"
}
```

### Description
`Object.keys()` returns an array whose elements are strings corresponding to the enumerable string-keyed property names found directly upon `object`. This is the same as iterating with a `for...in` loop, except that a `for...in` loop enumerates properties in the prototype chain as well. The order of the array returned by `Object.keys()` is the same as that provided by a `for...in` loop.

If you need the property values, use `Object.values()` instead. If you need both the property keys and values, use `Object.entries()` instead.

### Examples
#### Using Object.keys()
```javascript
const object1 = {
  a: 'somestring',
  b: 42,
  c: false
};

console.log(Object.keys(object1));
// Expected output: ["a", "b", "c"]
```

#### Using Object.keys() on primitives
Non-object arguments are coerced to objects. `undefined` and `null` cannot be coerced to objects and throw a `TypeError` upfront. Only strings may have own enumerable properties, while all other primitives return an empty array.

**Note:** In ES5, passing a non-object to `Object.keys() threw a `TypeError`.

```javascript
// String
console.log(Object.keys('foo'));
// Expected output: ["0", "1", "2"]

// Number
console.log(Object.keys(100));
// Expected output: []

// null
// console.log(Object.keys(null)); // Throws TypeError
```
```

--------------------------------

### Using Promise.try() for error handling

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/try

Example of lifting a callback into a promise and handling results and errors.

```javascript
Promise.try(() => myFunction())
  .then((result) => console.log(result))
  .catch((error) => console.error(error));
```

```javascript
try {
  console.log(await myFunction());
} catch (error) {
  console.error(error);
}
```

--------------------------------

### Equivalent RegExp Creation

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp

Demonstrates three equivalent ways to create the same regular expression object: literal notation, constructor with string, and constructor with another RegExp object.

```javascript
const regex1 = /ab+c/;
const regex2 = new RegExp('ab+c');
const regex3 = new RegExp(/ab+c/);

```

--------------------------------

### Function Constructor vs. Function Declaration Example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function

Illustrates the difference in scope between functions created with the Function constructor and function declarations.

```APIDOC
### Difference between Function constructor and function declaration

Functions created with the `Function` constructor do not create closures to their creation contexts; they always are created in the global scope. When running them, they will only be able to access their own local variables and global ones, not the ones from the scope in which the `Function` constructor was created.

While this code works in web browsers, `f1()` will produce a `ReferenceError` in Node.js, as `x` will not be found. This is because the top-level scope in Node is not the global scope, and `x` will be local to the module.
```

--------------------------------

### Redeclaring a function parameter

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Redeclared_parameter

This example demonstrates the invalid redeclaration of a function parameter using let.

```javascript
function f(arg) {
  let arg = "foo"; // SyntaxError: Identifier 'arg' has already been declared
}
```

--------------------------------

### Basic usage of Promise.allSettled()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/allSettled

This example demonstrates the basic usage of Promise.allSettled() with promises that fulfill and reject. It shows how to access the status and value/reason for each promise.

```javascript
const promise1 = Promise.resolve(3);
const promise2 = new Promise((resolve, reject) => setTimeout(reject, 100, 'foo'));

const promises = [promise1, promise2];

Promise.allSettled(promises). 
  then((results) => results.forEach((result) => {
    if (result.status === 'fulfilled') {
      console.log(`Fulfilled with value: ${result.value}`);
    } else {
      console.log(`Rejected with reason: ${result.reason}`);
    }
  }));

// Expected output:
// Fulfilled with value: 3
// Rejected with reason: foo
```

--------------------------------

### Using the space parameter

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/JSON/stringify

Demonstrates how to indent the output using a space character or a tab character.

```javascript
JSON.stringify({ a: 2 }, null, " ");
```

```javascript
JSON.stringify({ a: 2 }, null, "\t");
```

--------------------------------

### Get the minute component of a ZonedDateTime

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/minute

Use the `minute` accessor property to get the minute component (0-59) of a `Temporal.ZonedDateTime` instance. The set accessor is undefined; use `with()` to modify.

```javascript
const dt = Temporal.ZonedDateTime.from("2023-09-01T14:30:00+01:00[Europe/London]");
console.log(dt.minute); // 30
```

--------------------------------

### Optional for expressions

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for

Examples showing how to omit parts of the for loop header.

```javascript
let i = 0;
for (; i < 9; i++) {
  console.log(i);
}
```

```javascript
for (let i = 0; ; i++) {
  console.log(i);
  if (i > 3) break;
}
```

```javascript
let i = 0;
for (;;) {
  if (i > 3) break;
  console.log(i);
  i++;
}
```

--------------------------------

### Object Constructor and Static Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/create

Details the Object constructor and its static methods like assign, create, defineProperties, and more.

```APIDOC
## Object Constructor

### Description
Represents the built-in Object object that is a member of the global scope.

### Method
Constructor

### Endpoint
N/A (Built-in Object)

## Object Static Methods

### Description
Provides static methods for manipulating objects.

### Method
Static Methods

### Endpoint
N/A (Built-in Object Methods)

#### Methods
- **`Object.assign()`**
- **`Object.create()`**
- **`Object.defineProperties()`**
- **`Object.defineProperty()`**
- **`Object.entries()`**
- **`Object.freeze()`**
- **`Object.fromEntries()`**
- **`Object.getOwnPropertyDescriptor()`**
- **`Object.getOwnPropertyDescriptors()`**
- **`Object.getOwnPropertyNames()`**
- **`Object.getOwnPropertySymbols()`**
- **`Object.getPrototypeOf()`**
- **`Object.groupBy()`**
- **`Object.hasOwn()`**
- **`Object.is()`**
- **`Object.isExtensible()`**
- **`Object.isFrozen()`**
- **`Object.isSealed()`**
- **`Object.keys()`**
- **`Object.preventExtensions()`**
- **`Object.seal()`**
- **`Object.setPrototypeOf()`**
- **`Object.values()`
```

--------------------------------

### Get the result of since() in days

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainYearMonth/since

PlainYearMonth does not have day precision by default. To get the duration in days, convert to a Temporal.PlainDate first using an unambiguous day, then use since().

```javascript
const ym1 = Temporal.PlainYearMonth.from("2022-01");
const ym2 = Temporal.PlainYearMonth.from("2024-03");

// Convert to PlainDate with an unambiguous day (e.g., the 1st)
const d1 = ym1.toPlainDate({ day: 1 });
const d2 = ym2.toPlainDate({ day: 1 });

// Calculate duration in days
console.log(d2.since(d1).toString()); // "P792D"
```

--------------------------------

### Look up a property's getter using Object.getOwnPropertyDescriptor()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/__lookupGetter__

This example shows the recommended way to look up a property's getter using Object.getOwnPropertyDescriptor(). This method is more versatile and works with null-prototype objects and symbol properties.

```javascript
const obj = {
  get foo() {
    return 'bar';
  }
};

const descriptor = Object.getOwnPropertyDescriptor(obj, 'foo');
console.log(descriptor.get); // [Function: get foo]
console.log(Object.getOwnPropertyDescriptor(obj, 'bar')); // undefined
```

--------------------------------

### Using Math.clz32()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/clz32

Demonstrates the basic usage of Math.clz32() to count leading zero bits in a number's 32-bit binary representation.

```javascript
Math.clz32(1);
// Expected output: 31

Math.clz32(0);
// Expected output: 32

Math.clz32(1000000000);
// Expected output: 3

Math.clz32(0b11111111111111111111111111111111);
// Expected output: 0

Math.clz32(Math.pow(2, 31));
// Expected output: 0

Math.clz32(Math.pow(2, 32));
// Expected output: 0

Math.clz32(-1);
// Expected output: 0

Math.clz32(5);
// Expected output: 29

Math.clz32(NaN);
// Expected output: 32

Math.clz32(Infinity);
// Expected output: 0

Math.clz32(null);
// Expected output: 32

Math.clz32(undefined);
// Expected output: 32

Math.clz32("abc");
// Expected output: 32

Math.clz32("100");
// Expected output: 25

Math.clz32(true);
// Expected output: 31

Math.clz32(false);
// Expected output: 32
```

--------------------------------

### Get the week of the year

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDate/weekOfYear

Use the weekOfYear accessor property to get the 1-based week index of a date. The result is undefined if the calendar lacks a well-defined week system.

```javascript
const date = Temporal.PlainDate.from("2023-01-01");
console.log(date.weekOfYear); // 52
```

--------------------------------

### GET Intl.Locale.prototype.caseFirst

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale/caseFirst

Retrieves the case ordering rule for an Intl.Locale instance.

```APIDOC
## GET Intl.Locale.prototype.caseFirst

### Description
Returns the case ordering rule for the locale. Possible values are 'upper', 'lower', or 'false'. If not specified, returns 'undefined'.

### Method
GET

### Endpoint
Intl.Locale.prototype.caseFirst

### Response
#### Success Response (200)
- **value** (string|undefined) - The case ordering rule: 'upper', 'lower', 'false', or undefined.
```

--------------------------------

### Get the day of the month

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDate/day

Access the `day` property to get the day of the month from a `Temporal.PlainDate` instance. This property returns a positive integer representing the 1-based day index.

```javascript
const today = Temporal.Now.plainDateISO();
console.log(today.day);
```

--------------------------------

### Numeric Addition Example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Addition

Demonstrates numeric addition where non-string, non-BigInt values are coerced to numbers.

```javascript
let x = 5;
let y = 3;
console.log(x + y); // Output: 8
```

```javascript
let a = '5';
let b = 3;
console.log(a + b); // Output: "53"
```

```javascript
let c = 5;
let d = '3';
console.log(c + d); // Output: "53"
```

```javascript
let e = '5';
let f = '3';
console.log(e + f); // Output: "53"
```

--------------------------------

### Feature Detection with Getters

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/get

Example of using a getter for feature detection, specifically for option bag parameters.

```APIDOC
## DELETE /api/users/{id}

### Description
Deletes a user.

### Method
DELETE

### Endpoint
/api/users/{id}

### Parameters
#### Path Parameters
- **id** (number) - Required - The unique identifier of the user to delete.

### Response
#### Success Response (204)
No content returned on successful deletion.

#### Response Example
(No content)
```

--------------------------------

### Promise Constructor and Static Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/all

Documentation for the Promise constructor and its static methods.

```APIDOC
## Promise

### Constructor

#### `Promise()`

- **Description**: Creates a new Promise object.
- **Method**: Constructor
- **Endpoint**: N/A

### Static Methods

#### `Promise.all(iterable)`

- **Description**: Takes an iterable of promises and returns a single Promise that resolves when all of the promises in the iterable argument have resolved.
- **Method**: GET
- **Endpoint**: N/A

#### `Promise.allSettled(iterable)`

- **Description**: Returns a Promise that always resolves after all of the given Promises have either fulfilled or rejected.
- **Method**: GET
- **Endpoint**: N/A

#### `Promise.any(iterable)`

- **Description**: Takes an iterable of Promises and returns a single Promise that resolves as soon as any of the promises in the iterable fulfills, with the value of the fulfilled promise.
- **Method**: GET
- **Endpoint**: N/A

#### `Promise.race(iterable)`

- **Description**: Takes an iterable of promises as input, and returns a single Promise that resolves or rejects as soon as one of the promises in the iterable fulfills or rejects, with the value or reason from that promise.
- **Method**: GET
- **Endpoint**: N/A

#### `Promise.reject(reason)`

- **Description**: Returns a new Promise that is rejected with the given reason.
- **Method**: GET
- **Endpoint**: N/A

#### `Promise.resolve(value)`

- **Description**: Returns a new Promise object that is resolved with the given value.
- **Method**: GET
- **Endpoint**: N/A

#### `Promise.try(callback)`

- **Description**: Executes a callback function and returns a Promise that resolves with the return value of the callback or rejects if the callback throws an error.
- **Method**: GET
- **Endpoint**: N/A

#### `Promise.withResolvers()`

- **Description**: Returns an object containing a new Promise and functions to resolve or reject it.
- **Method**: GET
- **Endpoint**: N/A
```

--------------------------------

### Intercept property access with a get() trap

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy

This snippet shows how to customize proxy behavior by implementing a `get()` handler. This trap intercepts attempts to access properties on the target object.

```javascript
const target = {
  message1: "hello",
  message2: "world"
};

const handler = {
  get(target, prop, receiver) {
    if (prop === "message2") {
      return "coded";
    }
    return Reflect.get(...arguments);
  }
};

const proxy = new Proxy(target, handler);

console.log(proxy.message1); // hello
console.log(proxy.message2); // coded
```

--------------------------------

### Get absolute value using Math.abs()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/abs

Use Math.abs() to get the absolute value of a number. This method is a static method of the Math object and does not require creating an instance of Math.

```javascript
console.log(Math.abs(-5));
// Expected output: 5

console.log(Math.abs(5));
// Expected output: 5

console.log(Math.abs(0));
// Expected output: 0

console.log(Math.abs(-0));
// Expected output: 0

console.log(Math.abs(null));
// Expected output: 0

console.log(Math.abs(""));
// Expected output: 0

console.log(Math.abs(25));
// Expected output: 25

console.log(Math.abs("-25"));
// Expected output: 25

console.log(Math.abs(Infinity));
// Expected output: Infinity

console.log(Math.abs(-Infinity));
// Expected output: Infinity

console.log(Math.abs(NaN));
// Expected output: NaN
```

--------------------------------

### Adding a script via the configuration object

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale/script

Demonstrates how to specify a script subtag using the configuration object argument in the Intl.Locale constructor.

```javascript
const locale = new Intl.Locale("en-US", { script: "Latn" });
console.log(locale.script); // Prints "Latn"
```

--------------------------------

### Helper function for array mutation examples

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array

A simple helper function to log array modifications during iteration. This is used across multiple examples to demonstrate the effects of mutating an array while iterating over it.

```javascript
function log(message) {
  console.log(message);
}
```

--------------------------------

### Boolean() Constructor and Function Usage

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean/Boolean

Demonstrates how to use the Boolean() constructor with and without the 'new' keyword, and explains the difference in return values.

```APIDOC
## Boolean() Constructor and Function

### Description
This section covers the usage of the `Boolean()` constructor and function in JavaScript.

### Method
Constructor/Function Call

### Endpoint
N/A (Built-in JavaScript object)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
// Called as a function (returns primitive boolean)
let primitiveFalse = Boolean(0);
let primitiveTrue = Boolean(1);

// Called as a constructor (returns Boolean object)
let objectFalse = new Boolean(false);
let objectTrue = new Boolean(true);
```

### Response
#### Success Response
- **Primitive Boolean**: `true` or `false` when called as a function.
- **Boolean Object**: A `Boolean` object wrapper when called with `new`.

#### Response Example
```javascript
// For Boolean() function:
console.log(typeof primitiveFalse); // "boolean"
console.log(primitiveFalse);      // false

// For new Boolean():
console.log(typeof objectFalse); // "object"
console.log(objectFalse);      // Boolean { false }
console.log(objectFalse.valueOf()); // false
```

### Description of Behavior
- When `Boolean()` is called as a function, it returns `value` coerced to a boolean primitive.
- When `Boolean()` is called as a constructor (with `new`), it returns a `Boolean` object wrapper.
- Values like `0`, `-0`, `0n`, `null`, `false`, `NaN`, `undefined`, and `""` coerce to `false`.
- All other values, including objects and `"false"`, coerce to `true`.
- Using `Boolean` as a constructor is generally discouraged.
```

--------------------------------

### Setting a property with bracket notation

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/eval

Demonstrates setting a property dynamically using bracket notation.

```javascript
function setDescendantProp(obj, desc, value) {
  const arr = desc.split(".");
  while (arr.length > 1) {
    obj = obj[arr.shift()];
  }
  obj[arr[0]] = value;
}

const obj = { a: { b: 42 } };
setDescendantProp(obj, "a.b", 43);
console.log(obj.a.b); // 43
```

--------------------------------

### Combine strings using concat()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/concat

This example demonstrates how to combine multiple strings into a new string using the concat() method. It shows the basic usage for string concatenation.

```javascript
const str1 = 'The quick brown fox jumps over the lazy dog.';
const str2 = ' All animals are equal.';

const newString = str1.concat(str2);

console.log(newString);
// Expected output: "The quick brown fox jumps over the lazy dog. All animals are equal."
```

--------------------------------

### Math.random() Usage

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random

Demonstrates the basic usage of Math.random() to get a pseudo-random number.

```APIDOC
## Math.random()

### Description
Returns a floating-point, pseudo-random number that's greater than or equal to 0 and less than 1.

### Method
Static method

### Parameters
None.

### Return value
A floating-point, pseudo-random number between 0 (inclusive) and 1 (exclusive).

### Request Example
```javascript
const randomNumber = Math.random();
console.log(randomNumber);
```

### Response Example
```json
{
  "example": "0.12345678901234567"
}
```
```

--------------------------------

### SyntaxError: nothing to repeat Examples

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Regex_nothing_to_repeat

These examples show different ways the "nothing to repeat" SyntaxError can manifest in JavaScript regular expressions, depending on the JavaScript engine and specific regex pattern.

```javascript
SyntaxError: Invalid regular expression: /\b+/ : Nothing to repeat (V8-based)
```

```javascript
SyntaxError: Invalid regular expression: /(?=)+/u: Invalid quantifier (V8-based)
```

```javascript
SyntaxError: nothing to repeat (Firefox)
```

```javascript
SyntaxError: invalid quantifier in regular expression (Firefox)
```

```javascript
SyntaxError: Invalid regular expression: nothing to repeat (Safari)
```

--------------------------------

### Basic Promise.all() example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/all

Demonstrates how Promise.all() waits for all promises to fulfill. Non-promise values in the iterable are ignored but included in the result array if the promise fulfills.

```javascript
const p1 = Promise.resolve(3), p2 = 42, p3 = new Promise((resolve, reject) => {
  setTimeout(resolve, 100, 'foo');
});

Promise.all([p1, p2, p3]).then((values) => {
  console.log(values);
});
// Expected output: Array [ 3, 42, "foo" ]
```

--------------------------------

### Using setUint32()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setUint32

This example demonstrates how to use the setUint32() method to write a 32-bit unsigned integer to an ArrayBuffer. It shows how to create an ArrayBuffer, a DataView, and then use setUint32() with different byte offsets and endianness.

```javascript
const buffer = new ArrayBuffer(16);
const view = new DataView(buffer);

// Write the number 123456789 to the buffer at byte offset 0, using big-endian format.
view.setUint32(0, 123456789); // no littleEndian argument === big-endian

// Write the number 123456789 to the buffer at byte offset 0, using little-endian format.
view.setUint32(0, 123456789, true); // true === little-endian

console.log(view.getUint32(0)); // 123456789
console.log(view.getUint32(0, true)); // 2018915345 (little-endian representation of 123456789)
```

--------------------------------

### Create Boolean objects with initial value true

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean/Boolean

Demonstrates creating Boolean objects with an initial value of true. This includes examples with various truthy values.

```javascript
const y = new Boolean(true);
const z = new Boolean(42);
const a = new Boolean('false');

console.log(y);
// Expected output:
// Boolean { true }

console.log(typeof y);
// Expected output:
// "object"

console.log(y.valueOf());
// Expected output:
// true

console.log(z);
// Expected output:
// Boolean { true }

console.log(typeof z);
// Expected output:
// "object"

console.log(z.valueOf());
// Expected output:
// true

console.log(a);
// Expected output:
// Boolean { true }

console.log(typeof a);
// Expected output:
// "object"

console.log(a.valueOf());
// Expected output:
// true
```

--------------------------------

### Invalid Regular Expression Examples

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Regex_negated_char_class_with_strings

These examples demonstrate invalid regular expressions where a negated character class in v-mode attempts to match strings. This is disallowed because negated classes are not intended to match sequences of characters.

```javascript
SyntaxError: Invalid regular expression: /[^[\p{RGI_Emoji_Flag_Sequence}\]]/v: Negated character class may contain strings (V8-based)
```

```javascript
SyntaxError: negated character class with strings in regular expression (Firefox)
```

```javascript
SyntaxError: Invalid regular expression: negated class set may contain strings (Safari)
```

--------------------------------

### Array Constructor and Static Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter

Documentation for the Array constructor and its static methods like from(), fromAsync(), isArray(), and of().

```APIDOC
## Array Constructor and Static Methods

### Description
Provides details on the `Array()` constructor and static methods available for creating and manipulating arrays.

### Methods
- `Array()`: Constructor for creating new Array objects.
- `Array.from(arrayLike[, mapFn[, thisArg]])`: Creates a new, shallow-copied Array instance from an array-like or iterable object.
- `Array.fromAsync(iterable[, mapFn[, thisArg]])`: Creates a new Array instance from an async iterable or array-like object.
- `Array.isArray(arg)`: Determines whether the passed value is an Array.
- `Array.of(element0[, element1[, ...[, elementN]]])`: Creates a new Array instance with a variable number of arguments, regardless of number or type of the arguments.

### Static Methods
#### `Array.from()`
- **Parameters**:
  - `arrayLike` (Iterable or Array-like object): To convert to an Array.
  - `mapFn` (Function, optional): Function to call for each element of the array.
  - `thisArg` (Object, optional): Value to use as `this` when executing `mapFn`.
- **Returns**: A new Array instance.

#### `Array.isArray()`
- **Parameters**:
  - `arg`: The value to test.
- **Returns**: `true` if the value is an Array; otherwise, `false`.

#### `Array.of()`
- **Parameters**:
  - `element0, ..., elementN`: Elements to create the array from.
- **Returns**: A new Array instance.
```

--------------------------------

### Create a resizable buffer and get its maxByteLength

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/maxByteLength

Creates an 8-byte buffer that can be resized up to 16 bytes and then retrieves its maxByteLength.

```javascript
const sab = new SharedArrayBuffer(8, { maxByteLength: 16 });
console.log(sab.maxByteLength); // 16
```

--------------------------------

### Equivalent to assignment as condition

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/if...else

This example shows the clearer, equivalent structure to using an assignment as a condition, emphasizing that the assignment happens once.

```javascript
x = y;
if (x) {
  // This code block will execute only once
}
```

--------------------------------

### Get timezone offset in minutes

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getTimezoneOffset

Use getTimezoneOffset() to get the difference in minutes between UTC and the local time zone. The result is positive if the local time zone is behind UTC, and negative if it's ahead.

```javascript
const date = new Date();
const offset = date.getTimezoneOffset();
console.log(`The timezone offset is: ${offset} minutes`);
```

--------------------------------

### Number Division Example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Division

Demonstrates division using standard number types. Other non-BigInt values are coerced to numbers before division.

```javascript
let a = 10;
let b = 3;
console.log(a / b); // Output: 3.3333333333333335
```

--------------------------------

### Get supported locales for relative time formatting

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/supportedLocalesOf

Use supportedLocalesOf() to get an array of locales supported by the runtime for relative time formatting. Specify the 'lookup' locale matcher to avoid 'best fit' behavior.

```javascript
const locales = ["en", "es", "zh"];
const options = {
  localeMatcher: "lookup",
};
console.log(Intl.RelativeTimeFormat.supportedLocalesOf(locales, options));
// Expected output: ["en", "es", "zh"] (if all are supported)
```

--------------------------------

### CSP directive for trusted types

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/eval

Example of a Content Security Policy header configuration.

```http
Content-Security-Policy: require-trusted-types-for 'script'; script-src 'self' 'trusted-types-eval';
```

--------------------------------

### Create a Date object

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date

Demonstrates various ways to instantiate a Date object. Be cautious when parsing date strings due to potential inconsistencies across browsers and environments.

```javascript
const today = new Date();
const birthday = new Date('December 17, 1995 03:24:00');
const birthday2 = new Date('1995-12-17T03:24:00'); // using an ISO format
const birthday3 = new Date(1995, 11, 17, 3, 24, 0);
const birthday4 = new Date(1995, 11, 17, 3, 24, 0, 998); // milliseconds are also supported
const birthday5 = Date.UTC(1995, 11, 17, 3, 24, 0);
const d1 = new Date('2022-01-01');
const d2 = new Date('2022-01-01T15:00:00Z');
```

--------------------------------

### Using keys() with various types

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/keys

Shows how keys() handles different data types as keys, including strings, numbers, and objects.

```javascript
const myMap = new Map();
myMap.set("0", "foo");
myMap.set(1, "bar");
myMap.set({}, "baz");

const mapIter = myMap.keys();

console.log(mapIter.next().value); // "0"
console.log(mapIter.next().value); // 1
console.log(mapIter.next().value); // {}
```

--------------------------------

### Using JSON.stringify() with localStorage

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/JSON/stringify

Example of storing a user-created object in localStorage by converting it to a JSON string.

```javascript
const session = {
  screens: [],
  state: true,
};
localStorage.setItem("session", JSON.stringify(session));
```

--------------------------------

### Get current time in ISO format

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Now/plainTimeISO

Use Temporal.Now.plainTimeISO() to get the current time in the specified time zone. The time zone can be provided as a string or a Temporal.ZonedDateTime instance. If not provided, the system's default time zone is used.

```javascript
const now = Temporal.Now.plainTimeISO();
console.log(now.toString()); // e.g., "14:30:00.123456789"
```

--------------------------------

### Temporal.Instant Static Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Instant

Provides static methods for comparing, creating, and converting Temporal.Instant objects.

```APIDOC
## Static methods

`Temporal.Instant.compare(instant1, instant2)`

Returns a number (-1, 0, or 1) indicating whether the first instant comes before, is the same as, or comes after the second instant. Equivalent to comparing the `epochNanoseconds` of the two instants.

`Temporal.Instant.from(value)`

Creates a new `Temporal.Instant` object from another `Temporal.Instant` object, or an RFC 9557 string.

`Temporal.Instant.fromEpochMilliseconds(milliseconds)`

Creates a new `Temporal.Instant` object from the number of milliseconds since the Unix epoch (midnight at the beginning of January 1, 1970, UTC).

`Temporal.Instant.fromEpochNanoseconds(nanoseconds)`

Creates a new `Temporal.Instant` object from the number of nanoseconds since the Unix epoch (midnight at the beginning of January 1, 1970, UTC).
```

--------------------------------

### Chaining Promises with Arrow Functions

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise

This example demonstrates chaining promises using arrow functions for callbacks. It shows a common pattern for handling asynchronous operations sequentially. Ensure all synchronous actions are within a single handler for optimal performance.

```javascript
let promiseA = new Promise((resolve, reject) => {
    resolve('A');
});

promiseA.then(resultA => {
    console.log("A resolved:", resultA);
    return 'B';
}).then(resultB => {
    console.log("B resolved:", resultB);
    return 'C';
}).then(resultC => {
    console.log("C resolved:", resultC);
}).catch(err => {
    console.error("Caught error:", err);
});
```

--------------------------------

### Equivalent parsed syntax for function call

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Lexical_grammar

The parsed interpretation of the previous ambiguous function call example.

```javascript
a = b(function() {})()
```

--------------------------------

### Get current date and time in ISO format

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Now/plainDateTimeISO

Use this method to get the current date and time as a Temporal.PlainDateTime object. The time zone can be specified as a string or a Temporal.ZonedDateTime instance. If not provided, the system's default time zone is used.

```javascript
const now = Temporal.Now.plainDateTimeISO();
console.log(now.toString()); // Example output: 2023-11-21T10:30:00
```

--------------------------------

### Using big()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/big

Demonstrates the legacy usage of the big() method to create an HTML string.

```javascript
const worldString = "Hello, world";
console.log(worldString.big());
// <big>Hello, world</big>
```

--------------------------------

### Object Instance Methods and Properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some

Reference for the instance methods and properties of Object objects, including hasOwnProperty() and valueOf().

```APIDOC
## Object Instance Methods and Properties

### Description
Details the instance methods and properties available on Object instances.

### Instance Methods
- `__defineGetter__(propertyName, getter)` (Deprecated)
- `__defineSetter__(propertyName, setter)` (Deprecated)
- `__lookupGetter__(propertyName)` (Deprecated)
- `__lookupSetter__(propertyName)` (Deprecated)
- `hasOwnProperty(prop)`
- `isPrototypeOf(V)`
- `propertyIsEnumerable(V)`
- `toLocaleString()`
- `toString()`
- `valueOf()`

### Instance Properties
- `__proto__` (Deprecated)
- `constructor

### Request Example
```json
{
  "example": "({ a: 1 }).hasOwnProperty('a')"
}
```

### Response Example
```json
{
  "example": "true"
}

```

--------------------------------

### Test for a match at the beginning of a string

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/test

This example tests if "hello" is contained at the very beginning of a string, returning a boolean result.

```javascript
const str = "Hello world!";
const regex = /^Hello/;

if (regex.test(str)) {
  console.log("The string starts with Hello");
} else {
  console.log("The string does not start with Hello");
}
// Expected output: The string starts with Hello
```

--------------------------------

### Define a setter on an existing object

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/set

This example demonstrates how to append a setter to an existing object using `Object.defineProperty()`.

```javascript
const obj = {};
let value;

Object.defineProperty(obj, 'prop', {
  set(val) {
    value = val;
  }
});

obj.prop = 10;
console.log(value); // 10
```

--------------------------------

### Function Constructor and Static Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/create

Details the Function constructor and its static methods like apply, bind, and call.

```APIDOC
## Function Constructor and Static Methods

### Description
Represents the built-in Function object and its static methods.

### Method
Constructor and Static Methods

### Endpoint
N/A (Built-in Function Methods)

#### Static Methods
- **`Function.apply()`**
- **`Function.bind()`**
- **`Function.call()`**
- **`Function.toString()`**
- **`Function[Symbol.hasInstance]()`**

#### Static Properties
- **`Function.displayName`** Non-standard
- **`Function.length`**
- **`Function.name`**
- **`Function.prototype`**
- **`Function.arguments`** Non-standard Deprecated
- **`Function.caller`** Non-standard Deprecated
```

--------------------------------

### Symbol Constructor and Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol/unscopables

Documentation for the Symbol built-in object, including its constructor, static methods, static properties, instance methods, and instance properties.

```APIDOC
## Symbol()

### Description
Constructor for the Symbol object.

### Method
`Symbol()`

### Endpoint
N/A (Built-in Object)

### Parameters
None

### Request Body
None

### Response
#### Success Response (200)
- **Symbol** (object) - A new Symbol value.

### Response Example
```json
{
  "example": "Symbol()"
}
```

## Symbol.for()

### Description
Creates or retrieves a global symbol from a given key.

### Method
`Symbol.for(key)`

### Endpoint
N/A (Built-in Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```json
{
  "example": "Symbol.for('mySymbol')"
}
```

### Response
#### Success Response (200)
- **Symbol** (object) - The symbol associated with the key.

#### Response Example
```json
{
  "example": "Symbol(mySymbol)"
}
```

## Symbol.keyFor()

### Description
Returns the key of the global symbol registry that matches the given symbol.

### Method
`Symbol.keyFor(sym)`

### Endpoint
N/A (Built-in Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```json
{
  "example": "Symbol.keyFor(Symbol.for('mySymbol'))"
}
```

### Response
#### Success Response (200)
- **string** - The key of the global symbol.

#### Response Example
```json
{
  "example": "mySymbol"
}
```

## Symbol.asyncDispose

### Description
A string representing the method that should be called for asynchronous disposal.

### Method
`Symbol.asyncDispose`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The asyncDispose symbol.

## Symbol.asyncIterator

### Description
A string representing the method that returns the default async iterator for an object.

### Method
`Symbol.asyncIterator`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The asyncIterator symbol.

## Symbol.dispose

### Description
A string representing the method that should be called for synchronous disposal.

### Method
`Symbol.dispose`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The dispose symbol.

## Symbol.hasInstance

### Description
A string representing the method that determines if a constructor would recognize an object as an instance of itself.

### Method
`Symbol.hasInstance`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The hasInstance symbol.

## Symbol.isConcatSpreadable

### Description
A string representing a boolean value indicating whether an object should be flattened to its array equivalent, with `concat()`.

### Method
`Symbol.isConcatSpreadable`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The isConcatSpreadable symbol.

## Symbol.iterator

### Description
A string representing the method that returns the default iterator for an object.

### Method
`Symbol.iterator`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The iterator symbol.

## Symbol.match

### Description
A string representing the method that matches a string against a regular expression.

### Method
`Symbol.match`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The match symbol.

## Symbol.matchAll

### Description
A string representing the method that returns an iterator of all results matching a string against a regular expression.

### Method
`Symbol.matchAll`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The matchAll symbol.

## Symbol.replace

### Description
A string representing the method that replaces matches of a string against a regular expression.

### Method
`Symbol.replace`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The replace symbol.

## Symbol.search

### Description
A string representing the method that executes a search for a match between a regular expression and this String object.

### Method
`Symbol.search`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The search symbol.

## Symbol.species

### Description
A string representing the constructor used to create derived objects.

### Method
`Symbol.species`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The species symbol.

## Symbol.split

### Description
A string representing the method that splits a String object into an array of substrings by separating the string into substrings, using a specified separator string.

### Method
`Symbol.split`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The split symbol.

## Symbol.toPrimitive

### Description
A string representing the method that converts an object to the primitive value for that object.

### Method
`Symbol.toPrimitive`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The toPrimitive symbol.

## Symbol.toStringTag

### Description
A string representing the default string description of an object. Used with `Object.prototype.toString()`.

### Method
`Symbol.toStringTag`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The toStringTag symbol.

## Symbol.unscopables

### Description
A string representing an object whose own and inherited property indices are excluded from the `with` statement.

### Method
`Symbol.unscopables`

### Endpoint
N/A (Built-in Property)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The unscopables symbol.

## Symbol.prototype.toString()

### Description
Returns a string representing the given Symbol value.

### Method
`symbol.toString()`

### Endpoint
N/A (Instance Method)

### Parameters
None

### Response
#### Success Response (200)
- **string** - A string representing the Symbol value.

#### Response Example
```json
{
  "example": "Symbol(description)"
}
```

## Symbol.prototype.valueOf()

### Description
Returns the primitive value of a Symbol object.

### Method
`symbol.valueOf()`

### Endpoint
N/A (Instance Method)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The primitive value of the Symbol object.

#### Response Example
```json
{
  "example": "Symbol(description)"
}
```

## Symbol.prototype[Symbol.toPrimitive]()

### Description
Converts the Symbol object to its primitive value.

### Method
`symbol[Symbol.toPrimitive]()`

### Endpoint
N/A (Instance Method)

### Parameters
None

### Response
#### Success Response (200)
- **symbol** (symbol) - The primitive value of the Symbol object.

#### Response Example
```json
{
  "example": "Symbol(description)"
}
```

## Symbol.prototype.description

### Description
Returns a string containing the description of the Symbol.

### Method
`symbol.description`

### Endpoint
N/A (Instance Property)

### Parameters
None

### Response
#### Success Response (200)
- **string** - The description of the Symbol.

#### Response Example
```json
{
  "example": "mySymbolDescription"
}
```
```

--------------------------------

### Convert AND to OR in JavaScript

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Logical_OR

This example demonstrates the conversion of a logical AND operation to an equivalent logical OR operation involving booleans.

```javascript
let a = true;
let b = false;

// Equivalent to: a || b
let result = !(!a || !b);
```

--------------------------------

### Use default locale

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl

Demonstrates using the implementation's default locale by passing a syntactically valid but unrecognized string.

```javascript
new Intl.DateTimeFormat("default")
```

--------------------------------

### GET Temporal.ZonedDateTime.prototype.year

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/year

Retrieves the year component from a Temporal.ZonedDateTime instance.

```APIDOC
## GET Temporal.ZonedDateTime.prototype.year

### Description
The `year` accessor property returns an integer representing the number of years of the date relative to the start of a calendar-specific epoch year. This property is calendar-dependent and read-only.

### Method
GET

### Endpoint
Temporal.ZonedDateTime.prototype.year

### Response
#### Success Response (200)
- **year** (integer) - The year value relative to the calendar epoch.
```

--------------------------------

### Convert OR to AND in JavaScript

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Logical_OR

This example demonstrates the conversion of a logical OR operation to an equivalent logical AND operation involving booleans.

```javascript
let a = true;
let b = false;

// Equivalent to: a && b
let result = !(!a || !b);
```

--------------------------------

### Demonstrate floating point precision loss

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/sumPrecise

Example showing how naive summation in a loop can lead to precision loss compared to expected mathematical results.

```javascript
let sum = 0;
for (const n of [1e20, 0.1, -1e20]) {
  sum += n;
}
console.log(sum); // 0
```

--------------------------------

### Using dayPeriod Option

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat/DateTimeFormat

Shows how to use the `dayPeriod` option for formatting times of day, typically with a 12-hour clock.

```APIDOC
## Using dayPeriod Option

### Description
Use the `dayPeriod` option to output a string for the times of day (e.g., "in the morning", "at night", "noon"). This option is effective when formatting for a 12-hour clock (`hourCycle: 'h12'` or `hourCycle: 'h11'`).

### Example Usage
```javascript
const options = {
  hour: 'numeric',
  minute: 'numeric',
  hourCycle: 'h12',
  dayPeriod: 'long'
};
const formatter = new Intl.DateTimeFormat('en-US', options);
const noon = new Date(2023, 10, 26, 12, 0, 0);
const evening = new Date(2023, 10, 26, 18, 30, 0);

console.log(formatter.format(noon));    // Example output: 12:00 PM
console.log(formatter.format(evening)); // Example output: 6:30 in the evening
```

### Note
For many locales, the strings for `dayPeriod` may be the same irrespective of the value passed.
```

--------------------------------

### GET Temporal.ZonedDateTime.prototype.millisecond

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/millisecond

Retrieves the millisecond component of a ZonedDateTime object.

```APIDOC
## GET Temporal.ZonedDateTime.prototype.millisecond

### Description
The millisecond accessor property returns an integer from 0 to 999 representing the millisecond component of the Temporal.ZonedDateTime instance.

### Method
GET

### Response
#### Success Response (200)
- **millisecond** (integer) - An integer from 0 to 999 representing the millisecond component.
```

--------------------------------

### GET Temporal.ZonedDateTime.prototype.microsecond

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/microsecond

Retrieves the microsecond component of a ZonedDateTime instance.

```APIDOC
## GET Temporal.ZonedDateTime.prototype.microsecond

### Description
The microsecond accessor property returns an integer from 0 to 999 representing the microsecond (10-6 second) component of the Temporal.ZonedDateTime instance.

### Response
- **microsecond** (integer) - The microsecond component of the time, ranging from 0 to 999.
```

--------------------------------

### GET Temporal.ZonedDateTime.prototype.era

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/era

Accesses the era property of a Temporal.ZonedDateTime instance.

```APIDOC
## GET Temporal.ZonedDateTime.prototype.era

### Description
Returns a calendar-specific lowercase string representing the era of the date, or undefined if the calendar does not use eras.

### Method
GET (Accessor Property)

### Response
- **era** (string | undefined) - The era name or undefined if not applicable.
```

--------------------------------

### Using fill() to create a matrix of all 1

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/fill

Demonstrates creating a 2D array filled with ones.

```javascript
const matrix = [1, 2, 3].map(() => Array(3).fill(1));
console.log(matrix);
// [
//   [1, 1, 1],
//   [1, 1, 1],
//   [1, 1, 1]
// ]
```

--------------------------------

### JavaScriptCore Stack Trace with eval/anonymous

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/stack

Example of a stack trace format from JavaScriptCore including eval and anonymous function calls.

```javascript
anonymous@
global code@filename.js:1:65
====
eval code@
eval@[native code]
global code@filename.js:3:17
```

--------------------------------

### Encoding a surrogate pair

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Malformed_URI

This example demonstrates encoding a valid high-low surrogate pair, which should not throw a URIError.

```javascript
const str = "\uD800\uDC00";
encodeURI(str);
// No error is thrown.
```

--------------------------------

### GET Temporal.PlainTime.prototype.nanosecond

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainTime/nanosecond

Retrieves the nanosecond component of a Temporal.PlainTime instance.

```APIDOC
## GET Temporal.PlainTime.prototype.nanosecond

### Description
The nanosecond accessor property returns an integer from 0 to 999 representing the nanosecond component of the Temporal.PlainTime instance.

### Method
GET

### Response
#### Success Response (200)
- **nanosecond** (integer) - An integer from 0 to 999 representing the nanosecond component.
```

--------------------------------

### Temporal.PlainTime Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainTime

A collection of instance methods for the Temporal.PlainTime object, covering arithmetic, comparison, and conversion operations.

```APIDOC
## Temporal.PlainTime.prototype.add()

### Description
Returns a new Temporal.PlainTime object representing this time moved forward by a given duration, wrapping around the clock if necessary.

## Temporal.PlainTime.prototype.equals()

### Description
Returns true if this time is equivalent in value to another time, and false otherwise.

## Temporal.PlainTime.prototype.round()

### Description
Returns a new Temporal.PlainTime object representing this time rounded to the given unit.

## Temporal.PlainTime.prototype.since()

### Description
Returns a new Temporal.Duration object representing the duration from another time to this time.

## Temporal.PlainTime.prototype.subtract()

### Description
Returns a new Temporal.PlainTime object representing this time moved backward by a given duration, wrapping around the clock if necessary.

## Temporal.PlainTime.prototype.toJSON()

### Description
Returns a string representing this time in RFC 9557 format, intended for JSON.stringify().

## Temporal.PlainTime.prototype.toString()

### Description
Returns a string representing this time in the RFC 9557 format.

## Temporal.PlainTime.prototype.until()

### Description
Returns a new Temporal.Duration object representing the duration from this time to another time.

## Temporal.PlainTime.prototype.with()

### Description
Returns a new Temporal.PlainTime object representing this time with some fields replaced by new values.
```

--------------------------------

### Dynamically create a function with arguments

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/Function

This example demonstrates creating a function dynamically using the Function constructor. The arguments passed to the constructor, except the last one, define the parameter names. The last argument is the function body. This function executes in the global scope.

```javascript
const sum = new Function('a', 'b', 'return a + b;');
console.log(sum(2, 3)); // 5
```

--------------------------------

### GET Temporal.PlainDateTime.prototype.year

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDateTime/year

Retrieves the year component from a Temporal.PlainDateTime instance.

```APIDOC
## GET Temporal.PlainDateTime.prototype.year

### Description
The year accessor property returns an integer representing the number of years of this date relative to the start of a calendar-specific epoch year. It is calendar-dependent and read-only.

### Method
GET

### Response
- **year** (integer) - The year component of the date-time instance.
```

--------------------------------

### Node.js experimental import.meta.resolve() with parent parameter

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/import.meta/resolve

This example shows how to use import.meta.resolve() in Node.js with the --experimental-import-meta-resolve flag. It includes an additional 'parent' parameter, which is the URL of the parent module.

```javascript
// Requires --experimental-import-meta-resolve flag
const resolvedPath = import.meta.resolve("./lib/helper.js", import.meta.url);
console.log(resolvedPath);
```

--------------------------------

### Using Reflect.getOwnPropertyDescriptor()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect/getOwnPropertyDescriptor

Demonstrates how to use Reflect.getOwnPropertyDescriptor() to retrieve property values and check property attributes like writability. It also shows how it returns undefined for non-existent properties.

```javascript
const object = {
  property1: 42,
};

console.log(Reflect.getOwnPropertyDescriptor(object, "property1").value);
// Expected output: 42

console.log(Reflect.getOwnPropertyDescriptor(object, "property2"));
// Expected output: undefined

console.log(Reflect.getOwnPropertyDescriptor(object, "property1").writable);
// Expected output: true

```

--------------------------------

### GET Temporal.PlainDateTime.prototype.nanosecond

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDateTime/nanosecond

Retrieves the nanosecond component of a Temporal.PlainDateTime instance.

```APIDOC
## GET Temporal.PlainDateTime.prototype.nanosecond

### Description
The nanosecond accessor property returns an integer from 0 to 999 representing the nanosecond (10-9 second) component of the Temporal.PlainDateTime instance.

### Method
GET

### Response
- **nanosecond** (integer) - An integer from 0 to 999 representing the nanosecond component.
```

--------------------------------

### GET Temporal.PlainDateTime.prototype.millisecond

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDateTime/millisecond

Retrieves the millisecond component of a Temporal.PlainDateTime object.

```APIDOC
## GET Temporal.PlainDateTime.prototype.millisecond

### Description
The millisecond accessor property returns an integer from 0 to 999 representing the millisecond (10^-3 second) component of the Temporal.PlainDateTime instance.

### Method
GET (Accessor Property)

### Response
- **millisecond** (integer) - An integer between 0 and 999 representing the millisecond component.
```

--------------------------------

### Object Instance Methods and Properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toLocaleTimeString

Reference for the instance methods and properties of the Object object.

```APIDOC
## Object Instance Members

### Instance Methods
#### `__defineGetter__(propertyName, getter)` Deprecated
Associates a function with the property that gets its value.

#### `__defineSetter__(propertyName, setter)` Deprecated
Associates a function with the property that sets its value.

#### `__lookupGetter__(propertyName)` Deprecated
Returns the getter function associated with the specified property.

#### `__lookupSetter__(propertyName)` Deprecated
Returns the setter function associated with the specified property.

#### `hasOwnProperty(prop)`
Returns a boolean indicating whether the object has the specified property as its own property.

#### `isPrototypeOf(V)`
Returns a boolean indicating whether the specified value is in the prototype chain of the object.

#### `propertyIsEnumerable(V)`
Returns a boolean indicating whether the specified property is her own and enumerable.

#### `toLocaleString()`
Returns a string representing the object. Overrides the `Object.prototype.toString()` method.

#### `toString()`
Returns a string representing the object. Overrides the `Object.prototype.toString()` method.

#### `valueOf()`
Returns the primitive value of the specified object.

### Instance Properties
#### `__proto__` Deprecated
A deprecated property that returns the prototype of the object.

#### `constructor`
Specifies the function that creates an object's prototype.

```

--------------------------------

### Instantiate Intl.DisplayNames and use of()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DisplayNames/of

Instantiate Intl.DisplayNames with desired locale, type, and options, then use the of() method to get the display name for a given code. Ensure the code is valid for the specified type.

```javascript
const options = {
  locale: "en",
  type: "region",
  style: "long",
  fallback: "none",
};
const displayNames = new Intl.DisplayNames(options);

console.log(displayNames.of("US")); // "United States"
console.log(displayNames.of("FR")); // "France"
console.log(displayNames.of("ZZ")); // undefined (fallback: "none")
```

--------------------------------

### Example: Calling `super()` in a constructor bound to a different prototype

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes/constructor

Illustrates how `super()` behaves when the prototype of the current class is modified.

```APIDOC
## Example: Calling `super()` with a Modified Prototype

```javascript
class Parent {
  constructor() {
    console.log('Parent constructor called');
  }
}

class Child extends Parent {
  constructor() {
    // If Parent.prototype is changed before super(), super() calls the constructor of the new prototype.
    // Object.setPrototypeOf(this, SomeOtherPrototype);
    super(); // Calls Parent's constructor
    console.log('Child constructor called');
  }
}

const childInstance = new Child();
// Output:
// Parent constructor called
// Child constructor called
```

**Note:** `super()` calls the constructor that is the prototype of the current class. If the prototype is changed, `super()` will call the constructor of the new prototype. Changing the `prototype` property of the current class itself does not affect which constructor `super()` calls.
```

--------------------------------

### GET Temporal.PlainDateTime.prototype.era

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDateTime/era

Retrieves the era string for a Temporal.PlainDateTime instance.

```APIDOC
## GET Temporal.PlainDateTime.prototype.era

### Description
The era accessor property returns a calendar-specific lowercase string representing the era of the date. It returns undefined if the calendar does not use eras (e.g., ISO 8601).

### Method
GET

### Endpoint
Temporal.PlainDateTime.prototype.era

### Response
- **era** (string | undefined) - The era string or undefined if not applicable.
```

--------------------------------

### Object/Function Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce

Reference for instance methods available on Object and Function instances.

```APIDOC
## Object/Function Instance Methods

### Description
Provides instance methods for Object and Function manipulation.

### Methods
- `__defineGetter__()` (Deprecated)
- `__defineSetter__()` (Deprecated)
- `__lookupGetter__()` (Deprecated)
- `__lookupSetter__()` (Deprecated)
- `hasOwnProperty()`
- `isPrototypeOf()`
- `propertyIsEnumerable()`
- `toLocaleString()`
- `toString()`
- `valueOf()`

### Instance Properties
- `__proto__` (Deprecated)
- `constructor`
```

--------------------------------

### GET Temporal.Duration.prototype.milliseconds

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Duration/milliseconds

Access the milliseconds component of a Temporal.Duration object.

```APIDOC
## GET Temporal.Duration.prototype.milliseconds

### Description
The milliseconds accessor property of Temporal.Duration instances returns an integer representing the number of milliseconds in the duration. If the duration is balanced to a unit above milliseconds, the absolute value will be between 0 and 999.

### Method
GET

### Response
- **milliseconds** (integer) - The number of milliseconds in the duration.
```

--------------------------------

### V8 Stack Trace with eval/anonymous

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/stack

Example of a stack trace format from V8 including eval and anonymous function calls.

```javascript
Error: Function failed
    at eval (eval at <anonymous> (filename.js:1:13), <anonymous>:1:8)
    at filename.js:1:65
====
Error: eval failed
    at eval (eval at <anonymous> (filename.js:3:13), <anonymous>:1:1)
    at filename.js:3:13
```

--------------------------------

### GET Temporal.Duration.prototype.hours

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Duration/hours

Accesses the hours component of a Temporal.Duration object.

```APIDOC
## GET Temporal.Duration.prototype.hours

### Description
The `hours` accessor property of `Temporal.Duration` instances returns an integer representing the number of hours in the duration. If the duration is balanced to a unit above hours, the absolute value will be between 0 and 23.

### Method
GET

### Parameters
None. This is a read-only property accessor.

### Response
- **hours** (integer) - The number of hours in the duration.
```

--------------------------------

### GET Intl.Locale.prototype.variants

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale/variants

Accesses the variants associated with an Intl.Locale instance.

```APIDOC
## GET Intl.Locale.prototype.variants

### Description
The `variants` accessor property returns the variants associated with an `Intl.Locale` instance as a string of dash-separated identifiers.

### Method
GET

### Endpoint
Intl.Locale.prototype.variants

### Response
#### Success Response (200)
- **variants** (string) - A string of dash-separated identifiers representing the locale variants, or `undefined` if no variants are specified.
```

--------------------------------

### String Constructor and Static Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/lastIndexOf

Details about the String constructor and its static methods like fromCharCode, fromCodePoint, and raw.

```APIDOC
## String Constructor

### Description
Creates a String object or primitive.

### Method
`String()`

### Endpoint
N/A (Built-in Object)

## String Static Methods

### Description
Provides static methods for String objects.

### Method
`String.fromCharCode(num1[, ...[, numN]])`

### Description
Returns a string created by using the specified sequence of Unicode values.

### Method
`String.fromCodePoint(num1[, ...[, numN]])`

### Description
Returns a string created by using the specified sequence of UTF-16 code units.

### Method
`String.raw(template, ...substitutions)`

### Description
Provides a tagged template literal that allows for easier creation of raw string literals.
```

--------------------------------

### GET Intl.Locale.prototype.collation

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale/collation

Accesses the collation type of an Intl.Locale instance.

```APIDOC
## GET Intl.Locale.prototype.collation

### Description
The `collation` accessor property returns the collation type for the locale, which determines how strings are ordered. This property is read-only.

### Method
GET

### Response
- **value** (string|undefined) - The collation type string, or undefined if not set.
```

--------------------------------

### Get maximum of an array using apply

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/max

This function uses Function.prototype.apply() to get the maximum of an array. It's equivalent to Math.max(1, 2, 3) but can be used on programmatically constructed arrays. This should only be used for arrays with relatively few elements due to potential stack overflow issues.

```javascript
function getMaxOfArray(numArray) {
  return Math.max.apply(null, numArray);
}
```

--------------------------------

### Using options

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/localeCompare

Customizing comparison behavior using the options argument.

```javascript
// In German, ä sorts with a
console.log("ä".localeCompare("a", "de", { sensitivity: "base" })); // 0
```

--------------------------------

### Expression Substitutability Examples

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_precedence

Illustrates how optional chaining, member expressions, call expressions, and import() expressions can be substituted for each other in various contexts. This helps understand the flexibility and interchangeability of these syntactical constructs.

```javascript
a?.b
a.b
```

```javascript
a?.()
a()
```

```javascript
new a().b
new a.b
```

```javascript
a().b
a.b()
```

```javascript
new a()
new a
```

```javascript
new a().b
new a.b
```

```javascript
a().b
a.b()
```

```javascript
new a()
new a
```

```javascript
new a.b()
new a()
```

```javascript
a.b()
a().b()
```

```javascript
new a.b
new new a()
```

```javascript
new new a()
new new a
```

--------------------------------

### Class with multiple static initialization blocks and fields

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes/Static_initialization_blocks

Demonstrates a class with interleaved static field initializers and static initialization blocks. Initialization order is shown by the output.

```javascript
class MyClass {
  static staticField1 = (() => {
    console.log('staticField1 initialized');
    return 1;
  })();

  static #privateStaticField = (() => {
    console.log('privateStaticField initialized');
    return 2;
  })();

  static staticField2 = (() => {
    console.log('staticField2 initialized');
    return 3;
  })();

  static {
    console.log('Static block 1 executed');
    console.log(this.staticField1);
    console.log(this.staticField2);
    console.log(this.#privateStaticField);
  }

  static staticField3 = (() => {
    console.log('staticField3 initialized');
    return 4;
  })();

  static {
    console.log('Static block 2 executed');
    console.log(this.staticField3);
  }
}

// Output:
// staticField1 initialized
// privateStaticField initialized
// staticField2 initialized
// Static block 1 executed
// 1
// 3
// 2
// staticField3 initialized
// Static block 2 executed
// 4
```

--------------------------------

### Error.captureStackTrace()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/captureStackTrace

The Error.captureStackTrace() method installs stack trace information on a provided object as the stack property.

```APIDOC
## Error.captureStackTrace(object, constructor)

### Description
The Error.captureStackTrace() static method installs stack trace information on a provided object as the stack property. This is typically used to hide implementation details from stack traces in custom error objects.

### Parameters
#### Path Parameters
- **object** (Object) - Required - The object on which to add the stack property.
- **constructor** (Function) - Optional - A function, typically the constructor where the object was created. When collecting the stack trace, all frames above the topmost call to this function are left out.

### Response
- **None** (undefined) - The object is modified in-place with an extra own property called stack.
```

--------------------------------

### Using arguments.length

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments/length

This example defines a function that sums two or more numbers using the arguments.length property to determine the number of arguments provided.

```javascript
function sum() {
  let total = 0;
  for (let i = 0; i < arguments.length; i++) {
    total += arguments[i];
  }
  return total;
}

console.log(sum(1, 2, 3)); // 6
console.log(sum(1, 2, 3, 4, 5)); // 15
```

--------------------------------

### Using fixed()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/fixed

This example demonstrates how to use the deprecated fixed() method to create an HTML string. It's important to note that this method and the <tt> tag are deprecated and should not be used in modern web development.

```javascript
const str = "Hello world!";
document.body.innerHTML = str.fixed();
```

--------------------------------

### Using adopt() with a Node.js FileHandle

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/AsyncDisposableStack/adopt

This example demonstrates using adopt() to register a Node.js FileHandle with an AsyncDisposableStack. It ensures the file handle is closed asynchronously when the stack is disposed, even though FileHandle itself might not implement the async disposable protocol.

```javascript
async function example(stack) {
  const handle = await fs.open("my-file.txt", "w");
  stack.adopt(handle, async (h) => {
    await h.close();
  });
  // ... use handle ...
}

```

--------------------------------

### JavaScript String Constructor and Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/match

Details on the String constructor, its static methods like fromCharCode, fromCodePoint, and raw, and its instance methods such as at, charAt, concat, endsWith, includes, indexOf, lastIndexOf, localeCompare, match, matchAll, normalize, padEnd, padStart, repeat, replace, replaceAll, search, slice, split, startsWith, toLocaleLowerCase, toLocaleUpperCase, toLowerCase, toString, toUpperCase, toWellFormed, trim, trimEnd, trimStart, valueOf, and [Symbol.iterator].

```APIDOC
## String Constructor

### Description
Represents a sequence of characters.

### Method
Constructor

### Endpoint
N/A (Built-in Object)

### Parameters
None

### Request Example
N/A

### Response
N/A

## String Static Methods

### Description
Methods available directly on the String constructor.

### Method
Static

### Endpoint
N/A (Built-in Object)

### Parameters
- `fromCharCode()` (See MDN documentation for specific parameters)
- `fromCodePoint()` (See MDN documentation for specific parameters)
- `raw()` (See MDN documentation for specific parameters)

### Request Example
N/A

### Response
N/A

## String Instance Methods

### Description
Methods available on String instances.

### Method
Instance

### Endpoint
N/A (Built-in Object)

### Parameters
- `anchor()` (Deprecated) (See MDN documentation for specific parameters)
- `at()` (See MDN documentation for specific parameters)
- `big()` (Deprecated) (See MDN documentation for specific parameters)
- `blink()` (Deprecated) (See MDN documentation for specific parameters)
- `bold()` (Deprecated) (See MDN documentation for specific parameters)
- `charAt()` (See MDN documentation for specific parameters)
- `charCodeAt()` (See MDN documentation for specific parameters)
- `codePointAt()` (See MDN documentation for specific parameters)
- `concat()` (See MDN documentation for specific parameters)
- `endsWith()` (See MDN documentation for specific parameters)
- `fixed()` (Deprecated) (See MDN documentation for specific parameters)
- `fontcolor()` (Deprecated) (See MDN documentation for specific parameters)
- `fontsize()` (Deprecated) (See MDN documentation for specific parameters)
- `includes()` (See MDN documentation for specific parameters)
- `indexOf()` (See MDN documentation for specific parameters)
- `isWellFormed()` (See MDN documentation for specific parameters)
- `italics()` (Deprecated) (See MDN documentation for specific parameters)
- `lastIndexOf()` (See MDN documentation for specific parameters)
- `link()` (Deprecated) (See MDN documentation for specific parameters)
- `localeCompare()` (See MDN documentation for specific parameters)
- `match()` (See MDN documentation for specific parameters)
- `matchAll()` (See MDN documentation for specific parameters)
- `normalize()` (See MDN documentation for specific parameters)
- `padEnd()` (See MDN documentation for specific parameters)
- `padStart()` (See MDN documentation for specific parameters)
- `repeat()` (See MDN documentation for specific parameters)
- `replace()` (See MDN documentation for specific parameters)
- `replaceAll()` (See MDN documentation for specific parameters)
- `search()` (See MDN documentation for specific parameters)
- `slice()` (See MDN documentation for specific parameters)
- `small()` (Deprecated) (See MDN documentation for specific parameters)
- `split()` (See MDN documentation for specific parameters)
- `startsWith()` (See MDN documentation for specific parameters)
- `strike()` (Deprecated) (See MDN documentation for specific parameters)
- `sub()` (Deprecated) (See MDN documentation for specific parameters)
- `substr()` (Deprecated) (See MDN documentation for specific parameters)
- `substring()` (See MDN documentation for specific parameters)
- `sup()` (Deprecated) (See MDN documentation for specific parameters)
- `toLocaleLowerCase()` (See MDN documentation for specific parameters)
- `toLocaleUpperCase()` (See MDN documentation for specific parameters)
- `toLowerCase()` (See MDN documentation for specific parameters)
- `toString()` (See MDN documentation for specific parameters)
- `toUpperCase()` (See MDN documentation for specific parameters)
- `toWellFormed()` (See MDN documentation for specific parameters)
- `trim()` (See MDN documentation for specific parameters)
- `trimEnd()` (See MDN documentation for specific parameters)
- `trimStart()` (See MDN documentation for specific parameters)
- `valueOf()` (See MDN documentation for specific parameters)
- `[Symbol.iterator]()` (See MDN documentation for specific parameters)

### Request Example
N/A

### Response
N/A

## String Instance Properties

### Description
Properties available on String instances.

### Method
Instance

### Endpoint
N/A (Built-in Object)

### Parameters
- `length` (number) - The length of the string.

### Request Example
N/A

### Response
N/A
```

--------------------------------

### GET Temporal.ZonedDateTime.prototype.eraYear

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/eraYear

Retrieves the era year for a given Temporal.ZonedDateTime instance.

```APIDOC
## GET Temporal.ZonedDateTime.prototype.eraYear

### Description
Returns a non-negative integer representing the year of this date within the era, or undefined if the calendar does not use eras (e.g., ISO 8601). This property is read-only.

### Method
GET

### Endpoint
Temporal.ZonedDateTime.prototype.eraYear

### Response
#### Success Response (200)
- **eraYear** (integer | undefined) - The year of the date within the era, or undefined if not applicable.
```

--------------------------------

### Using Options with toLocaleString()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/toLocaleString

Illustrates customizing the output format of toLocaleString() using the 'options' parameter. This allows for fine-grained control over currency, units, significant digits, and more.

```javascript
const number = 123456.789;

console.log(number.toLocaleString('en-US', {
  style: 'currency',
  currency: 'USD'
}));
// Expected output: "$123,456.79"

console.log(number.toLocaleString('en-US', {
  style: 'percent',
  minimumFractionDigits: 2,
  maximumFractionDigits: 2
}));
// Expected output: "12,345,679%"

console.log(number.toLocaleString('en-US', {
  style: 'unit',
  unit: 'kilometer-per-hour',
  unitDisplay: 'long'
}));
// Expected output: "123,456.789 kilometers per hour"

console.log(number.toLocaleString('en-US', {
  notation: 'scientific',
  minimumFractionDigits: 2
}));
// Expected output: "1.235E+5"
```

--------------------------------

### GET Temporal.PlainYearMonth.prototype.monthCode

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainYearMonth/monthCode

Retrieves the calendar-specific month code for a PlainYearMonth instance.

```APIDOC
## GET Temporal.PlainYearMonth.prototype.monthCode

### Description
The `monthCode` accessor property returns a calendar-specific string representing the month of the `Temporal.PlainYearMonth` instance. It is calendar-dependent and read-only.

### Method
GET

### Response
- **monthCode** (string) - A string representing the month (e.g., 'M01', 'M05L' for leap months).
```

--------------------------------

### Using bold()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/bold

Demonstrates the deprecated usage of bold() to create an HTML string.

```javascript
const contentString = "Hello, world";
document.body.innerHTML = contentString.bold();
```

--------------------------------

### Using Atomics.exchange()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Atomics/exchange

This example demonstrates how to use Atomics.exchange() to swap a value in a SharedArrayBuffer. Note that SharedArrayBuffer requires specific security contexts to be defined and cannot be run directly in all environments.

```javascript
const buffer = new SharedArrayBuffer(1024);
const i32a = new Int32Array(buffer);

Atomics.store(i32a, 0, 5); // Store 5 at index 0

console.log(Atomics.exchange(i32a, 0, 10)); // Exchange 10 for 5, returns 5
console.log(Atomics.load(i32a, 0)); // Loads 10 from index 0
```

--------------------------------

### GET ArrayBuffer.prototype.resizable

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/resizable

Returns a boolean indicating if the ArrayBuffer instance is resizable.

```APIDOC
## GET ArrayBuffer.prototype.resizable

### Description
The `resizable` property returns `true` if the `ArrayBuffer` was constructed with a `maxByteLength` option, and `false` otherwise. It is a read-only property.

### Method
GET

### Response
#### Success Response (200)
- **resizable** (boolean) - Returns true if the buffer is resizable, false otherwise.

### Response Example
{
  "resizable": true
}
```

--------------------------------

### Create a Float32Array using of()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray/of

This example shows how to create a Float32Array using the TypedArray.of() method with floating-point numbers.

```javascript
const float32 = Float32Array.of(1.5, 2.5, 3.5);
console.log(float32);
// Expected output: Float32Array(3) [ 1.5, 2.5, 3.5 ]
```

--------------------------------

### Function name property example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/name

Demonstrates how the `name` property reflects the function's name. Be cautious as compressors might alter this name.

```javascript
function foo() {}
console.log(foo.name);
```

--------------------------------

### Syntax variants for await using and for await...of

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/await_using

Demonstrates the four valid combinations of synchronous/asynchronous iteration and synchronous/asynchronous disposal.

```javascript
for (using x of y)
```

```javascript
for await (using x of y)
```

```javascript
for (await using x of y)
```

```javascript
for await (await using x of y)
```

--------------------------------

### RegExp.prototype.multiline

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/multiline

The `multiline` accessor property of `RegExp` instances returns `true` if the `m` flag was used with the regular expression; otherwise, it returns `false`. The `m` flag enables multiline mode, causing `^` and `$` to match the start and end of any line within the input string, respectively, rather than just the start and end of the entire string.

```APIDOC
## GET /RegExp.prototype.multiline

### Description
Retrieves whether the 'm' (multiline) flag is set for a RegExp instance.

### Method
GET

### Endpoint
RegExp.prototype.multiline

### Parameters
This property does not take any parameters.

### Request Example
```javascript
const regex1 = /abc/;
const regex2 = /abc/m;

console.log(regex1.multiline); // false
console.log(regex2.multiline); // true
```

### Response
#### Success Response (200)
- **multiline** (boolean) - `true` if the 'm' flag is set, `false` otherwise.

#### Response Example
```json
{
  "multiline": true
}
```

### Error Handling
This property access is not expected to throw errors under normal circumstances.
```

--------------------------------

### Define a setter on a new object

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/set

This example shows how to define a pseudo-property `current` on a new object. Assigning a value to `current` updates the `log` property.

```javascript
const language = {
  set current(value) {
    this.log = value;
  },
  log: ''
};

language.current = 2;
console.log(language.log); // 2
```

--------------------------------

### Date Constructor and Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setMinutes

Documentation for the JavaScript Date object, including its constructor, static methods like Date.now(), and various instance methods for getting and setting date and time components.

```APIDOC
## Date Object Documentation

### Description
Reference for the JavaScript `Date` object, covering its constructor, static methods, and instance methods.

### Constructor
#### `Date()`
Creates a new Date object.

### Static Methods
#### `Date.now()`
Returns the number of milliseconds elapsed since the epoch.

#### `Date.parse(text)`
Parses a string representation of a date and returns the number of milliseconds since the epoch.

#### `Date.UTC(year, month[, day[, hour[, minute[, second[, millisecond]]]]])`
Returns the number of milliseconds in a Date object since the epoch, using UTC.

### Instance Methods
#### Getters
- **`getDate()`** (number) - Returns the day of the month (1-31).
- **`getDay()`** (number) - Returns the day of the week (0-6).
- **`getFullYear()`** (number) - Returns the year (4 digits).
- **`getHours()`** (number) - Returns the hour (0-23).
- **`getMilliseconds()`** (number) - Returns the milliseconds (0-999).
- **`getMinutes()`** (number) - Returns the minutes (0-59).
- **`getMonth()`** (number) - Returns the month (0-11).
- **`getSeconds()`** (number) - Returns the seconds (0-59).
- **`getTime()`** (number) - Returns the number of milliseconds since the epoch.
- **`getTimezoneOffset()`** (number) - Returns the time-zone offset in minutes.
- **`getUTCDate()`** (number) - Returns the day of the month (1-31) according to UTC.
- **`getUTCDay()`** (number) - Returns the day of the week (0-6) according to UTC.
- **`getUTCFullYear()`** (number) - Returns the year (4 digits) according to UTC.
- **`getUTCHours()`** (number) - Returns the hour (0-23) according to UTC.
- **`getUTCMilliseconds()`** (number) - Returns the milliseconds (0-999) according to UTC.
- **`getUTCMinutes()`** (number) - Returns the minutes (0-59) according to UTC.
- **`getUTCMonth()`** (number) - Returns the month (0-11) according to UTC.
- **`getUTCSeconds()`** (number) - Returns the seconds (0-59) according to UTC.
- **`getYear()`** (number) - Returns the year (deprecated).

#### Setters
- **`setDate(dayValue)`** - Sets the day of the month.
- **`setFullYear(yearValue[, monthValue[, dayValue]])`** - Sets the year (and optionally month and day).
- **`setHours(hourValue[, minuteValue[, secondValue[, millisecondValue]]])`** - Sets the hours (and optionally minutes, seconds, milliseconds).
- **`setMilliseconds(millisecondValue)`** - Sets the milliseconds.
- **`setMinutes(minuteValue[, secondValue[, millisecondValue]])`** - Sets the minutes (and optionally seconds, milliseconds).
- **`setMonth(monthValue[, dayValue])`** - Sets the month (and optionally day).
- **`setSeconds(secondValue[, millisecondValue])`** - Sets the seconds (and optionally milliseconds).
- **`setTime(timeValue)`** - Sets the date and time by using the number of milliseconds since the epoch.
- **`setUTCDate(dayValue)`** - Sets the day of the month according to UTC.
- **`setUTCFullYear(yearValue[, monthValue[, dayValue]])`** - Sets the year (and optionally month and day) according to UTC.
- **`setUTCHours(hourValue[, minuteValue[, secondValue[, millisecondValue]]])`** - Sets the hours (and optionally minutes, seconds, milliseconds) according to UTC.
- **`setUTCMilliseconds(millisecondValue)`** - Sets the milliseconds according to UTC.
- **`setUTCMinutes(minuteValue[, secondValue[, millisecondValue]])`** - Sets the minutes (and optionally seconds, milliseconds) according to UTC.
- **`setUTCMonth(monthValue[, dayValue])`** - Sets the month (and optionally day) according to UTC.
- **`setUTCSeconds(secondValue[, millisecondValue])`** - Sets the seconds (and optionally milliseconds) according to UTC.
- **`setYear(yearValue)`** - Sets the year (deprecated).

#### String Conversion Methods
- **`toDateString()`** (string) - Returns the date portion of a Date object as a human-readable string.
- **`toISOString()`** (string) - Returns a string representing the date in ISO 8601 format.
- **`toJSON()`** (string) - Returns a string representing the date, formatted as a JSON date.
- **`toLocaleDateString([locales[, options]])`** (string) - Returns the date portion of a Date object as a string, using locale-specific conventions.
- **`toLocaleString([locales[, options]])`** (string) - Returns a string representing the date and time, using locale-specific conventions.
- **`toLocaleTimeString([locales[, options]])`** (string) - Returns the time portion of a Date object as a string, using locale-specific conventions.
- **`toString()`** (string) - Returns a string representing the specified Date object.
- **`toTemporalInstant()`** (Temporal.Instant) - Returns a `Temporal.Instant` representing the date and time.
- **`toTimeString()`** (string) - Returns the time portion of a Date object as a string.
- **`toUTCString()`** (string) - Returns a string representing the date and time in UTC.
- **`valueOf()`** (number) - Returns the primitive value of a Date object (milliseconds since epoch).
- **`[Symbol.toPrimitive]()`** - Returns the primitive value of the Date object.

### Inheritance
- **`Object/Function`**
  - **Static Methods**
    - `apply(thisArg, argsArray)`
    - `bind(thisArg, ...args)`
    - `call(thisArg, ...args)`
    - `toString()`
    - `[Symbol.hasInstance](instance)`
  - **Static Properties**
    - `displayName` (Non-standard)
    - `length`
    - `name`
    - `prototype`
    - `arguments` (Non-standard, Deprecated)
    - `caller` (Non-standard, Deprecated)
  - **Instance Methods**
    - `__defineGetter__(propertyName, getter)` (Deprecated)
    - `__defineSetter__(propertyName, setter)` (Deprecated)
    - `__lookupGetter__(propertyName)` (Deprecated)
    - `__lookupSetter__(propertyName)` (Deprecated)
    - `hasOwnProperty(prop)`
    - `isPrototypeOf(V)`
    - `propertyIsEnumerable(V)`
    - `toLocaleString()`
    - `toString()`
    - `valueOf()`
  - **Instance Properties**
    - `__proto__` (Deprecated)
    - `constructor`
```

--------------------------------

### String.prototype.substr()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/substr

Returns a portion of a string starting at a specified index for a given length.

```APIDOC
## String.prototype.substr()

### Description
The substr() method returns a portion of a string, starting at the specified index and extending for a given number of characters afterwards. Note: This method is deprecated and not part of the main ECMAScript specification.

### Parameters
- **start** (number) - Required - The index of the first character to include.
- **length** (number) - Optional - The number of characters to extract.

### Return value
- **string** - A new string containing the specified part of the given string.

### Request Example
const str = "Mozilla";
console.log(str.substr(1, 2)); // "oz"

### Response
- **result** (string) - The extracted substring.
```

--------------------------------

### Function Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/bind

These are methods available on Function instances, such as apply, call, bind, and toString.

```APIDOC
## Function Instance Methods

### Description
Methods available on Function instances.

### Method
Instance Methods

### Endpoint
N/A (Instance Methods)

### Parameters
Refer to individual method documentation for parameter details.

### Request Example
```javascript
function greet(greeting) {
  console.log(greeting + ', ' + this.name);
}
const person = { name: 'Alice' };
greet.call(person, 'Hello'); // Output: Hello, Alice
greet.apply(person, ['Hi']); // Output: Hi, Alice
const boundGreet = greet.bind(person, 'Hey');
boundGreet(); // Output: Hey, Alice
```

### Response
#### Success Response (200)
* **Varies** - Depends on the method called.

#### Response Example
```javascript
// Varies based on method
```
```

--------------------------------

### Using lastIndex with sticky regexes

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/lastIndex

Shows how to manually set lastIndex to control the starting position for a sticky regex.

```javascript
const re = /hi/y;
re.lastIndex = 3;
console.log(re.exec("hi hi")); // ['hi', index: 3, input: 'hi hi', groups: undefined]
```

--------------------------------

### Using Reflect.defineProperty()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect/defineProperty

Demonstrates how to use Reflect.defineProperty() to define a property and handle the boolean success status.

```javascript
const obj = {};
if (Reflect.defineProperty(obj, "x", { value: 7 })) {
  console.log("property created!");
} else {
  console.log("property not created");
}
```

--------------------------------

### DataView.prototype.byteOffset

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/byteOffset

The byteOffset property returns the offset in bytes from the start of the underlying ArrayBuffer.

```APIDOC
## GET /DataView.prototype.byteOffset

### Description
The `byteOffset` accessor property of `DataView` instances returns the offset (in bytes) of this view from the start of its `ArrayBuffer` or `SharedArrayBuffer`.

### Method
GET

### Endpoint
DataView.prototype.byteOffset

### Parameters
This is an accessor property and does not take parameters.

### Request Example
This is a property, not an endpoint that accepts requests.

### Response
#### Success Response (200)
- **byteOffset** (number) - The offset in bytes from the start of the ArrayBuffer.

#### Response Example
```json
{
  "byteOffset": 8
}
```
```

--------------------------------

### Lookbehind Assertion Examples

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Lookbehind_assertion

Illustrates practical use cases for lookbehind assertions, such as matching strings without consuming them.

```APIDOC
## Examples
### Matching strings without consuming them
Similar to lookaheads, lookbehinds can be used to match strings without consuming them so that only useful information is extracted. For example, the following regex matches the number in a price label:

```javascript
const priceString = "The price is $100.00";
const regex = /(?<=\$)\d+/;
const match = priceString.match(regex);

console.log(match[0]); // Output: "100"
```

A similar effect can be achieved by capturing the submatch you are interested in.

```javascript
const priceString = "The price is $100.00";
const regex = /\$(\d+)/;
const match = priceString.match(regex);

console.log(match[1]); // Output: "100"
```
```

--------------------------------

### Using the Global Symbol Registry

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol

Demonstrates the inverse relationship between Symbol.for() and Symbol.keyFor().

```javascript
Symbol.keyFor(Symbol.for("foo")) === "foo"; // true
```

--------------------------------

### Using setFloat64()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setFloat64

This example demonstrates how to use the setFloat64() method to store a floating-point number in an ArrayBuffer. It initializes an ArrayBuffer, creates a DataView, sets a value using setFloat64(), and then retrieves it using getFloat64() to verify.

```javascript
const buffer = new ArrayBuffer(16);
const view = new DataView(buffer);

// Set a float64 value at byte offset 0, using little-endian format
view.setFloat64(0, 3.14159, true); 

// Retrieve the value
const value = view.getFloat64(0, true);

console.log(value); // Output: 3.14159
```

--------------------------------

### GeneratorFunction() Constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/GeneratorFunction/GeneratorFunction

This section details the GeneratorFunction() constructor, its syntax, parameters, and provides examples of its usage. It also highlights security considerations related to its use.

```APIDOC
## GeneratorFunction() Constructor

### Description
The `GeneratorFunction()` constructor creates `GeneratorFunction` objects. It is not intended for direct use and shares caveats with the `Function()` constructor.

### Syntax
`new GeneratorFunction([arg1[, arg2[, ...argN]],] functionBody)
GeneratorFunction([arg1[, arg2[, ...argN]],] functionBody)`

**Note:** `GeneratorFunction()` can be called with or without `new`. Both create a new `GeneratorFunction` instance.

### Parameters
See `Function()`.

### Request Body
- **arg1, arg2, ..., argN** (string) - Optional. Arguments for the generator function.
- **functionBody** (string) - Required. The body of the generator function.

### Request Example
```json
{
  "example": "new GeneratorFunction('yield 1;')"
}
```

### Response
#### Success Response (200)
- **GeneratorFunction object** (object) - A new GeneratorFunction instance.

#### Response Example
```json
{
  "example": "[GeneratorFunction: anonymous]"
}
```

### Security Considerations
**Warning:** The arguments passed to this constructor are dynamically parsed and executed as JavaScript. APIs like this are known as injection sinks and are potentially a vector for cross-site-scripting (XSS) attacks. You can mitigate this risk by always passing `TrustedScript` objects instead of strings and enforcing trusted types. See Security considerations in the `Function()` constructor reference for more information.
```

--------------------------------

### Deprecated source map syntax

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Deprecated_source_map_pragma

Examples of the deprecated syntax that triggers the warning.

```javascript
Warning: SyntaxError: Using //@ to indicate sourceURL pragmas is deprecated. Use //# instead

Warning: SyntaxError: Using //@ to indicate sourceMappingURL pragmas is deprecated. Use //# instead
```

--------------------------------

### Function Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/all

Documentation for the instance methods of the Function object.

```APIDOC
## Function

### Instance Methods

#### `func.__defineGetter__(propertyName, getter)`

- **Description**: Associates a function with the property `propertyName` that gets invoked when a value for that property is requested. Deprecated.
- **Method**: GET
- **Endpoint**: N/A

#### `func.__defineSetter__(propertyName, setter)`

- **Description**: Associates a function with the property `propertyName` that gets invoked when the property is assigned a value. Deprecated.
- **Method**: GET
- **Endpoint**: N/A

#### `func.__lookupGetter__(propertyName)`

- **Description**: Returns the getter function associated with the given `propertyName`, if it exists. Deprecated.
- **Method**: GET
- **Endpoint**: N/A

#### `func.__lookupSetter__(propertyName)`

- **Description**: Returns the setter function associated with the given `propertyName`, if it exists. Deprecated.
- **Method**: GET
- **Endpoint**: N/A

#### `func.hasOwnProperty(propName)`

- **Description**: Returns a boolean indicating whether the object has the specified property as its own property.
- **Method**: GET
- **Endpoint**: N/A

#### `func.isPrototypeOf(V)`

- **Description**: Returns a boolean indicating whether the object is in the prototype chain of the object `V`.
- **Method**: GET
- **Endpoint**: N/A

#### `func.propertyIsEnumerable(desc)`

- **Description**: Returns a boolean indicating whether the specified property is the object's own property and will be enumerated as part of a for-in enumeration.
- **Method**: GET
- **Endpoint**: N/A

#### `func.toLocaleString()`

- **Description**: Returns a string representing the object. This method is provided to support localization, but it is not used by JavaScript itself.
- **Method**: GET
- **Endpoint**: N/A

#### `func.toString()`

- **Description**: Returns a string representing the source code of the function.
- **Method**: GET
- **Endpoint**: N/A

#### `func.valueOf()`

- **Description**: Returns the primitive value of the specified object.
- **Method**: GET
- **Endpoint**: N/A
```

--------------------------------

### Using locales with toLocaleString()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toLocaleString

Demonstrates localized date and time formats by specifying language tags. Use the 'locales' argument to match the user interface language, with fallbacks.

```javascript
const date = new Date(2023, 1, 15, 10, 30, 0);

// English - United States
console.log(date.toLocaleString('en-US'));
// Expected output: 2/15/2023, 10:30:00 AM

// English - United Kingdom
console.log(date.toLocaleString('en-GB'));
// Expected output: 15/02/2023, 10:30:00

// French - Canada
console.log(date.toLocaleString('fr-CA'));
// Expected output: 2023-02-15 10:30:00

// Japanese - Japan
console.log(date.toLocaleString('ja-JP'));
// Expected output: 2023/2/15 10:30:00
```

--------------------------------

### GET Temporal.ZonedDateTime.prototype.offsetNanoseconds

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/offsetNanoseconds

Retrieves the UTC offset of a ZonedDateTime instance expressed in nanoseconds.

```APIDOC
## GET Temporal.ZonedDateTime.prototype.offsetNanoseconds

### Description
Returns an integer representing the offset used to interpret the internal instant, as a number of nanoseconds. This value is read-only.

### Method
GET

### Response
#### Success Response (200)
- **offsetNanoseconds** (integer) - The UTC offset in nanoseconds.
```

--------------------------------

### Basic use of toLocaleTimeString()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toLocaleTimeString

This example demonstrates the basic usage of `toLocaleTimeString()` without specifying locale or options, resulting in a formatted string in the default locale and with default options.

```javascript
const today = new Date();
const timeString = today.toLocaleTimeString();
console.log(timeString);
```

--------------------------------

### Demonstrate precision limits with literals

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/sumPrecise

Example showing that Math.sumPrecise() cannot avoid precision issues inherent in the representation of floating point literals.

```javascript
console.log(Math.sumPrecise([0.1, 0.2])); // 0.30000000000000004
```

--------------------------------

### GET Temporal.ZonedDateTime.prototype.monthsInYear

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/monthsInYear

Access the number of months in the year for a given ZonedDateTime instance.

```APIDOC
## GET Temporal.ZonedDateTime.prototype.monthsInYear

### Description
The `monthsInYear` accessor property of `Temporal.ZonedDateTime` instances returns a positive integer representing the number of months in the year of this date. It is calendar-dependent. The set accessor is `undefined`, meaning this property is read-only.

### Endpoint
Temporal.ZonedDateTime.prototype.monthsInYear

### Response
#### Success Response (200)
- **monthsInYear** (integer) - The number of months in the year for the current calendar.
```

--------------------------------

### Object Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty

Details on the instance methods available on Object prototypes, such as hasOwnProperty, toString, and valueOf.

```APIDOC
## Object Instance Methods

### Description
Lists and describes the instance methods available on Object prototypes.

### Method
N/A (Instance Methods)

### Endpoint
N/A

### Parameters
N/A

### Request Example
N/A

### Response
N/A

#### Specific Instance Methods:
- `Object.prototype.__defineGetter__()` (Deprecated)
- `Object.prototype.__defineSetter__()` (Deprecated)
- `Object.prototype.__lookupGetter__()` (Deprecated)
- `Object.prototype.__lookupSetter__()` (Deprecated)
- `Object.prototype.hasOwnProperty()`
- `Object.prototype.isPrototypeOf()`
- `Object.prototype.propertyIsEnumerable()`
- `Object.prototype.toLocaleString()`
- `Object.prototype.toString()`
- `Object.prototype.valueOf()
```

--------------------------------

### GET Temporal.ZonedDateTime.prototype.month

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/month

Retrieves the 1-based month index for a given Temporal.ZonedDateTime instance.

```APIDOC
## GET Temporal.ZonedDateTime.prototype.month

### Description
The month accessor property returns a positive integer representing the 1-based month index in the year of the Temporal.ZonedDateTime instance. It is calendar-dependent.

### Method
GET

### Response
#### Success Response (200)
- **month** (integer) - A 1-based integer representing the month index.
```

--------------------------------

### Using Atomics.waitAsync()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Atomics/waitAsync

This example demonstrates how a reading thread can wait asynchronously for a change in a shared memory location. The result.value will be a promise that can be resolved with 'ok' by another thread calling Atomics.notify().

```javascript
const buffer = new SharedArrayBuffer(4);
const typedArray = new Int32Array(buffer);

// Reading thread
const result = Atomics.waitAsync(typedArray, 0, 0);

console.log(result.value);

if (result.async) {
  // Wait for notification or timeout
  result.value.then(value => {
    console.log(`Promise resolved with: ${value}`);
  });
} else {
  // Immediate result (not-equal or timed-out)
  console.log(`Immediate result: ${result.value}`);
}
```

```javascript
// In another thread or after some operation:
Atomics.store(typedArray, 0, 1);
Atomics.notify(typedArray, 0, 1); // Wake up one waiting thread
```

--------------------------------

### Intercepting Object.getOwnPropertyDescriptor() with a Proxy

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy/Proxy/getOwnPropertyDescriptor

This example demonstrates how to use a Proxy to trap the Object.getOwnPropertyDescriptor() operation. Ensure the handler returns a valid property descriptor or undefined.

```javascript
const handler = {
  getOwnPropertyDescriptor(target, property) {
    console.log(`Trapped getOwnPropertyDescriptor for property: ${property}`);
    const descriptor = Reflect.getOwnPropertyDescriptor(target, property);
    if (descriptor) {
      // Modify descriptor if needed, e.g., make it non-writable
      // descriptor.writable = false;
    }
    return descriptor;
  }
};

const target = { message: 'hello' };
const proxy = new Proxy(target, handler);

console.log(Object.getOwnPropertyDescriptor(proxy, 'message'));
console.log(Object.getOwnPropertyDescriptor(proxy, 'nonExistent'));
```

--------------------------------

### GET Temporal.PlainYearMonth.prototype.calendarId

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainYearMonth/calendarId

Retrieves the calendar identifier string for a given Temporal.PlainYearMonth instance.

```APIDOC
## GET Temporal.PlainYearMonth.prototype.calendarId

### Description
The `calendarId` accessor property returns a string representing the calendar used to interpret the internal ISO 8601 date of a `Temporal.PlainYearMonth` instance.

### Method
GET

### Response
#### Success Response (200)
- **calendarId** (string) - The identifier of the calendar (e.g., "iso8601", "gregory").

### Response Example
{
  "calendarId": "iso8601"
}
```

--------------------------------

### GET Temporal.PlainYearMonth.prototype.daysInMonth

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainYearMonth/daysInMonth

Retrieves the number of days in the month for a given Temporal.PlainYearMonth instance.

```APIDOC
## GET Temporal.PlainYearMonth.prototype.daysInMonth

### Description
The daysInMonth accessor property of Temporal.PlainYearMonth instances returns a positive integer representing the number of days in the month of this date. It is calendar-dependent.

### Method
GET (Accessor Property)

### Response
- **days** (integer) - The number of days in the month.
```

--------------------------------

### JavaScript Object Constructor and Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/match

Details on the Object constructor, its static methods like apply, bind, call, toString, and [Symbol.hasInstance], its static properties like displayName, length, name, prototype, arguments, and caller, and its instance methods such as hasOwnProperty, isPrototypeOf, propertyIsEnumerable, toLocaleString, toString, and valueOf.

```APIDOC
## Object Constructor

### Description
The `Object` constructor is used to create an object. When called as a function, it returns a new generic object.

### Method
Constructor

### Endpoint
N/A (Built-in Object)

### Parameters
None

### Request Example
N/A

### Response
N/A

## Object Static Methods

### Description
Methods available directly on the Object constructor.

### Method
Static

### Endpoint
N/A (Built-in Object)

### Parameters
- `apply()` (See MDN documentation for specific parameters)
- `bind()` (See MDN documentation for specific parameters)
- `call()` (See MDN documentation for specific parameters)
- `toString()` (See MDN documentation for specific parameters)
- `[Symbol.hasInstance]()` (See MDN documentation for specific parameters)

### Request Example
N/A

### Response
N/A

## Object Static Properties

### Description
Properties available directly on the Object constructor.

### Method
Static

### Endpoint
N/A (Built-in Object)

### Parameters
- `displayName` (string) - Non-standard.
- `length` (number) - The number of arguments expected by the constructor.
- `name` (string) - The name of the constructor.
- `prototype` - The prototype of the constructor.
- `arguments` - Non-standard, Deprecated.
- `caller` - Non-standard, Deprecated.

### Request Example
N/A

### Response
N/A

## Object Instance Methods

### Description
Methods available on Object instances.

### Method
Instance

### Endpoint
N/A (Built-in Object)

### Parameters
- `__defineGetter__()` (Deprecated) (See MDN documentation for specific parameters)
- `__defineSetter__()` (Deprecated) (See MDN documentation for specific parameters)
- `__lookupGetter__()` (Deprecated) (See MDN documentation for specific parameters)
- `__lookupSetter__()` (Deprecated) (See MDN documentation for specific parameters)
- `hasOwnProperty()` (See MDN documentation for specific parameters)
- `isPrototypeOf()` (See MDN documentation for specific parameters)
- `propertyIsEnumerable()` (See MDN documentation for specific parameters)
- `toLocaleString()` (See MDN documentation for specific parameters)
- `toString()` (See MDN documentation for specific parameters)
- `valueOf()` (See MDN documentation for specific parameters)

### Request Example
N/A

### Response
N/A

## Object Instance Properties

### Description
Properties available on Object instances.

### Method
Instance

### Endpoint
N/A (Built-in Object)

### Parameters
- `__proto__` (Deprecated) - The prototype of the object.
- `constructor` - A reference to the constructor that created the object.

### Request Example
N/A

### Response
N/A
```

--------------------------------

### Convert any value to Boolean

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some

This example shows how to convert any value to its boolean representation using the some() method with a callback that returns the value itself. This effectively checks for truthiness.

```javascript
const array = [0, "", "hello", false, null, undefined, NaN, 42];

const result = array.some(Boolean);

console.log(result); // true
```

--------------------------------

### Compute Union of Sets using Set.prototype.union()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/union

This example demonstrates computing the union of two sets: one with even numbers less than 10 and another with perfect squares less than 10. The result includes all numbers that are either even or a perfect square, or both.

```javascript
const set1 = new Set([1, 2, 3, 4]);
const set2 = new Set([3, 4, 5, 6]);

const unionSet = set1.union(set2);

console.log(unionSet);
// Expected output: Set(6) { 1, 2, 3, 4, 5, 6 }
```

--------------------------------

### Valid for loop with initializer for array iteration

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Invalid_for-in_initializer

This example shows the correct way to iterate over an array using a standard for loop, including an initializer, which is recommended over using for...in for arrays.

```javascript
for (let i = 0; i < arr.length; i++) {
  // code here
}
```

--------------------------------

### toLocaleString() with Date and Time Styles

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/toLocaleString

Illustrates using dateStyle and timeStyle options with toLocaleString() for predefined formatting.

```javascript
const dt = Temporal.now.zonedDateTimeISO('America/New_York');
console.log(dt.toLocaleString(undefined, {
  dateStyle: 'full',
  timeStyle: 'full'
})); // e.g. "Friday, December 25, 2020 at 10:00:00 AM Eastern Standard Time"
```

--------------------------------

### GET Temporal.PlainDateTime.prototype.inLeapYear

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDateTime/inLeapYear

Access the inLeapYear property to determine if the date is in a leap year.

```APIDOC
## GET Temporal.PlainDateTime.prototype.inLeapYear

### Description
The inLeapYear accessor property of Temporal.PlainDateTime instances returns a boolean indicating whether this date is in a leap year. A leap year is a year that has more days than a common year, and it is calendar-dependent.

### Method
GET (Accessor Property)

### Response
- **inLeapYear** (boolean) - Returns true if the year is a leap year, false otherwise.
```

--------------------------------

### Using locales with toLocaleTimeString()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toLocaleTimeString

This example illustrates how to use the `locales` parameter to specify a language for time formatting. It shows variations in localized time formats by providing different BCP 47 language tags.

```javascript
const date = new Date(Date.UTC(2012, 11, 20, 3, 0, 0));

// English, US
console.log(date.toLocaleTimeString('en-US'));
// Expected output: "3:00:00 AM"

// English, UK
console.log(date.toLocaleTimeString('en-GB'));
// Expected output: "03:00:00"

// Arabic, Egypt
console.log(date.toLocaleTimeString('ar-EG'));
// Expected output: "3:00:00 ص"

// Chinese, China
console.log(date.toLocaleTimeString('zh-CN'));
// Expected output: "3:00:00 AM"

// French, Canada
console.log(date.toLocaleTimeString('fr-CA'));
// Expected output: "3:00:00 AM"
```

--------------------------------

### Creating Unique Symbols

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol

Demonstrates creating unique Symbol primitives with optional descriptions.

```javascript
const sym1 = Symbol();
const sym2 = Symbol("foo");
const sym3 = Symbol("foo");
```

--------------------------------

### GET Temporal.PlainDateTime.prototype.daysInMonth

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDateTime/daysInMonth

Retrieves the number of days in the month for a given PlainDateTime instance.

```APIDOC
## GET Temporal.PlainDateTime.prototype.daysInMonth

### Description
The `daysInMonth` accessor property returns a positive integer representing the number of days in the month of the current `Temporal.PlainDateTime` instance. This value is calendar-dependent.

### Method
GET

### Endpoint
Temporal.PlainDateTime.prototype.daysInMonth

### Response
- **Return Value** (integer) - The number of days in the month.
```

--------------------------------

### Look up a property's getter using __lookupGetter__()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/__lookupGetter__

This example demonstrates how to use __lookupGetter__() to find the getter function for a property. Note that this method is deprecated and Object.getOwnPropertyDescriptor() is preferred.

```javascript
const obj = {
  get foo() {
    return 'bar';
  }
};

console.log(obj.__lookupGetter__('foo')); // [Function: get foo]
console.log(obj.__lookupGetter__('bar')); // undefined
```

--------------------------------

### GET Temporal.PlainDateTime.prototype.calendarId

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDateTime/calendarId

Retrieves the calendar identifier string for a given Temporal.PlainDateTime instance.

```APIDOC
## GET Temporal.PlainDateTime.prototype.calendarId

### Description
The `calendarId` accessor property returns a string representing the calendar used to interpret the internal ISO 8601 date of a `Temporal.PlainDateTime` instance.

### Method
GET (Accessor Property)

### Response
- **calendarId** (string) - The identifier of the calendar system (e.g., "iso8601", "gregory").
```

--------------------------------

### Object/Function Static Methods and Properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort

Documentation for static methods and properties of Object and Function, such as call(), apply(), bind(), toString(), length, name, etc.

```APIDOC
## Object/Function Static Methods and Properties

### Description
Details the static methods and properties available on Object and Function, used for method invocation and introspection.

### Static Methods
- `Object.apply(thisArg, argsArray)`
- `Object.bind(thisArg[, arg1[, ...argN]])`: Creates a new function that, when called, has its `this` keyword set to the provided value, with a given sequence of arguments preceding any provided when the new function is called.
- `Object.call(thisArg[, arg1[, ...argN]])`: Calls a method of an object supplied individually or list of arguments as supplied.
- `Object.toString()`
- `Object[Symbol.hasInstance]()`

### Static Properties
- `displayName` (Non-standard)
- `length`
- `name`
- `prototype`
- `arguments` (Non-standard, Deprecated)
- `caller` (Non-standard, Deprecated)

### Request Example
```json
{
  "example": "function greet(name) { console.log(`Hello, ${name}!`); }; greet.call(null, 'World');"
}
```

### Response Example
```json
{
  "example": "Hello, World!"
}
```
```

--------------------------------

### Using Reflect.get()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect/get

This example demonstrates how to use Reflect.get() to access a property on an object. The 'receiver' argument is optional and defaults to the target object.

```javascript
const obj = {
  get value() {
    return this.realValue;
  },
  realValue: 10
};

const receiver = Object.create(obj, {
  realValue: {
    value: 20,
    enumerable: true
  }
});

console.log(Reflect.get(obj, "value", receiver)); // 20
console.log(Reflect.get(receiver, "value", receiver)); // 20
console.log(Reflect.get(obj, "realValue", receiver)); // 10
console.log(Reflect.get(receiver, "realValue", receiver)); // 20
```

--------------------------------

### GET Temporal.PlainDate.prototype.month

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDate/month

Retrieves the 1-based month index for a given Temporal.PlainDate instance.

```APIDOC
## GET Temporal.PlainDate.prototype.month

### Description
The `month` accessor property returns a positive integer representing the 1-based month index in the year of the `Temporal.PlainDate` instance. It is calendar-dependent and should be used for identifying the order of months within a year.

### Method
GET

### Response
- **month** (integer) - A 1-based index representing the month of the year.
```

--------------------------------

### Using Promise.any()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/any

Demonstrates how Promise.any() fulfills with the first promise to fulfill, even if other promises reject first. This contrasts with Promise.race(), which settles with the first promise to settle.

```javascript
const promise1 = Promise.reject(0);
const promise2 = new Promise((resolve) => setTimeout(resolve, 100, 'fast'));
const promise3 = new Promise((resolve) => setTimeout(resolve, 200, 'slow'));

Promise.any([promise1, promise2, promise3]).then(value => console.log(value));
// Expected output:
// fast
```

--------------------------------

### GET Temporal.PlainDate.prototype.daysInYear

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDate/daysInYear

Accesses the number of days in the year for a specific PlainDate instance.

```APIDOC
## GET Temporal.PlainDate.prototype.daysInYear

### Description
The daysInYear accessor property returns a positive integer representing the number of days in the year of the Temporal.PlainDate instance. This value is calendar-dependent.

### Method
GET (Accessor Property)

### Response
- **daysInYear** (integer) - The total number of days in the year for the date instance.
```

--------------------------------

### GET Temporal.Duration.prototype.days

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Duration/days

Retrieves the number of days from a Temporal.Duration instance. This property is read-only.

```APIDOC
## GET Temporal.Duration.prototype.days

### Description
The `days` accessor property of `Temporal.Duration` instances returns an integer representing the number of days in the duration. The set accessor is `undefined`, meaning this property cannot be changed directly.

### Method
GET

### Response
- **days** (integer) - The number of days in the duration.
```

--------------------------------

### Temporal.Instant Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Instant

Instance methods for manipulating and querying Temporal.Instant objects.

```APIDOC
## Temporal.Instant Instance Methods

### Description
Provides instance methods for performing operations on a Temporal.Instant object.

### Methods
- `add(options)`
- `equals(other)`
- `round(options)`
- `since(other)`
- `subtract(options)`
- `toJSON()`
- `toLocaleString(locales, options)`
- `toString(options)`
- `toZonedDateTimeISO(options)`
- `until(other)`
- `valueOf()`

### Endpoint
N/A (Instance methods)

### Parameters
#### `add(options)`
- **options** (object) - An object specifying the duration to add.

#### `equals(other)`
- **other** (Temporal.Instant) - The other instant to compare with.

#### `round(options)`
- **options** (object) - An object specifying the rounding increment.

#### `since(other)`
- **other** (Temporal.Instant) - The other instant to compare against.

#### `subtract(options)`
- **options** (object) - An object specifying the duration to subtract.

#### `toJSON()`
- No parameters.

#### `toLocaleString(locales, options)`
- **locales** (string | array) - Optional. Locale string or array of locale strings.
- **options** (object) - Optional. Formatting options.

#### `toString(options)`
- **options** (object) - Optional. Formatting options.

#### `toZonedDateTimeISO(options)`
- **options** (object) - An object specifying the time zone.

#### `until(other)`
- **other** (Temporal.Instant) - The other instant to compare against.

#### `valueOf()`
- No parameters.

### Request Example
```javascript
const instant = Temporal.Instant.fromEpochMilliseconds(1678886400000);
const addedInstant = instant.add({ hours: 1 });
const isEqual = instant.equals(addedInstant);
```

### Response
#### Success Response (200)
- `add`, `subtract`: (Temporal.Instant) - A new Instant object after adding/subtracting duration.
- `equals`: (boolean) - True if the instants are equal, false otherwise.
- `round`: (Temporal.Instant) - A new Instant object rounded to the specified increment.
- `since`, `until`: (Temporal.Duration) - The duration between the two instants.
- `toJSON`: (string) - A string representation of the instant in ISO 8601 format.
- `toLocaleString`: (string) - A locale-sensitive string representation of the instant.
- `toString`: (string) - A string representation of the instant.
- `toZonedDateTimeISO`: (Temporal.ZonedDateTime) - A ZonedDateTime object in ISO 8601 format.
- `valueOf`: (bigint) - The epoch nanoseconds of the instant.

#### Response Example
```json
{
  "addedInstant": {
    "__brand": "Temporal.Instant",
    "epochNanoseconds": "1678890000000000000"
  },
  "isEqual": false,
  "duration": {
    "__brand": "Temporal.Duration",
    "hours": 1
  },
  "formattedString": "2023-03-15T13:00:00Z",
  "valueOfResult": 1678886400000000000n
}
```
```

--------------------------------

### Generating Random Numbers Between Two Values

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random

Examples showing how to scale the output of Math.random() to generate numbers within a specified range.

```APIDOC
## Getting a random number between two values

### Description
This example returns a random number between the specified values. The returned value is no lower than (and may possibly equal) `min`, and is less than (and not equal) `max`.

### Method
Static method

### Parameters
None for `Math.random()` itself, but the scaling functions take `min` and `max`.

### Return value
A floating-point number within the specified range.

### Request Example
```javascript
function getRandomArbitrary(min, max) {
  return Math.random() * (max - min) + min;
}

const randomValue = getRandomArbitrary(10, 20);
console.log(randomValue);
```

### Response Example
```json
{
  "example": "15.67890123456789"
}
```
```

```APIDOC
## Getting a random integer between two values

### Description
This example returns a random integer between the specified values. The value is no lower than `min` (or the next integer greater than `min` if `min` isn't an integer), and is less than (but not equal to) `max`.

### Method
Static method

### Parameters
None for `Math.random()` itself, but the scaling functions take `min` and `max`.

### Return value
An integer within the specified range (exclusive of `max`).

### Request Example
```javascript
function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min) + min); //The maximum is exclusive and the minimum is inclusive
}

const randomInt = getRandomInt(1, 10);
console.log(randomInt);
```

### Response Example
```json
{
  "example": "5"
}
```
```

```APIDOC
## Getting a random integer between two values, inclusive

### Description
This function accomplishes getting results that are inclusive at both the minimum and the maximum.

### Method
Static method

### Parameters
None for `Math.random()` itself, but the scaling functions take `min` and `max`.

### Return value
An integer within the specified range (inclusive of both `min` and `max`).

### Request Example
```javascript
function getRandomIntInclusive(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1) + min); //The maximum is inclusive and the minimum is inclusive
}

const randomIntInclusive = getRandomIntInclusive(1, 10);
console.log(randomIntInclusive);
```

### Response Example
```json
{
  "example": "8"
}
```
```

--------------------------------

### GET Set.prototype.size

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/size

Retrieves the number of elements currently stored in a Set instance.

```APIDOC
## GET Set.prototype.size

### Description
The size accessor property returns the number of (unique) elements in a Set instance. This property is read-only; attempting to set it will have no effect.

### Method
GET

### Response
#### Success Response (200)
- **size** (integer) - The number of entries in the Set object.

### Response Example
{
  "size": 3
}
```

--------------------------------

### Using return()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/AsyncGenerator/return

Demonstrates the basic usage of the return() method on an async generator. The generator is expected to yield values until return() is called, which then resolves the promise with a done: true status.

```javascript
async function* asyncGenerator() {
  try {
    yield 1;
    yield 2;
  } finally {
    console.log('Generator cleanup!');
  }
}

const generator = asyncGenerator();

console.log(await generator.next()); // { value: 1, done: false }
console.log(await generator.return(10)); // Generator cleanup! \n { value: 10, done: true }
console.log(await generator.next()); // { value: undefined, done: true }
```

--------------------------------

### Function constructor example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/toString

When called on a function created by the Function constructor, toString() returns the source code of a synthesized function declaration.

```javascript
function anonymous(a,b
) {
return a + b
}
```

--------------------------------

### Basic generator function example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/function%2A

Demonstrates a simple generator function that yields a sequence of numbers. Call .next() to advance execution and retrieve yielded values.

```javascript
function* countAppleSales() {
  let saleCount = 0;

  for (let i = 0; i < 2; i++) {
    saleCount += Math.floor(Math.random() * 100) + 1;
    yield saleCount;
  }
}

const appleStore = countAppleSales();
console.log(appleStore.next()); // { value: 54, done: false }
console.log(appleStore.next()); // { value: 120, done: false }
console.log(appleStore.next()); // { value: undefined, done: true }
```

--------------------------------

### Creating Symbol Wrapper Objects

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol

Demonstrates creating a Symbol wrapper object using the Object function.

```javascript
const sym = Symbol("foo");
const symObj = Object(sym);
typeof symObj; // "object"
```

--------------------------------

### Using Atomics.store()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Atomics/store

This example demonstrates how to use Atomics.store() to store a value in a SharedArrayBuffer. Note that SharedArrayBuffer requires specific security contexts and cannot be run directly in arbitrary environments.

```javascript
const buffer = new SharedArrayBuffer(1024);
const typedArray = new Uint8Array(buffer);

Atomics.store(typedArray, 0, 10);
console.log(Atomics.load(typedArray, 0)); // 10
```

--------------------------------

### GET Intl.Locale.prototype.hourCycle

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale/hourCycle

Retrieves the hour cycle type associated with an Intl.Locale instance.

```APIDOC
## GET Intl.Locale.prototype.hourCycle

### Description
The `hourCycle` accessor property returns the hour cycle type (e.g., 'h11', 'h12', 'h23', 'h24') for the given `Intl.Locale` instance. This value is determined at construction time via the locale identifier or the configuration object.

### Method
GET

### Endpoint
Intl.Locale.prototype.hourCycle

### Response
#### Success Response (200)
- **hourCycle** (string | undefined) - The hour cycle type string, or undefined if not set.
```

--------------------------------

### Using DOM APIs as an alternative to sup()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/sup

This example shows the recommended way to achieve superscript text using DOM APIs, which is preferred over deprecated HTML wrapper methods like `sup()`.

```javascript
const text = "This is superscript";

const supElement = document.createElement("sup");
supElement.textContent = text;

document.body.appendChild(supElement);
```

--------------------------------

### Object Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/from

Reference for instance methods available on Object objects.

```APIDOC
## Object Instance Methods

### Description
Provides instance methods for manipulating Object objects.

### Methods
- `__defineGetter__()` (Deprecated)
- `__defineSetter__()` (Deprecated)
- `__lookupGetter__()` (Deprecated)
- `__lookupSetter__()` (Deprecated)
- `hasOwnProperty()`
- `isPrototypeOf()`
- `propertyIsEnumerable()`
- `toLocaleString()`
- `toString()`
- `valueOf()`

### Instance Properties
- `__proto__` (Deprecated)
- `constructor`
```

--------------------------------

### Use take() with a for...of loop

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Iterator/take

This example shows how to use `take()` with a `for...of` loop to iterate over a limited number of elements from an iterator. This is convenient for infinite iterators to prevent infinite loops.

```javascript
function* fibonacci() {
  let [prev, curr] = [0, 1];
  while (true) {
    yield curr;
    [prev, curr] = [curr, prev + curr];
  }
}

for (const num of fibonacci().take(5)) {
  console.log(num);
}
// Output:
// 1
// 1
// 2
// 3
// 5
```

--------------------------------

### Intl.DateTimeFormat Constructor and Options

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat/DateTimeFormat

Demonstrates the use of Intl.DateTimeFormat constructor with options like dateStyle and timeStyle for flexible date and time formatting.

```APIDOC
## Intl.DateTimeFormat Constructor

### Description
Creates an object that enables language-sensitive date and time formatting.

### Method
`new Intl.DateTimeFormat([locales[, options]])`

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Parameters for Options Object:
#### dateStyle
- **dateStyle** (string) - Required/Optional - The date formatting style to use. Possible values are "full", "long", "medium", and "short".

#### timeStyle
- **timeStyle** (string) - Required/Optional - The time formatting style to use. Possible values are "full", "long", "medium", and "short".

#### Other Options (when not using dateStyle or timeStyle):
- **weekday** (string) - Required/Optional - e.g., "long", "short", "narrow"
- **era** (string) - Required/Optional - e.g., "long", "short", "narrow"
- **year** (string) - Required/Optional - e.g., "numeric", "2-digit"
- **month** (string) - Required/Optional - e.g., "numeric", "2-digit", "long", "short", "narrow"
- **day** (string) - Required/Optional - e.g., "numeric", "2-digit"
- **hour** (string) - Required/Optional - e.g., "numeric", "2-digit"
- **minute** (string) - Required/Optional - e.g., "numeric", "2-digit"
- **second** (string) - Required/Optional - e.g., "numeric", "2-digit"
- **timeZoneName** (string) - Required/Optional - e.g., "short", "long"
- **hourCycle** (string) - Required/Optional - e.g., "h11", "h12", "h23", "h24"
- **dayPeriod** (string) - Required/Optional - e.g., "narrow", "short", "long"

### Request Example
```javascript
const formatter = new Intl.DateTimeFormat('en-US', { dateStyle: 'full', timeStyle: 'long' });
```

### Response
#### Success Response (200)
- **Intl.DateTimeFormat object** - A new Intl.DateTimeFormat object.

#### Response Example
```javascript
// Returns an Intl.DateTimeFormat object configured with the specified options
```

### Exceptions 
- **RangeError**: Thrown if `locales` or `options` contain invalid values.
```

--------------------------------

### Temporal.ZonedDateTime.prototype.toInstant()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/toInstant

The toInstant() method returns a new Temporal.Instant object representing the instant of this date-time. It does not take any parameters.

```APIDOC
## Temporal.ZonedDateTime.prototype.toInstant()

### Description
Returns a new `Temporal.Instant` object representing the instant of this date-time.

### Method
`toInstant()`

### Parameters
None.

### Return value
A new `Temporal.Instant` object representing the instant of this date-time.

### Request Example
```javascript
// Assuming 'zonedDateTime' is an instance of Temporal.ZonedDateTime
const instant = zonedDateTime.toInstant();
```

### Response
#### Success Response (200)
- **instant** (`Temporal.Instant`) - A new Temporal.Instant object.

#### Response Example
```json
{
  "instant": "2023-10-27T10:30:00Z"
}
```
```

--------------------------------

### GET Temporal.ZonedDateTime.prototype.timeZoneId

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/timeZoneId

Retrieves the time zone identifier string associated with a ZonedDateTime instance.

```APIDOC
## GET Temporal.ZonedDateTime.prototype.timeZoneId

### Description
Returns a string representing the time zone identifier used to interpret the internal instant of the ZonedDateTime instance. The value is either a named identifier (e.g., "America/New_York") or an offset (e.g., "±hh:mm").

### Method
GET

### Endpoint
Temporal.ZonedDateTime.prototype.timeZoneId

### Response
#### Success Response (200)
- **timeZoneId** (string) - The identifier string used to create the ZonedDateTime instance.
```

--------------------------------

### Array Constructor and Static Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/lastIndexOf

Documentation for the Array constructor and its static methods like from() and of().

```APIDOC
## Array Constructor and Static Methods

### Description
Provides details on how to construct an Array and use its static methods.

### Constructor
#### `Array()`
Creates a new Array object.

### Static Methods
#### `Array.from(arrayLike[, mapFn[, thisArg]])`
Creates a new, shallow-copied Array instance from an array-like or iterable object.

#### `Array.fromAsync(iterable[, mapFn[, thisArg]])`
Creates a new Array instance from an async iterable or array-like object.

#### `Array.isArray(arg)`
Determines whether the passed value is an Array.

#### `Array.of(element0[, element1[, ...[, elementN]]])`
Creates a new Array instance with a variable number of arguments, regardless of number or type of the arguments.

### Static Properties
#### `Array[Symbol.species]`
Returns the constructor for objects that have derived Array properties.

```

--------------------------------

### GET Temporal.PlainDateTime.prototype.eraYear

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDateTime/eraYear

Retrieves the year of the date within the current era for a Temporal.PlainDateTime instance.

```APIDOC
## GET Temporal.PlainDateTime.prototype.eraYear

### Description
Returns a non-negative integer representing the year of the date within the era, or undefined if the calendar does not use eras (e.g., ISO 8601). This property is read-only.

### Method
GET

### Response
#### Success Response (200)
- **eraYear** (integer | undefined) - The year index within the era, or undefined if not applicable.
```

--------------------------------

### Using indexOf() with fromIndex

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf

Shows how to use the optional fromIndex parameter to start searching from a specific index. Negative values count from the end of the array.

```javascript
const array = [5, 12, 8, 130, 44, 5];

console.log(array.indexOf(5)); // 0
console.log(array.indexOf(5, 1)); // 5
console.log(array.indexOf(5, -1)); // 5
console.log(array.indexOf(5, -2)); // 5
console.log(array.indexOf(5, 6)); // -1
console.log(array.indexOf(5, -10)); // 0
```

--------------------------------

### GET Temporal.PlainDate.prototype.weekOfYear

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDate/weekOfYear

Retrieves the 1-based week index of the year for a given PlainDate instance.

```APIDOC
## GET Temporal.PlainDate.prototype.weekOfYear

### Description
Returns a positive integer representing the 1-based week index in the yearOfWeek of the date, or undefined if the calendar does not support a well-defined week system.

### Response
#### Success Response (200)
- **weekOfYear** (integer) - The 1-based week index of the year.
```

--------------------------------

### GET Temporal.PlainDate.prototype.dayOfYear

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDate/dayOfYear

Retrieves the 1-based day index of the year for a given PlainDate instance.

```APIDOC
## GET Temporal.PlainDate.prototype.dayOfYear

### Description
Returns a positive integer representing the 1-based day index in the year of the Temporal.PlainDate instance. This property is calendar-dependent and read-only.

### Method
GET

### Response
#### Success Response (200)
- **dayOfYear** (integer) - The 1-based day index in the year.
```

--------------------------------

### Temporal.Instant.compare()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Instant/compare

Compares two Temporal.Instant instances to determine their chronological order.

```APIDOC
## Temporal.Instant.compare()

### Description
The Temporal.Instant.compare() static method returns a number (-1, 0, or 1) indicating whether the first instant comes before, is the same as, or comes after the second instant.

### Parameters
- **instant1** (string | Temporal.Instant) - Required - The first instant to compare.
- **instant2** (string | Temporal.Instant) - Required - The second instant to compare.

### Return value
- **number** - Returns -1 if instant1 comes before instant2, 0 if they are the same, and 1 if instant1 comes after instant2.
```

--------------------------------

### Resolve a bare module name with import maps

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/import.meta/resolve

This example demonstrates resolving a bare module name using import.meta.resolve(). It requires an import map to be defined in the environment to correctly resolve the name to a URL. The resolution occurs regardless of whether the target file exists.

```javascript
const moduleEntryPath = import.meta.resolve("my-module");
console.log(moduleEntryPath);
```

--------------------------------

### Retrieve values with Map.prototype.get()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/get

Basic usage of the get() method to retrieve values from a Map.

```javascript
const map = new Map();
map.set("bar", "foo");

console.log(map.get("bar"));
// Expected output: "foo"

console.log(map.get("baz"));
// Expected output: undefined
```

--------------------------------

### Sum all values in an array using reduceRight()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduceRight

This example demonstrates how to sum all values in an array using the reduceRight() method. It iterates from right to left, accumulating the sum.

```javascript
const array = [1, 2, 3, 4];

// Sum the array elements from right to left
const sum = array.reduceRight(
  (accumulator, currentValue) => accumulator + currentValue,
);

console.log(sum); // Output: 10
```

--------------------------------

### String Concatenation Example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Addition

Shows how the addition operator performs string concatenation when at least one operand is a string. The other operand is converted to a string.

```javascript
let str1 = 'Hello';
let str2 = ' World';
console.log(str1 + str2); // Output: "Hello World"
```

```javascript
let greeting = 'Hi, '; 
let name = 'MDN';
console.log(greeting + name); // Output: "Hi, MDN"
```

```javascript
let message = 'The answer is: ';
let result = 42;
console.log(message + result); // Output: "The answer is: 42"
```

--------------------------------

### RegExp.prototype.lastIndex

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/lastIndex

The lastIndex property specifies the index at which to start the next match for a regular expression instance.

```APIDOC
## Property: RegExp.prototype.lastIndex

### Description
The `lastIndex` property is a non-negative integer that specifies the index at which to start the next match. It is only utilized when the regular expression uses the `g` (global) or `y` (sticky) flags.

### Property Attributes
- **Writable**: yes
- **Enumerable**: no
- **Configurable**: no

### Behavior
- If `lastIndex` > input length: `exec()` fails to match and `lastIndex` resets to 0.
- If `lastIndex` <= input length: `exec()` attempts to match starting at `lastIndex`.
  - If match found: `lastIndex` updates to the end position of the match.
  - If no match found: `lastIndex` resets to 0.

### Usage Example
```javascript
const regex = /hi/g;
regex.lastIndex = 0;
regex.exec('hi hi'); // Returns ["hi", index: 0, ...]
// lastIndex is now 2
regex.exec('hi hi'); // Returns ["hi", index: 3, ...]
```
```

--------------------------------

### Using map() with Fibonacci sequence

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Iterator/map

Demonstrates creating an iterator for the Fibonacci sequence and then using map() to square each term. This example shows how to transform elements of an iterator lazily.

```javascript
function* fibonacci() {
  let [prev, curr] = [0, 1];
  while (true) {
    yield curr;
    [prev, curr] = [curr, prev + curr];
  }
}

const fib = fibonacci();
const mapped = Iterator.from(fib).map(x => x * x);

console.log(mapped.take(5).toArray()); // [ 1, 1, 4, 9, 25 ]
```

--------------------------------

### Promise.resolve() with Thenables

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise

This example shows how `Promise.resolve()` can handle not only native promises but also 'thenables' (objects with a `.then()` method), ensuring interoperability with various promise implementations.

```javascript
let thenable = {
    then: function(resolve, reject) {
        resolve(42);
    }
};

Promise.resolve(thenable).then(value => {
    console.log(value); // Output: 42
});
```

--------------------------------

### Using WeakMap.prototype.getOrInsert()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap/getOrInsert

Demonstrates how to use getOrInsert() to retrieve a value or insert a default if the key is absent. This method is useful for initializing entries in a WeakMap.

```javascript
const wm = new WeakMap();
const obj1 = {};
const obj2 = {};

// Key obj1 is not in the map, so it's added with value 1, and 1 is returned.
console.log(wm.getOrInsert(obj1, 1)); // Output: 1

// Key obj1 is now in the map, so its value (1) is returned.
console.log(wm.getOrInsert(obj1, 2)); // Output: 1

// Key obj2 is not in the map, so it's added with value 2, and 2 is returned.
console.log(wm.getOrInsert(obj2, 2)); // Output: 2

// The map now contains obj1 and obj2.
console.log(wm.has(obj1)); // Output: true
console.log(wm.has(obj2)); // Output: true
```

--------------------------------

### Remove all elements starting from index 2

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice

Removes all elements from the specified index to the end of the array.

```javascript
const myFish = ["angel", "clown", "mandarin", "sturgeon"];
const removed = myFish.splice(2);

// myFish is ["angel", "clown"]
// removed is ["mandarin", "sturgeon"]
```

--------------------------------

### Object Constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/__lookupSetter__

Details about the Object constructor and its usage.

```APIDOC
## Object Constructor

### Description
Represents the fundamental object in JavaScript's prototype chain.

### Method
Constructor

### Endpoint
N/A (Built-in Object)

### Parameters
None directly for the constructor itself, but it's used to create objects.

### Request Example
```javascript
const obj = new Object();
const objLiteral = {};
```

### Response
#### Success Response (200)
An empty object or an object initialized with properties.

#### Response Example
```json
{}
```
```

--------------------------------

### Throwing a user-defined error

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/throw

Example of validating input types and throwing a TypeError when expectations are not met.

```javascript
function getRectArea(width, height) {
  if (isNaN(width) || isNaN(height)) {
    throw new TypeError("Parameter is not a number!");
  }
  return width * height;
}

try {
  getRectArea(3, "foo");
} catch (e) {
  console.error(e);
  // Expected output: TypeError: Parameter is not a number!
}
```

--------------------------------

### Common expression statements

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/Expression_statement

Examples of expressions used as statements, such as function calls and array iterations.

```javascript
console.log("Hello");
```

```javascript
[1, 2, 3].forEach((i) => console.log(i));
```

--------------------------------

### Log typed array contents with forEach()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray/forEach

This example demonstrates how to use forEach() to iterate over a typed array and log each element along with its index. Ensure the typed array is initialized before calling forEach().

```javascript
const buffer = new ArrayBuffer(8);
const uint8 = new Uint8Array(buffer);

uint8[0] = 10;
uint8[1] = 20;

uint8.forEach((element, index) => {
  console.log(`Index ${index}: ${element}`);
});
// Expected output:
// Index 0: 10
// Index 1: 20
```

--------------------------------

### Using match()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/match

Demonstrates finding a specific pattern in a string using a regular expression with the ignoreCase flag.

```javascript
const str = 'For more information, see Chapter 3.4.5.1';
const re = /see (chapter \d+(\.\d)*)/i;
const found = str.match(re);

console.log(found);
```

--------------------------------

### Ambiguous property access syntax

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Lexical_grammar

Example where ASI is not triggered because the code is parsed as a property accessor.

```javascript
a = b
[1, 2, 3].forEach(console.log)
```

--------------------------------

### Adding an hour cycle via the configuration object

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale/hourCycle

Demonstrates setting the hour cycle using the configuration object argument in the Intl.Locale constructor.

```javascript
const locale = new Intl.Locale("en-US", { hourCycle: "h24" });
console.log(locale.hourCycle); // "h24"
```

--------------------------------

### Format currency range with formatRange()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/NumberFormat/formatRange

Use the formatRange() getter function for formatting a range of currency values. This example demonstrates formatting a range from 1000 to 2000 with USD currency.

```javascript
const formatter = new Intl.NumberFormat('en-US', {
  style: 'currency',
  currency: 'USD',
});

console.log(formatter.formatRange(1000, 2000)); // Expected output: $1,000 – $2,000
```

--------------------------------

### Provide initial value for reduce

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Reduce_of_empty_array_with_no_initial_value

To solve the TypeError, provide an initial value to the reduce function. This value serves as the starting point for the accumulator.

```javascript
const numbers = [];
const sum = numbers.reduce((acc, current) => acc + current, 0); // Initial value is 0
console.log(sum); // Output: 0
```

--------------------------------

### JavaScript String Constructor and Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/charAt

Details on the String constructor and its static and instance methods, including deprecated and non-standard ones.

```APIDOC
## String Constructor and Methods

### Description
Provides information about the `String()` constructor and its associated static and instance methods.

### Methods
#### Static Methods
- `String.fromCharCode()`
- `String.fromCodePoint()`
- `String.raw()`

#### Instance Methods
- `anchor()` Deprecated
- `at()`
- `big()` Deprecated
- `blink()` Deprecated
- `bold()` Deprecated
- `charAt()`
- `charCodeAt()`
- `codePointAt()`
- `concat()`
- `endsWith()`
- `fixed()` Deprecated
- `fontcolor()` Deprecated
- `fontsize()` Deprecated
- `includes()`
- `indexOf()`
- `isWellFormed()`
- `italics()` Deprecated
- `lastIndexOf()`
- `link()` Deprecated
- `localeCompare()`
- `match()`
- `matchAll()`
- `normalize()`
- `padEnd()`
- `padStart()`
- `repeat()`
- `replace()`
- `replaceAll()`
- `search()`
- `slice()`
- `small()` Deprecated
- `split()`
- `startsWith()`
- `strike()` Deprecated
- `sub()` Deprecated
- `substr()` Deprecated
- `substring()`
- `sup()` Deprecated
- `toLocaleLowerCase()`
- `toLocaleUpperCase()`
- `toLowerCase()`
- `toString()`
- `toUpperCase()`
- `toWellFormed()`
- `trim()`
- `trimEnd()`
- `trimStart()`
- `valueOf()`
- `[Symbol.iterator]()`

### Instance Properties
- `length`
```

--------------------------------

### Demonstrate Short-circuiting Evaluation

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_precedence

Examples showing how short-circuiting operators prevent the evaluation of subsequent operands based on the result of the left operand.

```javascript
C() || (B() && A())
```

```javascript
(A() && B()) || C()
```

--------------------------------

### Initialize a locale with configuration options

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale/Locale

Using the optional configuration object to override or set specific locale properties like hourCycle.

```javascript
const locale = new Intl.Locale("en-US", { hourCycle: "h23" });
```

--------------------------------

### Using zoned relativeTo with DST changes

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Duration/compare

Compares durations considering daylight saving time changes. The example shows how a day with 25 hours (due to DST shift) affects duration comparison.

```javascript
const duration1 = Temporal.Duration.from({ days: 1 });
const duration2 = Temporal.Duration.from({ hours: 24 });
const zonedRelativeTo = Temporal.ZonedDateTime.from("2024-11-03T00:00:00-05:00[America/New_York]");

Temporal.Duration.compare(duration1, duration2, { relativeTo: zonedRelativeTo }); // 1, because the day has 25 hours
```

--------------------------------

### Check and resize ArrayBuffer

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/resizable

Create a resizable ArrayBuffer and check its resizable property before resizing. This example demonstrates how to conditionally resize a buffer based on its resizable attribute.

```javascript
const buffer = new ArrayBuffer(8, { maxByteLength: 16 });
console.log(buffer.resizable); // true

if (buffer.resizable) {
  buffer.resize(12);
  console.log(buffer.byteLength); // 12
}

const fixedBuffer = new ArrayBuffer(8);
console.log(fixedBuffer.resizable); // false

// fixedBuffer.resize(12); // Throws RangeError: This ArrayBuffer is not resizable.
```

--------------------------------

### Dynamically create a function with no arguments

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/Function

This example shows how to create a function dynamically that takes no arguments. The Function constructor is called with only the function body string. The created function executes in the global scope.

```javascript
const sayHello = new Function('console.log("Hello, world!");');
sayHello(); // Hello, world!
```

--------------------------------

### Set UTC minutes and seconds

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setUTCMinutes

This example demonstrates setting only the minutes and seconds for a Date object in UTC. The milliseconds will be taken from the current Date object's milliseconds.

```javascript
const event = new Date('2025-07-01T12:00:00Z');

console.log(event.getUTCMilliseconds()); // Example: 123

event.setUTCMinutes(45, 30);

console.log(event.toISOString()); // Expected output: "2025-07-01T12:45:30.123Z"
```

--------------------------------

### Comparison: substring() vs. substr() vs. slice()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/substring

Highlights the key differences between String.prototype.substring(), String.prototype.substr(), and String.prototype.slice().

```APIDOC
## String Method Comparisons: substring(), substr(), slice()

### Description
Compares the behavior of `substring()`, `substr()`, and `slice()` methods, focusing on parameter handling, especially with negative values and argument order.

### Method
N/A (JavaScript string methods)

### Endpoint
N/A

### Key Differences:

#### `substring(indexStart, indexEnd)`
- Parameters: `start` index, `end` index (exclusive).
- Negative/NaN: Treated as 0.
- `indexStart > indexEnd`: Arguments are swapped.
- Returns a new string.

#### `substr(start, length)`
- Parameters: `start` index, `length` of substring.
- Negative `start`: Wraps around from the end of the string.
- Negative `length`: Treated as 0.
- **Legacy feature**: Avoid using if possible.
- Returns a new string.

#### `slice(indexStart, indexEnd)`
- Parameters: `start` index, `end` index (exclusive).
- Negative values: Count backwards from the end of the string.
- `indexStart > indexEnd`: Returns an empty string.
- Returns a new string.

### Request Example
```javascript
const str = "Mozilla";

// substring()
console.log(str.substring(5, 2));  // "illa" (swapped)
console.log(str.substring(-5, 2)); // "Mo" (negative treated as 0)

// substr()
console.log(str.substr(5, 2));   // "lla"
console.log(str.substr(-2, 2));  // "ia" (negative wraps)

// slice()
console.log(str.slice(5, 2));    // "" (start > end)
console.log(str.slice(-2, 2));   // "" (negative counts from end, but start > end)
console.log(str.slice(5, -2));   // "ll" (negative counts from end)
```

### Response
#### Success Response (200)
- **string** (string) - The extracted substring based on the method and parameters used.

#### Response Example
```json
"illa"
```
```

--------------------------------

### AggregateError() Constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/AggregateError/AggregateError

This section details the AggregateError() constructor, its syntax, parameters, and provides an example of its usage.

```APIDOC
## AggregateError() Constructor

### Description
Creates `AggregateError` objects. This constructor can be called with or without the `new` keyword.

### Syntax
```javascript
new AggregateError(errors, message, options)
AggregateError(errors, message, options)
```

### Parameters

#### `errors`
- **Iterable** - An iterable of errors. These may not necessarily be `Error` instances.

#### `message` (Optional)
- **String** - An optional human-readable description of the aggregate error.

#### `options` (Optional)
- **Object** - An object that may contain the following properties:
  - **`cause`** (any) - An optional property indicating the specific cause of the error. This can be used to pass the original error when re-throwing.

### Request Example
```json
{
  "errors": [new Error("Error 1"), new TypeError("Error 2")],
  "message": "Multiple errors occurred",
  "options": {
    "cause": "Initial error details"
  }
}
```

### Response
#### Success Response (200)
An `AggregateError` object is returned.

#### Response Example
```json
{
  "name": "AggregateError",
  "message": "Multiple errors occurred",
  "errors": [
    {
      "name": "Error",
      "message": "Error 1"
    },
    {
      "name": "TypeError",
      "message": "Error 2"
    }
  ],
  "cause": "Initial error details"
}
```
```

--------------------------------

### Switch (true) pattern for if...else chains

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/switch

This example demonstrates the switch (true) pattern as an alternative to if...else chains, which is particularly useful for utilizing fall-through behavior.

```javascript
function example(a, b, c) {
  switch (true) {
    case a > b && b > c:
      console.log("Scenario 1");
      break;
    case b > a && b > c:
      console.log("Scenario 2");
      break;
    default:
      console.log("Scenario 3");
      break;
  }
}

example(1, 2, 3);
// Output: Scenario 3
example(3, 2, 1);
// Output: Scenario 1
```

--------------------------------

### Example Error Messages

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/String_literal_EOL

These are common variations of the error message seen in different JavaScript engines.

```javascript
SyntaxError: Invalid or unexpected token (V8-based)
```

```javascript
SyntaxError: '' string literal contains an unescaped line break (Firefox)
```

```javascript
SyntaxError: Unexpected EOF (Safari)
```

--------------------------------

### Using Generator.prototype.next() with a list

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator/next

This example shows how to paginate a list into chunks using a generator. Each call to next() yields one chunk of the list, controlled by the pageSize. This is useful for handling large datasets efficiently.

```javascript
function* getPage(list, pageSize) {
  for (let i = 0; i < list.length; i += pageSize) {
    yield list.slice(i, i + pageSize);
  }
}

const list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
const pageSize = 3;
const paginator = getPage(list, pageSize);

console.log(paginator.next()); // { value: [ 1, 2, 3 ], done: false }
console.log(paginator.next()); // { value: [ 4, 5, 6 ], done: false }
console.log(paginator.next()); // { value: [ 7, 8, 9 ], done: false }
console.log(paginator.next()); // { value: [ 10 ], done: false }
console.log(paginator.next()); // { value: undefined, done: true }
```

--------------------------------

### SyntaxError Messages

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Regex_backslash_at_end_of_pattern

These are examples of the SyntaxError message \ at end of pattern as seen in different JavaScript engines.

```javascript
SyntaxError: Invalid regular expression: /\/: \ at end of pattern (V8-based)
```

```javascript
SyntaxError: \ at end of pattern (Firefox)
```

```javascript
SyntaxError: Invalid regular expression: \ at end of pattern (Safari)
```

--------------------------------

### BigInt Constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/BigInt/toLocaleString

Documentation for the BigInt constructor and its associated methods.

```APIDOC
## BigInt Constructor

### Description
Provides information about the `BigInt()` constructor and its related methods.

### Method
Constructor

### Endpoint
N/A (Built-in Object)

### Parameters
N/A

### Request Body
N/A

### Response
N/A

## BigInt.asIntN()

### Description
Returns a BigInt value that represents the given number.

### Method
Static Method

### Endpoint
`BigInt.asIntN(bits, bigint)`

### Parameters
#### Path Parameters
N/A

#### Query Parameters
N/A

#### Request Body
N/A

### Response
#### Success Response (200)
- **value** (BigInt) - The BigInt value.

#### Response Example
```json
{
  "value": "0n"
}
```

## BigInt.asUintN()

### Description
Returns a BigInt value that represents the given number.

### Method
Static Method

### Endpoint
`BigInt.asUintN(bits, bigint)`

### Parameters
#### Path Parameters
N/A

#### Query Parameters
N/A

#### Request Body
N/A

### Response
#### Success Response (200)
- **value** (BigInt) - The BigInt value.

#### Response Example
```json
{
  "value": "0n"
}
```

## BigInt.prototype.toLocaleString()

### Description
Returns a string with a language-sensitive representation of this BigInt number.

### Method
Instance Method

### Endpoint
`bigint.toLocaleString([locales[, options]])`

### Parameters
#### Path Parameters
N/A

#### Query Parameters
N/A

#### Request Body
N/A

### Response
#### Success Response (200)
- **string** (string) - A string representing the BigInt.

#### Response Example
```json
{
  "string": "123"
}
```

## BigInt.prototype.toString()

### Description
Returns a string representing the specified BigInt object.

### Method
Instance Method

### Endpoint
`bigint.toString([radix])`

### Parameters
#### Path Parameters
N/A

#### Query Parameters
N/A

#### Request Body
N/A

### Response
#### Success Response (200)
- **string** (string) - A string representing the BigInt.

#### Response Example
```json
{
  "string": "123"
}
```

## BigInt.prototype.valueOf()

### Description
Returns the primitive value of a BigInt object.

### Method
Instance Method

### Endpoint
`bigint.valueOf()`

### Parameters
#### Path Parameters
N/A

#### Query Parameters
N/A

#### Request Body
N/A

### Response
#### Success Response (200)
- **value** (BigInt) - The primitive value of the BigInt.

#### Response Example
```json
{
  "value": "123n"
}
```
```

--------------------------------

### Define a setter in a class

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/set

This example demonstrates using the `set` syntax within a class to define a public instance setter. Setter properties defined this way are shared by all instances.

```javascript
class MyClass {
  set data(value) {
    this._data = value;
  }
  get data() {
    return this._data;
  }
}

const instance = new MyClass();
instance.data = "some data";
console.log(instance.data); // "some data"
```

--------------------------------

### Temporal.Instant Static Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Instant

Static methods available on the Temporal.Instant object for creating and comparing instants.

```APIDOC
## Temporal.Instant Static Methods

### Description
Provides static methods for creating and comparing Temporal.Instant objects.

### Methods
- `Temporal.Instant.compare(instant1, instant2)`
- `Temporal.Instant.from(value)`
- `Temporal.Instant.fromEpochMilliseconds(milliseconds)`
- `Temporal.Instant.fromEpochNanoseconds(nanoseconds)`

### Endpoint
N/A (Static methods)

### Parameters
#### `compare(instant1, instant2)`
- **instant1** (Temporal.Instant) - The first instant to compare.
- **instant2** (Temporal.Instant) - The second instant to compare.

#### `from(value)`
- **value** (string | object) - A value that can be converted to an Instant.

#### `fromEpochMilliseconds(milliseconds)`
- **milliseconds** (number) - The number of milliseconds since the Unix epoch.

#### `fromEpochNanoseconds(nanoseconds)`
- **nanoseconds** (bigint) - The number of nanoseconds since the Unix epoch.

### Request Example
```javascript
const instant1 = Temporal.Instant.fromEpochMilliseconds(1678886400000);
const instant2 = Temporal.Instant.fromEpochNanoseconds(1678886400000000000n);
const comparison = Temporal.Instant.compare(instant1, instant2);
```

### Response
#### Success Response (200)
- `compare`: (-1 | 0 | 1) - Result of the comparison.
- `from`, `fromEpochMilliseconds`, `fromEpochNanoseconds`: (Temporal.Instant) - A new Instant object.

#### Response Example
```json
{
  "comparisonResult": 0,
  "newInstant": {
    "__brand": "Temporal.Instant",
    "epochNanoseconds": "1678886400000000000"
  }
}
```
```

--------------------------------

### Typical invalid assignments

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Invalid_assignment_left-hand_side

Examples of incorrect operator usage in conditional statements and string operations.

```javascript
if (x = 5) {
  // ...
}

"string" + "string" = "stringstring";
```

--------------------------------

### GET Temporal.ZonedDateTime.prototype.epochNanoseconds

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/epochNanoseconds

Retrieves the number of nanoseconds elapsed since the Unix epoch for a ZonedDateTime instance.

```APIDOC
## GET Temporal.ZonedDateTime.prototype.epochNanoseconds

### Description
Returns a `BigInt` representing the number of nanoseconds elapsed since the Unix epoch (January 1, 1970, UTC) to the instant represented by the `Temporal.ZonedDateTime` instance.

### Method
GET

### Endpoint
Temporal.ZonedDateTime.prototype.epochNanoseconds

### Response
#### Success Response (200)
- **value** (BigInt) - The number of nanoseconds since the Unix epoch.

#### Response Example
```javascript
const zdt = new Temporal.ZonedDateTime(1000000000000000000n, "UTC");
console.log(zdt.epochNanoseconds); // 1000000000000000000n
```
```

--------------------------------

### GET Temporal.PlainYearMonth.prototype.inLeapYear

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainYearMonth/inLeapYear

Access the inLeapYear property to determine if the year of a PlainYearMonth instance is a leap year.

```APIDOC
## GET Temporal.PlainYearMonth.prototype.inLeapYear

### Description
The `inLeapYear` accessor property of `Temporal.PlainYearMonth` instances returns a boolean indicating whether this year-month is in a leap year. A leap year is a year that has more days than a common year, and this property is calendar-dependent.

### Method
GET (Accessor Property)

### Response
- **inLeapYear** (boolean) - Returns true if the year is a leap year, false otherwise.
```

--------------------------------

### Verify trimStart and trimLeft equivalence

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/trimStart

Demonstrates that trimLeft is an alias for trimStart.

```javascript
String.prototype.trimLeft === String.prototype.trimStart;
```

--------------------------------

### Reflect.ownKeys()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect

The Reflect.ownKeys() method is used to get an array of all own property keys (both strings and symbols) of an object.

```APIDOC
## Reflect.ownKeys()

### Description
Gets an array of all own property keys (strings and symbols) of an object.

### Method
Static method of Reflect

### Endpoint
N/A (JavaScript built-in object)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const sym = Symbol('foo');
const obj = { foo: 1, [sym]: 2 };
const keys = Reflect.ownKeys(obj);
console.log(keys); // Output: ['foo', Symbol(foo)]
```

### Response
#### Success Response (200)
Returns an array of the object's own property keys.

#### Response Example
```javascript
['foo', Symbol(foo)]
```
```

--------------------------------

### RegExp Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/Symbol.split

Details on methods available on RegExp instances.

```APIDOC
## RegExp.prototype.exec()

### Description
Executes a search for a match in a specified string. Returns a result array, or null if no match is found.

### Method
Instance Method

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const regex = /abc/;
const result = regex.exec('abcde');
```

### Response
#### Success Response (200)
An array containing the match results, or null.

#### Response Example
```json
{
  "0": "abc",
  "index": 0,
  "input": "abcde",
  "groups": null
}
```
```

```APIDOC
## RegExp.prototype.test()

### Description
Tests for a match in a specified string. Returns true or false.

### Method
Instance Method

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const regex = /abc/;
const match = regex.test('abcde');
```

### Response
#### Success Response (200)
Boolean indicating if a match was found.

#### Response Example
```json
{
  "match": true
}
```
```

```APIDOC
## RegExp.prototype.toString()

### Description
Returns a string representing the regular expression.

### Method
Instance Method

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const regex = /abc/gi;
const str = regex.toString();
```

### Response
#### Success Response (200)
String representation of the RegExp.

#### Response Example
```json
{
  "representation": "/abc/gi"
}
```
```

```APIDOC
## RegExp.prototype.[Symbol.match]()

### Description
Matches a string against the regular expression.

### Method
Instance Method

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const regex = /abc/;
const result = 'abcde'.match(regex);
```

### Response
#### Success Response (200)
An array containing the match results, or null.

#### Response Example
```json
{
  "0": "abc",
  "index": 0,
  "input": "abcde",
  "groups": null
}
```
```

```APIDOC
## RegExp.prototype.[Symbol.matchAll]()

### Description
Returns an iterator of all results matching the string against the regular expression, including capturing groups.

### Method
Instance Method

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const regex = /(a)(b)/g;
const iterator = 'ababc'.matchAll(regex);
```

### Response
#### Success Response (200)
An iterator yielding match objects.

#### Response Example
```json
{
  "matches": [
    {
      "0": "ab",
      "1": "a",
      "2": "b",
      "index": 0,
      "input": "ababc",
      "groups": null
    },
    {
      "0": "ab",
      "1": "a",
      "2": "b",
      "index": 2,
      "input": "ababc",
      "groups": null
    }
  ]
}
```
```

```APIDOC
## RegExp.prototype.[Symbol.replace]()

### Description
Replaces occurrences of a pattern matched by the regular expression with a replacement string or function.

### Method
Instance Method

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const regex = /abc/g;
const result = 'abcabc'.replace(regex, 'xyz');
```

### Response
#### Success Response (200)
Returns the new string with replacements made.

#### Response Example
```json
{
  "replacedString": "xyzxyz"
}
```
```

```APIDOC
## RegExp.prototype.[Symbol.search]()

### Description
Searches for a match between the regular expression and a specified string. Returns the index of the first match, or -1 if no match is found.

### Method
Instance Method

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const regex = /abc/;
const index = 'xyzabc'.search(regex);
```

### Response
#### Success Response (200)
The index of the first match, or -1.

#### Response Example
```json
{
  "index": 3
}
```
```

```APIDOC
## RegExp.prototype.[Symbol.split]()

### Description
Splits a string into an array of substrings by separating the string into substrings, using the regular expression to determine where to make the split.

### Method
Instance Method

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const regex = /,/;
const parts = 'a,b,c'.split(regex);
```

### Response
#### Success Response (200)
An array of substrings.

#### Response Example
```json
{
  "parts": ["a", "b", "c"]
}
```
```

```APIDOC
## RegExp.prototype.compile()

### Description
Compiles a regular expression. This method is deprecated and should not be used in new code.

### Method
Instance Method (Deprecated)

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const regex = /abc/;
regex.compile(); // Deprecated
```

### Response
#### Success Response (200)
Undefined.

#### Response Example
```json
{
  "status": "deprecated"
}
```
```

--------------------------------

### Resolve a relative module path

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/import.meta/resolve

This example shows how to resolve a relative module path using import.meta.resolve(). The function returns the absolute URL that would be imported.

```javascript
const resolvedPath = import.meta.resolve("./lib/helper.js");
console.log(resolvedPath);
```

--------------------------------

### Using with statement with Math object

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/with

This example demonstrates how the `with` statement can be used to simplify access to properties and methods of the `Math` object. It avoids repeatedly typing `Math.` before each property or method call.

```javascript
with (Math) {
  console.log(PI);
  console.log(cos(0));
  console.log(sin(0));
}
```

--------------------------------

### GET RegExp.prototype.unicode

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/unicode

Retrieves the boolean value indicating if the 'u' flag is set on a RegExp instance.

```APIDOC
## GET RegExp.prototype.unicode

### Description
Returns true if the 'u' flag was used with the regular expression, otherwise returns false. The 'u' flag enables Unicode-aware mode, affecting how code points, surrogate pairs, and lastIndex are handled.

### Method
GET

### Response
#### Success Response (200)
- **unicode** (boolean) - Returns true if the 'u' flag is present, false otherwise.
```

--------------------------------

### Count words in Japanese using Intl.Segmenter

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Segmenter/Segmenter

This example demonstrates counting words in a Japanese string using Intl.Segmenter with the 'word' granularity. Standard String methods might yield incorrect results for languages like Japanese.

```javascript
const text = "Hello world!";
const segmenter = new Intl.Segmenter('en', {
  granularity: 'word'
});
const segments = Array.from(segmenter.segment(text));
console.log(segments.length); // 2
```

--------------------------------

### Consuming a ReadableStream with use()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DisposableStack/use

This example demonstrates consuming a ReadableStream using its default reader. The reader is automatically closed upon function completion, provided it has a [Symbol.dispose]() method that synchronously releases the stream's lock.

```javascript
const stack = new DisposableStack();
const reader = stream.getReader();
stack.use(reader);

```

--------------------------------

### Optional Resource Declaration

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/using

Using allows variables to be null or undefined, enabling optional resource handling.

```javascript
let resource = getResource();
try {
  if (resource != null) {
    // use resource
  }
} finally {
  if (resource != null) {
    resource[Symbol.dispose]();
  }
}
```

```javascript
using resource = getResource();
// use resource
```

--------------------------------

### Find prime numbers in an array

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter

This example demonstrates filtering an array to find prime numbers. Note: The isPrime() implementation is for demonstration only; use a more efficient algorithm for real-world applications.

```javascript
const numbers = [-5, 12, 1, 3, 130, -44, 0, 10, 15, 7];

function isPrime(element, index, array) {
  if (element < 2) return false;
  for (let i = 2; i < element; i++) {
    if (element % i === 0) return false;
  }
  return true;
}

console.log(numbers.filter(isPrime)); // Output: [3, 7, 13]
```

--------------------------------

### Using DOM APIs instead of small()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/small

This example shows the recommended modern approach using DOM APIs to achieve the same visual effect as the deprecated small() method. It involves creating a new element and setting its text content.

```javascript
const str = "Mozilla";

const pElem = document.createElement("p");
const smallElem = document.createElement("small");

smallElem.textContent = str;
pElem.appendChild(smallElem);

document.body.appendChild(pElem);
```

--------------------------------

### Validation using Proxy's set() handler

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy

This example demonstrates how to use the set() handler of a Proxy to validate incoming values before they are assigned to the target object.

```javascript
const validator = {
  set(obj, prop, value) {
    if (prop === 'age') {
      if (typeof value !== 'number' || value < 0) {
        return false;
      }
    }
    obj[prop] = value;
    return true;
  }
};

const person = new Proxy({}, validator);
person.age = 25; // true
console.log(person.age); // 25

person.age = 'twenty-five'; // false
console.log(person.age); // 25 (age is not set)
```

--------------------------------

### DataView.prototype.setUint32()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setUint32

Stores a 32-bit unsigned integer in the 4 bytes starting at the specified byte offset of the DataView.

```APIDOC
## DataView.prototype.setUint32()

### Description
The setUint32() method of DataView instances takes a number and stores it as a 32-bit unsigned integer in the 4 bytes starting at the specified byte offset of this DataView.

### Parameters
- **byteOffset** (number) - Required - The offset, in bytes, from the start of the view to store the data in.
- **value** (number) - Required - The value to set.
- **littleEndian** (boolean) - Optional - Indicates whether the data is stored in little- or big-endian format. If false or undefined, a big-endian value is written.

### Return value
- **undefined**

### Exceptions
- **RangeError** - Thrown if the byteOffset is set such that it would store beyond the end of the view.
```

--------------------------------

### DataView.prototype.setUint16()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setUint16

Stores a 16-bit unsigned integer in the 2 bytes starting at the specified byte offset of the DataView.

```APIDOC
## DataView.prototype.setUint16()

### Description
The setUint16() method of DataView instances takes a number and stores it as a 16-bit unsigned integer in the 2 bytes starting at the specified byte offset of this DataView.

### Parameters
- **byteOffset** (number) - Required - The offset, in bytes, from the start of the view to store the data in.
- **value** (number) - Required - The value to set.
- **littleEndian** (boolean) - Optional - Indicates whether the data is stored in little- or big-endian format. If false or undefined, a big-endian value is written.

### Return value
- **undefined**

### Exceptions
- **RangeError** - Thrown if the byteOffset is set such that it would store beyond the end of the view.
```

--------------------------------

### Temporal.PlainTime.from() example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainTime

Creates a new Temporal.PlainTime object from various input types, including another PlainTime object, an object with time properties, or an RFC 9557 string. This method provides flexibility in creating time instances.

```javascript
Temporal.PlainTime.from(thing)
```

--------------------------------

### DataView.prototype.setInt16()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setInt16

Stores a 16-bit signed integer in the 2 bytes starting at the specified byte offset of the DataView.

```APIDOC
## DataView.prototype.setInt16()

### Description
The setInt16() method of DataView instances takes a number and stores it as a 16-bit signed integer in the 2 bytes starting at the specified byte offset of this DataView.

### Parameters
#### Path Parameters
- **byteOffset** (number) - Required - The offset, in bytes, from the start of the view to store the data in.
- **value** (number) - Required - The value to set.
- **littleEndian** (boolean) - Optional - Indicates whether the data is stored in little- or big-endian format. If false or undefined, a big-endian value is written.

### Return value
- **undefined**

### Exceptions
- **RangeError** - Thrown if the byteOffset is set such that it would store beyond the end of the view.
```

--------------------------------

### JavaScript Function Object Overview

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/prototype

Overview of the Function constructor and its associated methods and properties.

```APIDOC
## Function Constructor

### Description
The `Function` constructor creates a new `Function` object. Calling the constructor directly can create functions dynamically.

### Instance Methods
- **apply()** - Calls a function with a given this value and arguments provided as an array.
- **bind()** - Creates a new function that, when called, has its this keyword set to the provided value.
- **call()** - Calls a function with a given this value and arguments provided individually.
- **toString()** - Returns a string representing the source code of the function.
- **[Symbol.hasInstance]()** - Determines whether a constructor object recognizes an object as one of its instances.

### Instance Properties
- **length** (number) - Specifies the number of arguments expected by the function.
- **name** (string) - The name of the function.
- **prototype** (object) - The prototype object for functions.
```

--------------------------------

### Array.prototype.fill()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/fill

The fill() method fills all elements in an array from a start index to an end index with a static value.

```APIDOC
## Array.prototype.fill()

### Description
The fill() method changes all elements within a range of indices in an array to a static value. It returns the modified array.

### Parameters
- **value** (any) - Required - The value to fill the array with.
- **start** (integer) - Optional - Zero-based index at which to start filling. Defaults to 0.
- **end** (integer) - Optional - Zero-based index at which to end filling (exclusive). Defaults to array.length.

### Return value
- **Array** - The modified array, filled with the specified value.
```

--------------------------------

### Temporal.Now API Documentation

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Now

Documentation for the static methods available on the Temporal.Now object.

```APIDOC
## Temporal.Now Namespace

### Description
The `Temporal.Now` namespace object contains static methods for getting the current time in various formats. It is not a constructor and its properties and methods are static.

### Static Methods

#### `Temporal.Now.instant()`

##### Description
Returns the current time as a `Temporal.Instant` object.

##### Method
GET (conceptual)

##### Endpoint
N/A (static method)

#### `Temporal.Now.plainDateISO([timeZone])`

##### Description
Returns the current date as a `Temporal.PlainDate` object, in the ISO 8601 calendar and the specified time zone.

##### Parameters

*   **timeZone** (string | `Temporal.TimeZone` object) - Optional - The time zone to use. Defaults to the system's current time zone.

##### Method
GET (conceptual)

##### Endpoint
N/A (static method)

#### `Temporal.Now.plainDateTimeISO([timeZone])`

##### Description
Returns the current date and time as a `Temporal.PlainDateTime` object, in the ISO 8601 calendar and the specified time zone.

##### Parameters

*   **timeZone** (string | `Temporal.TimeZone` object) - Optional - The time zone to use. Defaults to the system's current time zone.

##### Method
GET (conceptual)

##### Endpoint
N/A (static method)

#### `Temporal.Now.plainTimeISO([timeZone])`

##### Description
Returns the current time as a `Temporal.PlainTime` object, in the specified time zone.

##### Parameters

*   **timeZone** (string | `Temporal.TimeZone` object) - Optional - The time zone to use. Defaults to the system's current time zone.

##### Method
GET (conceptual)

##### Endpoint
N/A (static method)

#### `Temporal.Now.timeZoneId()`

##### Description
Returns a time zone identifier representing the system's current time zone.

##### Method
GET (conceptual)

##### Endpoint
N/A (static method)

#### `Temporal.Now.zonedDateTimeISO([timeZone])`

##### Description
Returns the current date and time as a `Temporal.ZonedDateTime` object, in the ISO 8601 calendar and the specified time zone.

##### Parameters

*   **timeZone** (string | `Temporal.TimeZone` object) - Optional - The time zone to use. Defaults to the system's current time zone.

##### Method
GET (conceptual)

##### Endpoint
N/A (static method)

### Reduced Time Precision

To offer protection against timing attacks and fingerprinting, the precision of the `Temporal.Now` functions might get rounded depending on browser settings. For example, in Firefox, `privacy.reduceTimerPrecision` can round the precision to 2ms or more if `privacy.resistFingerprinting` is enabled.
```

--------------------------------

### Ambiguous function call syntax

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Lexical_grammar

Example where ASI is not triggered because the code can be parsed as a valid function call.

```javascript
a = b
(function() {})()
```

--------------------------------

### Temporal.Instant() Constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Instant/Instant

Creates a new Temporal.Instant object. This constructor is experimental and requires the 'new' keyword.

```APIDOC
## Temporal.Instant()

### Description
Creates a new `Temporal.Instant` object representing the instant in time specified by `epochNanoseconds`. This constructor is equivalent to `Temporal.Instant.fromEpochNanoseconds()`.

### Method
`new Temporal.Instant(epochNanoseconds)`

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Parameters
`epochNanoseconds`
    
A BigInt representing the number of nanoseconds since the Unix epoch.

### Return value
A new `Temporal.Instant` object.

### Exceptions
`RangeError`
    
Thrown if `epochNanoseconds` represents an instant outside the range of representable instants.

### Request Example
```javascript
const instant = new Temporal.Instant(1234567890123456789n);
```

### Response
#### Success Response (200)
`Temporal.Instant` object

#### Response Example
```json
{
  "example": "Temporal.Instant object"
}
```
```

--------------------------------

### Find the first prime number in an array

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/find

This example demonstrates finding the first prime number in an array. The `isPrime` function is for illustrative purposes; consider optimized algorithms for production.

```javascript
function isPrime(num) {
  if (num <= 1) return false;
  if (num <= 3) return true;
  if (num % 2 === 0 || num % 3 === 0) return false;
  for (let i = 5; i * i <= num; i = i + 6) {
    if (num % i === 0 || num % (i + 2) === 0) return false;
  }
  return true;
}

const numbers = [1, 4, 7, 11, 13, 16];
const firstPrime = numbers.find(isPrime);

console.log(firstPrime); // 7
```

--------------------------------

### Basic Usage of String.length

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/length

Demonstrates the basic usage of the `length` property on a string.

```APIDOC
## Example: Basic Usage

### Description
This example shows how to get the length of a simple string.

### Code
```javascript
const myString = "Hello";
console.log(myString.length); // Output: 5
```
```

--------------------------------

### Adding a region via the configuration object argument

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale/region

Demonstrates how to specify a region by setting the region property in the configuration object passed to the Intl.Locale constructor.

```javascript
const locale = new Intl.Locale("en", { region: "US" });
console.log(locale.region); // "US"
```

--------------------------------

### Bitwise NOT operation example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Bitwise_NOT

Demonstrates the bitwise NOT operation on the number 9. The operator returns a 32-bit integer.

```javascript
9 (base 10) = 00000000000000000000000000001001 (base 2)
               --------------------------------
~9 (base 10) = 11111111111111111111111111110110 (base 2) = -10 (base 10)
```

--------------------------------

### Reflect.construct() vs. Object.create()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect/construct

This example highlights the difference between Reflect.construct() and Object.create() when constructing objects. Reflect.construct() correctly sets `new.target`, while Object.create() with `apply` results in `new.target` being undefined.

```javascript
function MyConstructor() {
  console.log(new.target);
}

const args = [];

// Using Reflect.construct()
Reflect.construct(MyConstructor, args);
// Expected output: [Function: MyConstructor]

// Using Object.create() and apply()
const obj = {};
MyConstructor.apply(obj, args);
// Expected output: undefined
```

--------------------------------

### Decode a Cyrillic URL component

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/decodeURIComponent

This example shows how to decode a Cyrillic URL component using decodeURIComponent().

```javascript
const encoded = "%D1%82%D0%B5%D1%81%D1%82";
const decoded = decodeURIComponent(encoded);
console.log(decoded); // Output: тест
```

--------------------------------

### String.prototype.startsWith()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/startsWith

Determines if a string begins with the characters of a specified string.

```APIDOC
## String.prototype.startsWith()

### Description
This method lets you determine whether or not a string begins with another string. This method is case-sensitive.

### Method
N/A (Instance method of String)

### Endpoint
N/A (Instance method)

### Parameters
#### Parameters
- **searchString** (string) - Required - The characters to be searched for at the start of this string. Cannot be a regex. All values that are not regexes are coerced to strings.
- **position** (number) - Optional - The start position at which `searchString` is expected to be found. Defaults to `0`.

### Request Example
```javascript
const str = "Hello world";
console.log(str.startsWith("Hello")); // true
console.log(str.startsWith("world", 6)); // true
```

### Response
#### Success Response (boolean)
- **true** if the given characters are found at the beginning of the string, including when `searchString` is an empty string.
- **false** otherwise.

#### Response Example
```javascript
// Example usage:
const text = "Mozilla";

console.log(text.startsWith("Mozi")); // true
console.log(text.startsWith("zilla")); // false
console.log(text.startsWith("Mozi", 0)); // true
console.log(text.startsWith("Mozi", 1)); // false
console.log(text.startsWith("zilla", 5)); // true
console.log(text.startsWith("zilla", 6)); // false
console.log(text.startsWith("")); // true
```

### Exceptions
- **TypeError**: Thrown if `searchString` is a regex.
```

--------------------------------

### Using anchor()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/anchor

Demonstrates the usage of the deprecated anchor() method to create an HTML string.

```javascript
const contentString = "Hello, world";
document.body.innerHTML = contentString.anchor("hello-world");
```

--------------------------------

### Temporal.PlainMonthDay.prototype.constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainMonthDay

The constructor function that created the instance object.

```APIDOC
## Temporal.PlainMonthDay.prototype.constructor

### Description
The constructor function that created the instance object. For `Temporal.PlainMonthDay` instances, the initial value is the `Temporal.PlainMonthDay()` constructor.

### Method
`getter`

### Endpoint
`instance.constructor`

### Parameters
None

### Response
#### Success Response (200)
- **constructor** (function) - The constructor function.
```

--------------------------------

### Format decimal strings using exponent syntax

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/NumberFormat/format

Format decimal strings using the general 'E' exponent syntax. This example creates a BigInt, coerces it to a string with the suffix 'E-6', and then formats it.

```javascript
const bigIntValue = 12345678901234567890n;
const formattedBigInt = new Intl.NumberFormat('en-US', {
  style: 'decimal',
  // Use 'notation': 'scientific' to get 'E' notation
  notation: 'scientific',
  // You can also specify precision for scientific notation
  maximumFractionDigits: 2
}).format(bigIntValue.toString() + 'E-6');
console.log(formattedBigInt); // "1.23E+13"
```

--------------------------------

### UTF-16 Character Representation

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String

Examples of representing characters using standard and extended Unicode escape sequences.

```javascript
\u
```

```javascript
\u{xxxxxx}
```

--------------------------------

### Comparing methods to select the penultimate character

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/at

This example compares the `at()` method with older methods like `slice()` and bracket notation for accessing the second-to-last character of a string. It highlights the readability of `at()`.

```javascript
const str = "Mozilla";

// Using at()
console.log(str.at(-2)); // "l"

// Using slice()
console.log(str.slice(-2, -1)); // "l"

// Using bracket notation (less readable for negative indices)
console.log(str[str.length - 2]); // "l"
```

--------------------------------

### Using resolvedOptions to retrieve system settings

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat/resolvedOptions

Retrieves the default locale, calendar, numbering system, and time zone settings currently in use by the environment.

```javascript
const options = new Intl.DateTimeFormat().resolvedOptions();

console.log(options.locale); // e.g., "en-US"
console.log(options.calendar); // e.g., "gregory"
console.log(options.numberingSystem); // e.g., "latn"
console.log(options.timeZone); // e.g., "America/Los_Angeles"
```

--------------------------------

### DisposableStack Constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DisposableStack

Initializes a new DisposableStack instance.

```APIDOC
## DisposableStack()

### Description
Creates a new DisposableStack instance to manage resources.

### Method
Constructor

### Endpoint
new DisposableStack()
```

--------------------------------

### Map Typed Array to Square Roots

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray/map

This example demonstrates creating a new typed array containing the square roots of the numbers from an initial typed array.

```javascript
const numbers = new Uint8Array([1, 4, 9, 16]);
const roots = numbers.map(Math.sqrt);

console.log(roots); // Uint8Array(4) [ 1, 2, 3, 4 ]
```

--------------------------------

### Implementing Count Leading Ones with Math.clz32()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/clz32

Shows how to implement a 'Count Leading Ones' function by inverting the bits of a number and using Math.clz32(). This leverages the inverse relationship between leading zeros and leading ones.

```javascript
function clon(x) {
  // Invert the bits of x and pass to clz32
  return Math.clz32(~x) 
}

// Example usage:
console.log(clon(0b00001111000011110000111100001111)); // 4
```

--------------------------------

### Perform side-effectful mapping

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map

Examples of using map for side effects, noting that this is generally considered an anti-pattern.

```javascript
const cart = [5, 15, 25];
let total = 0;
const withTax = cart.map((cost) => {
  total += cost;
  return cost * 1.2;
});
console.log(total); // 45
```

```javascript
const cart = [5, 15, 25];
const total = cart.reduce((acc, cost) => acc + cost, 0);
const withTax = cart.map((cost) => cost * 1.2);
```

--------------------------------

### Demonstrate unsafe integer comparison

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/MAX_SAFE_INTEGER

This example shows how integers larger than Number.MAX_SAFE_INTEGER + 1 may not be precisely represented, leading to incorrect comparisons. Use Number.isSafeInteger() for validation.

```javascript
console.log(Number.MAX_SAFE_INTEGER + 1 === Number.MAX_SAFE_INTEGER + 2);
// Expected output: true (mathematically incorrect)
```

--------------------------------

### Find index of first prime number in array

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex

This example demonstrates finding the index of the first prime number in an array. For real-world applications, consider using a more optimized algorithm like the Sieve of Eratosthenes.

```javascript
const array = [4, 6, 8, 9, 11];

function isPrime(num) {
  if (num <= 1) return false;
  if (num <= 3) return true;
  if (num % 2 === 0 || num % 3 === 0) return false;
  for (let i = 5; i * i <= num; i = i + 6) {
    if (num % i === 0 || num % (i + 2) === 0) return false;
  }
  return true;
}

console.log(array.findIndex(isPrime)); // 4
```

--------------------------------

### Format relative time with parts

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat

Shows how to use formatToParts to get an array of objects representing the formatted relative time, allowing for custom formatting.

```javascript
const rtf = new Intl.RelativeTimeFormat('en', {
  numeric: 'auto',
});

console.log(rtf.formatToParts(-1, 'day'));
/*
[ {"type": "literal", "value": "yesterday"} ]
*/

console.log(rtf.formatToParts(1, 'day'));
/*
[ {"type": "literal", "value": "tomorrow"} ]
*/

console.log(rtf.formatToParts(5, 'day'));
/*
[ {"type": "literal", "value": "in "},
  {"type": "integer", "value": "5"},
  {"type": "literal", "value": " days"} ]
*/
```

--------------------------------

### Object Methods and Properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/groupBy

Details on static and instance methods, as well as static properties of the JavaScript Object.

```APIDOC
## Object Methods and Properties

### Description
Provides details on static methods, instance methods, and static properties of the JavaScript Object.

### Static Methods
#### `Object.apply(thisArg, argsArray)`
Calls or applies the provided function with a given `this` value and arguments provided as an array (or an array-like object).

#### `Object.bind(thisArg[, arg1[, arg2[, ...]]])`
Creates a new function that, when called, has its `this` keyword set to the provided value, with a given sequence of arguments preceding any provided when the new function is called.

#### `Object.call(thisArg[, arg1[, arg2[, ...]]])`
Calls a method of an object, substituting another object or primitive value for the currently object.

#### `Object.toString()`
Returns a string representing the object. Overrides the default `toString` method.

#### `Object[Symbol.hasInstance](instance)`
Determines if the `instance` parameter is an instance of the object.

### Static Properties
#### `Object.length`
Returns the number of arguments expected by the constructor.

#### `Object.name`
Returns the name of the function.

#### `Object.prototype`
Returns the prototype of the object.

### Instance Methods
#### `__defineGetter__(propertyName, getter)`
Associates a function with the property that gets invoked when a property is looked up. (Deprecated)

#### `__defineSetter__(propertyName, setter)`
Associates a function with the property that gets invoked when a property is assigned a value. (Deprecated)

#### `__lookupGetter__(propertyName)`
Returns the getter function associated with the specified property. (Deprecated)

#### `__lookupSetter__(propertyName)`
Returns the setter function associated with the specified property. (Deprecated)

#### `hasOwnProperty(propName)`
Returns a boolean indicating whether the object has the specified property as its own property (as opposed to inheriting it).

#### `isPrototypeOf(V)`
Returns a boolean indicating whether the specified value is in the prototype chain of the object.

#### `propertyIsEnumerable(propName)`
Returns a boolean indicating whether the specified property is the object's own property and if it is enumerable.

#### `toLocaleString()`
Returns a string representing the object. This method is intended to return a language and locale specific representation of the object.

#### `toString()`
Returns a string representing the object. Overrides the default `toString` method.

#### `valueOf()`
Returns the primitive value of the specified object.

### Instance Properties
#### `constructor`
Specifies the function that creates an object instance.

#### `__proto__`
Specifies the prototype of the object. (Deprecated)
```

--------------------------------

### Example TypeError messages

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/No_non-null_object

Different JavaScript engines may display slightly different messages for this TypeError.

```javascript
TypeError: Property description must be an object: x (V8-based)
```

```javascript
TypeError: Property descriptor must be an object, got "x" (Firefox)
```

```javascript
TypeError: Property description must be an object. (Safari)
```

--------------------------------

### Constructor Syntax and Description

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes/constructor

Explains the syntax and purpose of the `constructor` method in JavaScript classes. It covers restrictions, default constructors, and the role of `super()` in derived classes.

```APIDOC
## Constructor Method

### Description
The `constructor` method is a special method of a class for creating and initializing an object instance of that class. It enables custom initialization before other methods can be called.

### Syntax
```javascript
class ClassName {
  constructor([parameters]) {
    // class body
  }
}
```

### Restrictions
- A class method called `constructor` cannot be a getter, setter, async, or generator.
- A class cannot have more than one `constructor` method.
- The constructor must be a literal name; computed properties cannot be constructors.
- Async methods, generator methods, accessors, and class fields are forbidden from being called `constructor`.

### Default Constructor
- **Base Class:** If no constructor is provided, a default empty constructor is supplied.
- **Derived Class:** If no constructor is provided, the default constructor calls the parent constructor with any provided arguments.

### `super()` in Derived Classes
If a derived class has its own constructor, it must explicitly call the parent class constructor using `super()` before accessing `this`.

```javascript
class DerivedClass extends BaseClass {
  constructor(args) {
    super(args); // Calls the parent constructor
    // Derived class initialization
  }
}
```

### `this` and `new.target`
Within the `constructor` body, `this` refers to the object being created, and `new.target` refers to the class called with `new`.

### Return Value
- **Base Class:** Can return anything.
- **Derived Class:** Must return an object or `undefined`. Returning an object allows for "return overriding", where the derived class fields are defined on that returned object.
```

--------------------------------

### Error message examples

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/No_variable_name

Common error messages displayed by different browsers when a variable name is missing.

```text
SyntaxError: missing variable name (Firefox)
SyntaxError: Unexpected token '='. Expected a parameter pattern or a ')' in parameter list. (Safari)
```

--------------------------------

### Create HTML string with fontsize()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/fontsize

This example demonstrates how to create an HTML string using the deprecated `fontsize()` method. It embeds the string within a `<font>` tag to specify a font size.

```javascript
const str = "Hello world!";
document.body.innerHTML = str.fontsize(7);
```

--------------------------------

### Invalid function declarations

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Missing_formal_parameter

These examples demonstrate incorrect function declarations where values are provided instead of identifiers.

```javascript
function square(3) {
  return 3 * 3;
}
// SyntaxError: missing formal parameter

function greet("world") {
  return "Hello " + "world";
}
// SyntaxError: missing formal parameter

function log({ "key": "value" }) {
  console.log("value");
}
// SyntaxError: missing formal parameter
```

--------------------------------

### Set Constructor and Static Properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set

Details on the Set constructor and its static properties.

```APIDOC
## Set Constructor and Static Properties

### Constructor

`Set()`
    
Creates a new `Set` object.

### Static Properties

`Set[Symbol.species]`
    
The constructor function that is used to create derived objects.
```

--------------------------------

### Object Static Methods and Properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol/unscopables

Documentation for the static methods and properties of the Object built-in object.

```APIDOC
## Object.apply()

### Description
Calls a method of an object, optionally setting the `this` value and providing an argument list.

### Method
`Object.apply(thisArg, argsArray)`

### Endpoint
N/A (Static Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```json
{
  "example": "function.apply(thisArg, [arg1, arg2])"
}
```

### Response
#### Success Response (200)
- **any** - The result of calling the method with the specified `this` value and arguments.

## Object.bind()

### Description
Creates a new function that, when called, has its `this` keyword set to the provided value, with a given sequence of arguments preceding any provided when the new function is called.

### Method
`Object.bind(thisArg, arg1, arg2, ...)`

### Endpoint
N/A (Static Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```json
{
  "example": "function.bind(thisArg, arg1, arg2)"
}
```

### Response
#### Success Response (200)
- **function** - A new function with the bound `this` value and arguments.

## Object.call()

### Description
Calls a method of an object, optionally setting the `this` value and providing arguments one by one.

### Method
`Object.call(thisArg, arg1, arg2, ...)`

### Endpoint
N/A (Static Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```json
{
  "example": "function.call(thisArg, arg1, arg2)"
}
```

### Response
#### Success Response (200)
- **any** - The result of calling the method with the specified `this` value and arguments.

## Object.toString()

### Description
Returns a string representing the object. This is a generic method that can be overridden by specific object types.

### Method
`Object.toString()`

### Endpoint
N/A (Static Method)

### Parameters
None

### Response
#### Success Response (200)
- **string** - A string representation of the object.

#### Response Example
```json
{
  "example": "[object Object]"
}
```

## Object.prototype[Symbol.hasInstance]()

### Description
Determines if a given value is an instance of the `Object` constructor.

### Method
`Object[Symbol.hasInstance](obj)`

### Endpoint
N/A (Static Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```json
{
  "example": "Object[Symbol.hasInstance]({})
"
}
```

### Response
#### Success Response (200)
- **boolean** - `true` if the value is an instance of Object, `false` otherwise.

## Object.displayName (Non-standard)

### Description
Specifies a display name for an object, primarily used in debugging contexts. This property is non-standard.

### Method
`Object.displayName`

### Endpoint
N/A (Static Property)

### Parameters
None

### Response
#### Success Response (200)
- **string** - The display name of the object.

## Object.length

### Description
Returns the number of arguments expected by the `Object` constructor.

### Method
`Object.length`

### Endpoint
N/A (Static Property)

### Parameters
None

### Response
#### Success Response (200)
- **number** - The number of arguments.

## Object.name

### Description
Returns the name of the `Object` constructor, which is "Object".

### Method
`Object.name`

### Endpoint
N/A (Static Property)

### Parameters
None

### Response
#### Success Response (200)
- **string** - The name of the constructor.

## Object.prototype

### Description
Returns the prototype object for the `Object` constructor.

### Method
`Object.prototype`

### Endpoint
N/A (Static Property)

### Parameters
None

### Response
#### Success Response (200)
- **object** - The prototype object.

## Object.arguments (Non-standard, Deprecated)

### Description
This property is non-standard and deprecated. It was intended to hold arguments passed to a function, but its usage is discouraged.

### Method
`Object.arguments`

### Endpoint
N/A (Static Property)

### Parameters
None

### Response
#### Success Response (200)
- **any** - The value of the arguments property (deprecated).

## Object.caller (Non-standard, Deprecated)

### Description
This property is non-standard and deprecated. It was intended to refer to the function that invoked the current function, but its usage is discouraged.

### Method
`Object.caller`

### Endpoint
N/A (Static Property)

### Parameters
None

### Response
#### Success Response (200)
- **function** - The caller function (deprecated).

## Object.prototype.__defineGetter__() (Deprecated)

### Description
Associates a function with a property that will be invoked when that property is accessed. This method is deprecated.

### Method
`object.__defineGetter__(propertyName, getterFunction)`

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```json
{
  "example": "obj.__defineGetter__('prop', function() { return value; })"
}
```

### Response
#### Success Response (200)
- **undefined**

## Object.prototype.__defineSetter__() (Deprecated)

### Description
Associates a function with a property that will be invoked when that property is assigned to. This method is deprecated.

### Method
`object.__defineSetter__(propertyName, setterFunction)`

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```json
{
  "example": "obj.__defineSetter__('prop', function(value) { /* set value */ })"
}
```

### Response
#### Success Response (200)
- **undefined**

## Object.prototype.__lookupGetter__() (Deprecated)

### Description
Returns the function associated with the given property, which serves as the getter for that property. This method is deprecated.

### Method
`object.__lookupGetter__(propertyName)`

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```json
{
  "example": "obj.__lookupGetter__('prop')"
}
```

### Response
#### Success Response (200)
- **function** - The getter function.

## Object.prototype.__lookupSetter__() (Deprecated)

### Description
Returns the function associated with the given property, which serves as the setter for that property. This method is deprecated.

### Method
`object.__lookupSetter__(propertyName)`

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```json
{
  "example": "obj.__lookupSetter__('prop')"
}
```

### Response
#### Success Response (200)
- **function** - The setter function.

## Object.prototype.hasOwnProperty()

### Description
Returns a boolean indicating whether the object has the specified property as its own property (as opposed to inheriting it).

### Method
`object.hasOwnProperty(prop)`

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```json
{
  "example": "obj.hasOwnProperty('prop')"
}
```

### Response
#### Success Response (200)
- **boolean** - `true` if the object has the specified property, `false` otherwise.

## Object.prototype.isPrototypeOf()

### Description
Returns a boolean indicating whether an object exists in the prototype chain of another object.

### Method
`object.isPrototypeOf(prototype)`

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```json
{
  "example": "proto.isPrototypeOf(obj)"
}
```

### Response
#### Success Response (200)
- **boolean** - `true` if the prototype object is found in the prototype chain of the object, `false` otherwise.

## Object.prototype.propertyIsEnumerable()

### Description
Returns a boolean indicating whether the specified property is the object's own property and if it is enumerable.

### Method
`object.propertyIsEnumerable(prop)`

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```json
{
  "example": "obj.propertyIsEnumerable('prop')"
}
```

### Response
#### Success Response (200)
- **boolean** - `true` if the property is its own and enumerable, `false` otherwise.

## Object.prototype.toLocaleString()

### Description
Returns a string representing the object. This method is intended to be overridden by subclasses to return a locale-sensitive representation of the object.

### Method
`object.toLocaleString()`

### Endpoint
N/A (Instance Method)

### Parameters
None

### Response
#### Success Response (200)
- **string** - A locale-sensitive string representation of the object.

## Object.prototype.toString()

### Description
Returns a string representing the object. This is a generic method that can be overridden by specific object types.

### Method
`object.toString()`

### Endpoint
N/A (Instance Method)

### Parameters
None

### Response
#### Success Response (200)
- **string** - A string representation of the object.

#### Response Example
```json
{
  "example": "[object Object]"
}
```

## Object.prototype.valueOf()

### Description
Returns the primitive value of an object.

### Method
`object.valueOf()`

### Endpoint
N/A (Instance Method)

### Parameters
None

### Response
#### Success Response (200)
- **any** - The primitive value of the object.

## Object.prototype.__proto__ (Deprecated)

### Description
This property is deprecated and should not be used. It refers to the internal prototype link of an object.

### Method
`object.__proto__`

### Endpoint
N/A (Instance Property)

### Parameters
None

### Response
#### Success Response (200)
- **object** - The prototype of the object (deprecated).

## Object.prototype.constructor

### Description
Returns a reference to the constructor function that created the object instance.

### Method
`object.constructor`

### Endpoint
N/A (Instance Property)

### Parameters
None

### Response
#### Success Response (200)
- **function** - The constructor function.

```

--------------------------------

### Summing Fibonacci sequence with Iterator.prototype.reduce()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Iterator/reduce

This example demonstrates how to use Iterator.prototype.reduce() to sum the first ten terms of the Fibonacci sequence. It requires an iterator that yields Fibonacci numbers.

```javascript
const fibonacciIterator = {
  [Symbol.iterator]() {
    let a = 0n,
      b = 1n;
    return {
      next() {
        const result = { value: a, done: false };
        [a, b] = [b, a + b];
        return result;
      }
    };
  }
};

const firstTenFibonacci = fibonacciIterator.take(10);
const sumOfFirstTen = firstTenFibonacci.reduce((accumulator, currentValue) => accumulator + currentValue, 0n);

console.log(sumOfFirstTen); // 88
```

--------------------------------

### Using the debugger statement

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/debugger

This example demonstrates how to insert a `debugger` statement into a function. When the function is called and a debugger is active, execution will pause at the `debugger` statement, similar to setting a manual breakpoint.

```javascript
function calculate(x, y) {
  const result = x * y;
  debugger; // Invokes the debugger if available
  return result;
}
```

--------------------------------

### Object/Function Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/copyWithin

Reference for instance methods of Object and Function, including deprecated methods.

```APIDOC
## Object/Function Instance Methods

### Description
Details the instance methods available on Object and Function objects.

### Methods
- `Object.prototype.hasOwnProperty(prop)`: Returns a boolean indicating whether the object has the specified property as its own property.
- `Object.prototype.isPrototypeOf(V)`: Returns a boolean indicating whether the specified object is in the prototype chain of the object.
- `Object.prototype.propertyIsEnumerable(V)`: Returns a boolean indicating whether the specified property is the object's own property and can be enumerated (i.e. included in `for...in` loop).
- `Object.prototype.toLocaleString()`: Returns a string representing the object. Overrides the Object.prototype.toLocaleString method.
- `Object.prototype.toString()`: Returns a string representing the object. Overrides the Object.prototype.toString method.
- `Object.prototype.valueOf()`: Returns the primitive value of the specified object.
- `__defineGetter__(propertyName, getter)` (Deprecated): Associates a function with the property whose name is the string `propertyName`. If the property already exists, the old function is replaced.
- `__defineSetter__(propertyName, setter)` (Deprecated): Associates a function with the property whose name is the string `propertyName`. If the property already exists, the old function is replaced.
- `__lookupGetter__(propertyName)` (Deprecated): Returns the getter function associated with the specified property name.
- `__lookupSetter__(propertyName)` (Deprecated): Returns the setter function associated with the specified property name.

### Parameters
#### `hasOwnProperty()`
- **prop** (String) - Required - The name of the property to test.

#### `isPrototypeOf()`
- **V** (Object) - Required - The object to test.

#### `propertyIsEnumerable()`
- **V** (String) - Required - The name of the property to test.

#### `__defineGetter__()`
- **propertyName** (String) - Required - The name of the property to associate the getter with.
- **getter** (Function) - Required - The function to use as the getter.

#### `__defineSetter__()`
- **propertyName** (String) - Required - The name of the property to associate the setter with.
- **setter** (Function) - Required - The function to use as the setter.

#### `__lookupGetter__()`
- **propertyName** (String) - Required - The name of the property whose getter should be returned.

#### `__lookupSetter__()`
- **propertyName** (String) - Required - The name of the property whose setter should be returned.

### Response
#### Success Response (200)
- **Result**: The result of the method operation (e.g., boolean, string, or function).

#### Response Example
```json
{
  "example": "obj.hasOwnProperty('prop') -> true/false"
}
```
```json
{
  "example": "obj.toString() -> '[object Object]'"
}
```
```

--------------------------------

### Using indexOf() with position arguments

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/indexOf

Examples demonstrating how the position argument affects search behavior, including negative values and positions beyond string length.

```javascript
'hello world hello'.indexOf('o', -5)
```

```javascript
'hello world hello'.indexOf('world', 12)
```

```javascript
'hello world hello'.indexOf('o', 99)
```

--------------------------------

### Object/Function Instance Properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/join

Details on instance properties of Object and Function, such as constructor.

```APIDOC
## Object/Function Instance Properties

### Description
Instance properties available on Object and Function.

### Property
`__proto__` (Deprecated)
### Endpoint
N/A

### Description
Points to the object that was used to construct this object. Deprecated.

### Property
`constructor`
### Endpoint
N/A

### Description
Specifies the function that created an object's prototype. In the case of the default Object.prototype, the constructor is the Object() function.
```

--------------------------------

### GET TypedArray.prototype.buffer

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray/buffer

Access the underlying buffer of a TypedArray instance. This property is read-only and established at construction time.

```APIDOC
## GET TypedArray.prototype.buffer

### Description
The `buffer` accessor property returns the `ArrayBuffer` or `SharedArrayBuffer` referenced by the `TypedArray` instance. It is a read-only property.

### Method
GET

### Endpoint
TypedArray.prototype.buffer

### Response
#### Success Response (200)
- **buffer** (ArrayBuffer | SharedArrayBuffer) - The underlying buffer referenced by the typed array.
```

--------------------------------

### GET Temporal.PlainDate.prototype.daysInWeek

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDate/daysInWeek

Access the daysInWeek property to retrieve the number of days in the week for a specific date instance.

```APIDOC
## GET Temporal.PlainDate.prototype.daysInWeek

### Description
The daysInWeek accessor property returns a positive integer representing the number of days in the week of the current Temporal.PlainDate instance. This value is calendar-dependent.

### Method
GET (Accessor Property)

### Response
- **daysInWeek** (integer) - The number of days in the week for the date. For the ISO 8601 calendar, this is always 7.
```

--------------------------------

### GET RegExp.prototype.flags

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/flags

Accesses the flags property of a RegExp instance to retrieve a sorted string of active flags.

```APIDOC
## GET RegExp.prototype.flags

### Description
The `flags` accessor property returns a string containing the flags of the regular expression instance. The flags are sorted alphabetically.

### Method
GET

### Endpoint
RegExp.prototype.flags

### Response
#### Success Response (200)
- **flags** (string) - A string representing the flags of the regular expression, sorted alphabetically (e.g., "dgimsuvy").

### Response Example
{
  "flags": "gim"
}
```

--------------------------------

### Get resolved options for Intl.PluralRules

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/PluralRules

Returns an object with the locale and other options computed during the initialization of the Intl.PluralRules object.

```javascript
const pluralRules = new Intl.PluralRules('en-US');
pluralRules.resolvedOptions();
```

--------------------------------

### Get week information

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale

The getWeekInfo() method returns week-related elements according to the locale's rules.

```javascript
const locale = new Intl.Locale("en-US");
console.log(locale.getWeekInfo()); // { firstDay: 7, weekend: [5, 6], ... }
```

--------------------------------

### Get text direction information

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale

Use getTextInfo() to retrieve the text direction (ltr or rtl) for the locale.

```javascript
const locale = new Intl.Locale("en-US");
console.log(locale.getTextInfo()); // { direction: "ltr", convention: "lsr" }
```

--------------------------------

### Get AsyncGeneratorFunction constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/AsyncGeneratorFunction

AsyncGeneratorFunction is not a global object and must be obtained using this code. It is a subclass of Function.

```javascript
const AsyncGeneratorFunction = Object.getPrototypeOf(async function*() {}).constructor;
```

--------------------------------

### Multiple operation sequential case clause

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/switch

This example shows a multiple-operation sequential case clause where different outputs are produced based on the input integer. It illustrates that cases do not need to be numerically sequential and can even include string definitions.

```javascript
function process(value) {
  let output = "";
  switch (value) {
    case "foo":
      output = "Output: foo!";
      break;
    case 2:
      output = "Output: bar!";
      // fall-through
    case 3:
      output = "Output: baz!";
      break;
    case "foo": // This case is unreachable
      output = "Output: foo! bar!";
      break;
    case 4:
      output = "Output: qux!";
      break;
    default:
      output = "Please pick a valid option!";
      break;
  }
  return output;
}

console.log(process(2)); // Output: Output: baz!
console.log(process(3)); // Output: Output: baz!
console.log(process("foo")); // Output: Output: foo!
console.log(process(4)); // Output: Output: qux!
console.log(process(1)); // Please pick a valid option!
```

--------------------------------

### GET ArrayBuffer[Symbol.species]

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/Symbol.species

Retrieves the constructor used to construct return values from array buffer methods.

```APIDOC
## GET ArrayBuffer[Symbol.species]

### Description
The `ArrayBuffer[Symbol.species]` static accessor property returns the constructor used to construct return values from array buffer methods that create new array buffer instances.

### Method
GET

### Endpoint
ArrayBuffer[Symbol.species]

### Response
#### Success Response (200)
- **constructor** (Function) - The constructor function used to create new instances of the ArrayBuffer or its subclass.

### Response Example
{
  "constructor": "ArrayBuffer"
}
```

--------------------------------

### Generator example with try...catch

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/function%2A

Shows how a generator function can catch errors thrown into it using a `try...catch` block. This allows for graceful error handling within the generator's execution.

```javascript
function* genWithCatch() {
  try {
    yield;
  } catch (e) {
    console.log('Caught exception:', e);
  }
  yield 'after catch';
}

const g = genWithCatch();
g.next(); // Start the generator
g.throw(new Error('Something went wrong')); // Throw an error into the generator
console.log(g.next()); // Continue execution after the catch block
```

--------------------------------

### Object/Function Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDateTime/with

Standard instance methods inherited from Object/Function.

```APIDOC
## Object/Function Instance Methods

### Description
These are standard JavaScript instance methods inherited from `Object` and `Function` that can be used on objects, including `Temporal.PlainDateTime` instances.

### Methods

- **`__defineGetter__(propertyName, getter)`**
  - Deprecated. Associates a function with the property that gets its value.
- **`__defineSetter__(propertyName, setter)`**
  - Deprecated. Associates a function with the property that sets its value.
- **`__lookupGetter__(propertyName)`**
  - Deprecated. Returns the function bound as the getter for the `propertyName`.
- **`__lookupSetter__(propertyName)`**
  - Deprecated. Returns the function bound as the setter for the `propertyName`.
- **`hasOwnProperty(propertyName)`**
  - Returns a boolean indicating whether the object has the specified property as its own property.
- **`isPrototypeOf(V)`**
  - Returns a boolean indicating whether the object is in the prototype chain of another object.
- **`propertyIsEnumerable(propertyName)`**
  - Returns a boolean indicating whether the specified property is the object's own property and will be included in `for...in` enumeration.
- **`toLocaleString(locales, options)`**
  - Returns a string representing the object. The behavior may vary depending on the object type.
- **`toString()`**
  - Returns a string representing the object. The behavior may vary depending on the object type.
- **`valueOf()`**
  - Returns the primitive value of the specified object. The behavior may vary depending on the object type.
```

--------------------------------

### Public Instance Getter

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes

Define a getter method using the 'get' keyword to access a computed property.

```javascript
class MyClass {
  get myProperty() {
    return "value";
  }
}
```

--------------------------------

### parseFloat() returning NaN

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/parseFloat

Shows cases where the input string does not start with a valid number literal, resulting in NaN.

```javascript
parseFloat("FF2"); /* NaN */
parseFloat("NaN"); /* NaN */
```

--------------------------------

### Initialization of several variables

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/var

Highlights the difference between standard declaration and implicit global creation in strict versus non-strict modes.

```javascript
var x = y = 1;
```

```javascript
"use strict";
var x = y = 1; // Throws ReferenceError: y is not defined
```

--------------------------------

### Temporal.Instant Instance Properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Instant

Properties available on Temporal.Instant instances.

```APIDOC
## Temporal.Instant.prototype.constructor

### Description
The constructor function that created the instance object. For `Temporal.Instant` instances, the initial value is the `Temporal.Instant()` constructor.

## Temporal.Instant.prototype.epochMilliseconds

### Description
Returns an integer representing the number of milliseconds elapsed since the Unix epoch (midnight at the beginning of January 1, 1970, UTC) to this instant. Equivalent to dividing `epochNanoseconds` by `1e6` and flooring it.

## Temporal.Instant.prototype.epochNanoseconds

### Description
Returns a `BigInt` representing the number of nanoseconds since the Unix epoch (midnight at the beginning of January 1, 1970, UTC) to this instant.

## Temporal.Instant.prototype[Symbol.toStringTag]

### Description
The initial value of the `[Symbol.toStringTag]` property is the string `"Temporal.Instant"`. This property is used in `Object.prototype.toString()`.
```

--------------------------------

### Using resolvedOptions with custom styles

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/ListFormat/resolvedOptions

Shows how resolvedOptions reflects both explicitly provided options and default values for properties not specified during initialization.

```javascript
const deListFormatter = new Intl.ListFormat("de-DE", { style: "short" });

const usedOptions = de.resolvedOptions();
console.log(usedOptions.locale); // "de-DE"
console.log(usedOptions.style); // "short"
console.log(usedOptions.type); // "conjunction" (the default value)
```

--------------------------------

### DataView.prototype.setFloat64()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setFloat64

Stores a 64-bit floating point number in the 8 bytes starting at the specified byte offset of the DataView.

```APIDOC
## DataView.prototype.setFloat64()

### Description
The setFloat64() method takes a number and stores it as a 64-bit floating point number in the 8 bytes starting at the specified byte offset of this DataView. There is no alignment constraint.

### Parameters
#### Path Parameters
- **byteOffset** (number) - Required - The offset, in bytes, from the start of the view to store the data in.
- **value** (number) - Required - The value to set.
- **littleEndian** (boolean) - Optional - Indicates whether the data is stored in little- or big-endian format. If false or undefined, a big-endian value is written.

### Return value
- **undefined**

### Exceptions
- **RangeError** - Thrown if the byteOffset is set such that it would store beyond the end of the view.
```

--------------------------------

### Create a link using DOM APIs

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/link

This is the recommended approach for creating links dynamically in the DOM.

```javascript
const hotText = "MDN";
const url = "https://developer.mozilla.org/";

const a = document.createElement("a");
a.href = url;
a.textContent = hotText;
document.body.appendChild(a);
```

--------------------------------

### DataView.prototype.getBigUint64()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/getBigUint64

Reads 8 bytes starting at the specified byte offset of a DataView and interprets them as a 64-bit unsigned integer.

```APIDOC
## DataView.prototype.getBigUint64()

### Description
The getBigUint64() method of DataView instances reads 8 bytes starting at the specified byte offset of this DataView and interprets them as a 64-bit unsigned integer. There is no alignment constraint; multi-byte values may be fetched from any offset within bounds.

### Parameters
#### Path Parameters
- **byteOffset** (number) - Required - The offset, in bytes, from the start of the view to read the data from.
- **littleEndian** (boolean) - Optional - Indicates whether the data is stored in little- or big-endian format. If false or undefined, a big-endian value is read.

### Return value
- **BigInt** - A BigInt from 0 to 2^64-1, inclusive.

### Exceptions
- **RangeError** - Thrown if the byteOffset is set such that it would read beyond the end of the view.
```

--------------------------------

### Creating a SyntaxError

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SyntaxError

Demonstrates how to manually create and throw a SyntaxError object.

```APIDOC
## Creating a SyntaxError

### Description
This example shows how to manually instantiate and throw a `SyntaxError` object, providing a custom message.

### Method
`new SyntaxError(message)` and `throw` statement

### Endpoint
N/A

### Parameters
- **`message`** (String) - Optional. A human-readable description of the error.

### Request Body
None

### Request Example
```javascript
function validateInput(input) {
  if (typeof input !== 'string' || input.trim() === '') {
    throw new SyntaxError('Input must be a non-empty string.');
  }
  console.log('Input is valid.');
}

try {
  validateInput(''); // This will throw a SyntaxError
} catch (e) {
  if (e instanceof SyntaxError) {
    console.error('Caught expected error:', e.message);
  }
}

try {
  validateInput('Valid Input'); // This will not throw an error
} catch (e) {
  console.error('Unexpected error:', e);
}
```

### Response
#### Success Response (200)
Logs the custom error message to the console when the error is caught.

#### Response Example
```
Caught expected error: Input must be a non-empty string.
Input is valid.
```
```

--------------------------------

### Basic usage of lastIndexOf()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/lastIndexOf

Demonstrates how to find the last index of an element in an array. The search starts from the end of the array.

```javascript
const beasts = ['ant', 'bison', 'camel', 'duck', 'bison'];

console.log(beasts.lastIndexOf('duck'));
// Expected output: 3

console.log(beasts.lastIndexOf('bison'));
// Expected output: 4

console.log(beasts.lastIndexOf('cat'));
// Expected output: -1
```

--------------------------------

### Extract subdomain from URL with RegExp

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp

This example demonstrates extracting a subdomain from a URL using a regular expression. Note that the URL API is generally preferred for parsing URLs.

```javascript
const url = "https://subdomain.example.com";
const regex = /^https?:\/\/(?:[^\/\n]+ \.)?([^\/\n]+\.(?:[^\/\n]{2,}|[a-z]{2,}))(?:\/[^]*)?$/;
const match = url.match(regex);

if (match) {
  console.log(match[1]); // "subdomain.example.com"
}
```

--------------------------------

### Iterate Map keys

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/keys

Demonstrates basic usage of the keys() method to retrieve and iterate over keys in a Map.

```javascript
const map = new Map();

map.set("0", "foo");
map.set(1, "bar");

const iterator = map.keys();

console.log(iterator.next().value);
// Expected output: "0"

console.log(iterator.next().value);
// Expected output: 1
```

--------------------------------

### Identify strict mode syntax errors

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Strict_mode

Examples of code patterns that trigger a SyntaxError when 'use strict' is enabled.

```javascript
const n = 023;
```

```javascript
delete myVariable;
```

```javascript
function f(a, b, b) {}
```

```javascript
{a: 1, b: 3, a: 7}
```

--------------------------------

### Labeled function declarations

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/label

Examples of labeled function declarations in non-strict and strict modes, noting that this syntax is deprecated.

```javascript
label: function f() {}
```

```javascript
"use strict";
label: function f() {} // SyntaxError: Labelled function declaration
```

```javascript
label: function* f() {} // SyntaxError
label: async function f() {} // SyntaxError
```

--------------------------------

### Changing minute using with()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainTime/minute

Demonstrates how to create a new `Temporal.PlainTime` object with a modified minute component using the `with()` method.

```APIDOC
## Temporal.PlainTime.prototype.with()

### Description
Creates a new `Temporal.PlainTime` instance with the same date as the original, but with the given fields set to the given values. This method can be used to change the minute component.

### Method
`with()

### Endpoint
`Temporal.PlainTime.prototype.with({ minute: number })`

### Parameters
#### Request Body
- **minute** (integer) - Required - The new minute value (0-59) for the time.

### Request Example
```javascript
const time = Temporal.PlainTime.from("10:30:00");
const newTime = time.with({ minute: 45 });
console.log(newTime.minute); // 45
console.log(time.minute); // 30 (original time is unchanged)
```

### Response
#### Success Response (200)
- **Temporal.PlainTime** - A new `Temporal.PlainTime` object with the updated minute.

#### Response Example
```javascript
// Example output from newTime.toString()
"10:45:00"
```
```

--------------------------------

### Trap setting of a property value

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy/Proxy/set

This example demonstrates how to intercept and handle attempts to set a property's value on a proxy object. It logs the operation and returns true to indicate success.

```javascript
const handler = {
  set(target, property, value, receiver) {
    console.log(`property "${property}" set to ${value}`);
    // Standard behavior is to return true
    return true;
  }
};

const proxy = new Proxy(object, handler);

proxy.greeting = "Hello"; // Logs: property "greeting" set to Hello

```

--------------------------------

### Intl.ListFormat Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/ListFormat/ListFormat

Instance methods available on Intl.ListFormat objects.

```APIDOC
## Intl.ListFormat.prototype.format()

### Description
Formats a list of strings into a grammatically correct, localized string.

### Method
Instance Method

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const formatter = new Intl.ListFormat('en', { style: 'long', type: 'conjunction' });
const list = ['apples', 'bananas', 'oranges'];
console.log(formatter.format(list)); // Output: "apples, bananas, and oranges"
```

### Response
#### Success Response (200)
A string representing the formatted list.

#### Response Example
```json
{
  "formattedString": "apples, bananas, and oranges"
}
```
```

```APIDOC
## Intl.ListFormat.prototype.formatToParts()

### Description
Formats a list of strings into an array of objects, each representing a part of the formatted string.

### Method
Instance Method

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const formatter = new Intl.ListFormat('en', { style: 'long', type: 'conjunction' });
const list = ['apples', 'bananas', 'oranges'];
console.log(formatter.formatToParts(list));
// Output: [
//   { type: 'element', value: 'apples' },
//   { type: 'literal', value: ', ' },
//   { type: 'element', value: 'bananas' },
//   { type: 'literal', value: ', and ' },
//   { type: 'element', value: 'oranges' }
// ]
```

### Response
#### Success Response (200)
An array of objects, each with `type` and `value` properties.

#### Response Example
```json
[
  {"type": "element", "value": "apples"},
  {"type": "literal", "value": ", "},
  {"type": "element", "value": "bananas"},
  {"type": "literal", "value": ", and "},
  {"type": "element", "value": "oranges"}
]
```
```

```APIDOC
## Intl.ListFormat.prototype.resolvedOptions()

### Description
Returns an object with the properties of the locale and options computed for the given locale and options object.

### Method
Instance Method

### Endpoint
N/A (Instance Method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const formatter = new Intl.ListFormat('en-US', { style: 'short', type: 'disjunction' });
console.log(formatter.resolvedOptions());
// Output: {
//   "locale": "en-US",
//   "style": "short",
//   "type": "disjunction"
// }
```

### Response
#### Success Response (200)
An object with the resolved locale and options.

#### Response Example
```json
{
  "locale": "en-US",
  "style": "short",
  "type": "disjunction"
}
```
```

--------------------------------

### Stay within 64-bit ranges using BigInt.asUintN()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/BigInt/asUintN

This example illustrates the utility of BigInt.asUintN() for maintaining values within the constraints of 64-bit arithmetic, preventing overflow by truncating excess bits.

```javascript
const max_uint64 = 2n ** 64n;
const value = max_uint64 + 1n;

BigInt.asUintN(64, value);
// Expected output: 1n
```

--------------------------------

### Find index of first prime number in a typed array

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray/findIndex

This example demonstrates finding the index of the first prime number in a typed array. The `isPrime` helper function is for illustrative purposes; consider optimized algorithms for real-world applications.

```javascript
const isPrime = (num) => {
  if (num <= 1) return false;
  for (let i = 2; i <= Math.sqrt(num); i++) {
    if (num % i === 0) return false;
  }
  return true;
};

const numbers = new Uint8Array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

console.log(numbers.findIndex(isPrime)); // 1
console.log(numbers.findIndex((num) => num > 10)); // -1
```

--------------------------------

### Declare a generator function

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/yield

This is an example of declaring a generator function. Generator functions are defined using the function* syntax.

```javascript
function* generatorExample() {
  console.log('Generator started');
  const value1 = yield 'First value';
  console.log('Received:', value1);
  const value2 = yield 'Second value';
  console.log('Received:', value2);
  return 'Generator finished';
}
```

--------------------------------

### Accessing module URL with query parameters

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/import.meta

Demonstrates how to access query parameters from the module's URL using import.meta.url. This is useful for passing module-specific arguments.

```javascript
console.log(import.meta.url);
// Expected output: "https://example.com/app.js?someURLInfo=5"
```

--------------------------------

### Create a Temporal.Instant from epoch milliseconds

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Instant/epochMilliseconds

Use the static `Temporal.Instant.fromEpochMilliseconds()` method to create a new `Temporal.Instant` object from a given number of milliseconds since the Unix epoch. This is the recommended way to create or modify `Temporal.Instant` objects.

```javascript
const instant = Temporal.Instant.fromEpochMilliseconds(1678886400000);
console.log(instant.toString()); // "2023-03-15T12:00:00Z"
```

--------------------------------

### Implementing a tombstone-based iterable

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols

Example of how to implement an iterable that uses tombstone values to prevent index shifting during deletion.

```javascript
class TombstoneIterable {
  #data = ["a", "b", "c"];
  #deleted = new Set();
  delete(val) {
    this.#deleted.add(val);
  }
  [Symbol.iterator]() {
    let index = 0;
    return {
      next: () => {
        while (index < this.#data.length && this.#deleted.has(this.#data[index])) {
          index++;
        }
        if (index < this.#data.length) {
          return { value: this.#data[index++], done: false };
        }
        return { done: true };
      },
    };
  }
}
```

--------------------------------

### Group items by quantity status using Object.groupBy()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/groupBy

This example groups food items into 'ok' or 'restock' categories based on their 'quantity'. It illustrates creating groups inferred from property values.

```javascript
const inventory = [
  { name: "apples", quantity: 2 },
  { name: "bananas", quantity: 0 },
  { name: "cherries", quantity: 5 },
];

const grouped = Object.groupBy(inventory, ({ quantity }) =>
  quantity > 0 ? "ok" : "restock",
);

console.log(grouped);
/*
{
  ok: [
    { name: "apples", quantity: 2 },
    { name: "cherries", quantity: 5 }
  ],
  restock: [
    { name: "bananas", quantity: 0 }
  ]
}
*/
```

--------------------------------

### Object.defineProperty() - Adding properties and default values

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty

Highlights the difference in default value application between property accessors and Object.defineProperty().

```APIDOC
### Adding properties and default values
It is important to consider the way default values of attributes are applied. There is often a difference between using property accessors to assign a value and using `Object.defineProperty()`, as shown in the example below.
```

--------------------------------

### Correcting a typo in getElementById

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Not_a_function

Ensure the method name is spelled correctly. This example shows the correct spelling for `getElementById`.

```javascript
document.getElementByld("myElement"); // Typo
document.getElementById("myElement"); // Correct
```

--------------------------------

### Function statement with default parameters

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Strict_non_simple_params

This example shows a function statement with default parameters. To use strict mode, move the 'use strict' directive outside the function.

```javascript
"use strict";
function sum(a = 1, b = 2) {
  return a + b;
}
```

--------------------------------

### Assignments producing ReferenceErrors

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Invalid_assignment_left-hand_side

Examples where the left-hand side evaluates to a value rather than a reference, causing runtime errors.

```javascript
Math.random() = 10;

function getX() { return 1; }
getX() = 2;

new Date() = 0;

super() = 1;

this = window;
```

--------------------------------

### Find the first prime number in a typed array

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray/find

This example demonstrates finding the first prime number in a typed array. The `isPrime` function is for illustrative purposes; consider optimized algorithms for real-world applications.

```javascript
function isPrime(num) {
  if (num <= 1) return false;
  if (num <= 3) return true;
  if (num % 1 == 0) return false;
  for (let i = 2; i * i <= num; i++) {
    if (num % i === 0) return false;
  }
  return true;
}

const numbers = new Uint8Array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

console.log(numbers.find(isPrime)); // 2
console.log(numbers.find((num) => num > 10)); // undefined
```

--------------------------------

### Using Locales with toLocaleString()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/toLocaleString

Shows how to use the 'locales' parameter to specify language-specific number formatting. This example demonstrates variations in localized number formats by providing different BCP 47 language tags.

```javascript
const number = 123456.789;

// US English
console.log(number.toLocaleString('en-US')); // "123,456.789"

// German
console.log(number.toLocaleString('de-DE')); // "123.456,789"

// Japanese
console.log(number.toLocaleString('ja-JP')); // "123,456.789"

// Arabic (Saudi Arabia)
console.log(number.toLocaleString('ar-SA')); // "١٢٣٬٤٥٦٫٧٨٩"
```

--------------------------------

### SyntaxError message examples

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Bad_optional_template

Common error messages displayed by different JavaScript engines when encountering this syntax error.

```text
SyntaxError: Invalid tagged template on optional chain (V8-based)
SyntaxError: tagged template cannot be used with optional chain (Firefox)
SyntaxError: Cannot use tagged templates in an optional chain. (Safari)
```

--------------------------------

### Set Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set

Instance methods available on Set objects.

```APIDOC
## Set Instance Methods

`Set.prototype.add()`
    
Inserts the specified value into this set, if it is not already present.

`Set.prototype.clear()`
    
Removes all elements from the `Set` object.

`Set.prototype.delete()`
    
Removes the specified value from this set, if it is in the set.

`Set.prototype.difference()`
    
Takes a set and returns a new set containing elements in this set but not in the given set.

`Set.prototype.entries()`
    
Returns a new iterator object that contains **an array of`[value, value]`** for each element in the `Set` object, in insertion order. This is similar to the `Map` object, so that each entry's _key_ is the same as its _value_ for a `Set`.

`Set.prototype.forEach()`
    
Calls `callbackFn` once for each value present in the `Set` object, in insertion order. If a `thisArg` parameter is provided, it will be used as the `this` value for each invocation of `callbackFn`.

`Set.prototype.has()`
    
Returns a boolean indicating whether the specified value exists in this `Set` or not.

`Set.prototype.intersection()`
    
Takes a set and returns a new set containing elements in both this set and the given set.

`Set.prototype.isDisjointFrom()`
    
Takes a set and returns a boolean indicating if this set has no elements in common with the given set.

`Set.prototype.isSubsetOf()`
    
Takes a set and returns a boolean indicating if all elements of this set are in the given set.

`Set.prototype.isSupersetOf()`
    
Takes a set and returns a boolean indicating if all elements of the given set are in this set.

`Set.prototype.keys()`
    
An alias for `Set.prototype.values()`.

`Set.prototype.symmetricDifference()`
    
Takes a set and returns a new set containing elements which are in either this set or the given set, but not in both.

`Set.prototype.union()`
    
Takes a set and returns a new set containing elements which are in either or both of this set and the given set.

`Set.prototype.values()`
    
Returns a new iterator object that yields the **values** for each element in the `Set` object in insertion order.

`Set.prototype[Symbol.iterator]()`
    
Returns a new iterator object that yields the **values** for each element in the `Set` object in insertion order.
```

--------------------------------

### Temporal.Now API

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Now

The Temporal.Now object provides static methods to get the current date and time in various formats.

```APIDOC
## Temporal.Now

### Description
Provides static methods to retrieve the current time, date, or timezone.

### Methods
- **instant()**: Returns the current instant.
- **plainDateISO()**: Returns the current date in ISO 8601 format.
- **plainDateTimeISO()**: Returns the current date and time in ISO 8601 format.
- **plainTimeISO()**: Returns the current time in ISO 8601 format.
- **timeZoneId()**: Returns the current system timezone identifier.
- **zonedDateTimeISO()**: Returns the current date and time with timezone in ISO 8601 format.
```

--------------------------------

### Create RegExp using Constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp

Use the constructor when the pattern is dynamic or needs to be built from a string. Remember to escape special characters within the string.

```javascript
const regex = new RegExp('ab+c');
```

--------------------------------

### GET Temporal.Duration.prototype.sign

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Duration/sign

Retrieves the sign of a Temporal.Duration instance. Returns 1 for positive, -1 for negative, and 0 for zero.

```APIDOC
## GET Temporal.Duration.prototype.sign

### Description
The `sign` accessor property of `Temporal.Duration` instances returns `1` if this duration is positive, `-1` if negative, and `0` if zero. The sign is determined by the sign of any of its non-zero fields.

### Response
- **Return Value** (number) - 1, -1, or 0 based on the duration value.
```

--------------------------------

### String representation of a Symbol

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol/toString

Use the toString() method to get a string representation of a Symbol. This method is explicitly called.

```javascript
const sym = Symbol("my symbol");
console.log(sym.toString()); // "Symbol(my symbol)"
```

--------------------------------

### Temporal.ZonedDateTime.prototype.startOfDay()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/startOfDay

Returns a Temporal.ZonedDateTime object representing the first instant of the date in the time zone.

```APIDOC
## METHOD Temporal.ZonedDateTime.prototype.startOfDay()

### Description
The startOfDay() method returns a Temporal.ZonedDateTime object representing the first instant of this date in the time zone. It usually has a time of 00:00:00, but may be different if the midnight doesn't exist due to offset changes, in which case the first time that exists is returned.

### Parameters
None.

### Return value
A Temporal.ZonedDateTime object with instant t, such that:
- The date at t is different from the date one nanosecond before t.
- The date at t is the same as the date of this.
```

--------------------------------

### Get non-enumerable properties only

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getOwnPropertyNames

Filters out enumerable properties to isolate non-enumerable ones by comparing the results of Object.getOwnPropertyNames() and Object.keys().

```javascript
const target = myObject;
const enum_and_nonenum = Object.getOwnPropertyNames(target);
const enum_only = Object.keys(target);

const nonenum_only = enum_and_nonenum.filter((key) => {
  const indexInEnum = enum_only.indexOf(key);
  if (indexInEnum === -1) {
    // Not found in enum_only, so it is non-enumerable
    return true;
  }
  return false;
});

console.log(nonenum_only);
```

--------------------------------

### Object/Function Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/lastIndexOf

Instance methods available on Object and Function objects.

```APIDOC
## Object/Function Instance Methods

### Description
Instance methods available on Object and Function objects.

### Method
`__defineGetter__(propertyName, getter)`

### Description
Associates a function with the property that will be invoked when that property is looked up. Deprecated.

### Method
`__defineSetter__(propertyName, setter)`

### Description
Associates a function with the property that will be invoked when an attempt is made to set that property. Deprecated.

### Method
`__lookupGetter__(propertyName)`

### Description
Returns the getter function associated with the given property. Deprecated.

### Method
`__lookupSetter__(propertyName)`

### Description
Returns the setter function associated with the given property. Deprecated.

### Method
`hasOwnProperty(prop)`

### Description
Returns a Boolean indicating whether the object has the specified property as its own property.

### Method
`isPrototypeOf(V)`

### Description
Returns a Boolean indicating whether the specified object is in the prototype chain of the object on which the method was called.

### Method
`propertyIsEnumerable(V)`

### Description
Returns a Boolean indicating whether the specified property is the object's own property and can be enumerated (that is, included in the `for...in` loop).

### Method
`toLocaleString()`

### Description
Returns a string representing the object. This method is intended to be overridden by specific object types.

### Method
`toString()`

### Description
Returns a string representing the object. This method is intended to be overridden by specific object types.

### Method
`valueOf()`

### Description
Returns the primitive value of the specified object.
```

--------------------------------

### Basic usage of typeof

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/typeof

Demonstrates the basic return values for various data types.

```javascript
typeof "John" // Returns "string"
typeof 3.14 // Returns "number"
typeof NaN // Returns "number"
typeof false // Returns "boolean"
typeof [1, 2, 3, 4] // Returns "object"
typeof {name:'John', age:34} // Returns "object"
typeof new Date() // Returns "object"
typeof function () {} // Returns "function"
typeof myCar // Returns "undefined"
typeof null // Returns "object"
```

--------------------------------

### Get the number of key/value pairs in a Map

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map

The size property returns the number of key/value pairs in the Map object.

```javascript
const map = new Map([
  ['key1', 'value1'],
  ['key2', 'value2'],
]);

console.log(map.size); // 2
```

--------------------------------

### Create Intl.PluralRules object

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/PluralRules

Creates a new Intl.PluralRules object. You can specify locales to get language-specific plural rules.

```javascript
const pluralRules = new Intl.PluralRules('en-US');
```

--------------------------------

### Input Boundary Assertions: ^ and $

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Input_boundary_assertion

Explains the '^' and '$' assertions in JavaScript regular expressions, which check for the start and end of a string or line.

```APIDOC
## ^ and $ Assertions

### Description
`^` asserts that the current position is the start of input. `$` asserts that the current position is the end of input. Both are assertions, so they don't consume any characters.

### Method
N/A (Regex assertions)

### Endpoint
N/A (Regex assertions)

### Parameters
N/A

### Request Example
N/A

### Response
N/A

## Behavior with 'm' flag
If the `m` flag is set, `^` also matches if the character to the left is a line terminator character, and `$` also matches if the character to the right is a line terminator.

## Examples

### Removing trailing slashes
```javascript
let str = "example.com/path/";
let regex = /\/$/;
str.replace(regex, ""); // "example.com/path"
```

### Matching file extensions
```javascript
let filename = "document.pdf";
let regex = /\.pdf$/;
regex.test(filename); // true
```

### Matching entire input
```javascript
let identifier = "myVariable";
let regex = /^[_a-zA-Z][_a-zA-Z0-9]*$/;
regex.test(identifier); // true
```
```

--------------------------------

### Find matching strings in an array using Intl.Collator.prototype.compare()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Collator/compare

Use the compare function for finding matching strings in arrays. This example demonstrates how to find an element that is considered equal to a target string.

```javascript
const items = [
  'réservé',
  'premier',
  'cliché',
  'communiqué',
  'café',
  'adieu',
  'éclair',
  'encore',
];

const collator = new Intl.Collator('fr', { sensitivity: 'base' });

const searchTerm = 'éclair';
const index = items.findIndex(item => collator.compare(item, searchTerm) === 0);

console.log(index);
// Expected output: 6
```

--------------------------------

### String.prototype.at()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/at

The at() method retrieves a character from a string at a specified index. It supports both positive indices (from the start) and negative indices (from the end).

```APIDOC
## String.prototype.at()

### Description
Retrieves a character from a string at a specified index. Supports positive and negative integers for indexing.

### Method
Instance method of String objects.

### Endpoint
N/A (JavaScript method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const str = "Mozilla";
console.log(str.at(2)); // Output: "z"
console.log(str.at(-2)); // Output: "l"
```

### Response
#### Success Response (200)
A `String` consisting of the single UTF-16 code unit located at the specified position. Returns `undefined` if the given index cannot be found.

#### Response Example
```javascript
// For str.at(2) on "Mozilla"
"z"

// For str.at(-2) on "Mozilla"
"l"

// For str.at(10) on "Mozilla"
undefined
```
```

--------------------------------

### Object.defineProperty() - Creating a property

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty

Demonstrates how Object.defineProperty() creates a new property if it doesn't exist. Fields can be omitted, and default values will be used.

```APIDOC
## Creating a property
When the property specified doesn't exist in the object, `Object.defineProperty()` creates a new property as described. Fields may be omitted from the descriptor and default values for those fields are inputted.
```

--------------------------------

### Iterator.prototype.drop()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Iterator/drop

The drop() method returns a new iterator helper object that skips the given number of elements at the start of the iterator.

```APIDOC
## Iterator.prototype.drop(limit)

### Description
The drop() method returns a new iterator helper object that skips the given number of elements at the start of this iterator.

### Parameters
#### Parameters
- **limit** (number) - Required - The number of elements to drop from the start of the iteration.

### Return value
A new iterator helper object. If the current iterator has fewer than limit elements, the new iterator helper will be immediately completed the first time next() is called.

### Exceptions
- **RangeError**: Thrown if limit becomes NaN or negative when converted to an integer.
```

--------------------------------

### Using offset: "use" to obtain exact time first

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/ZonedDateTime/with

Illustrates the behavior of `offset: "use"`, where the provided offset is used to find the exact time first, and then the offset is recalculated.

```javascript
const dt = Temporal.ZonedDateTime.from("2023-10-26T10:00:00-07:00[America/Denver]");
console.log(dt.toString());
// "2023-10-26T10:00:00-07:00[America/Denver]"

// DST ends on Nov 5, 2023 at 2am
const dt2 = dt.with({ month: 11, day: 5 }, { offset: "use" });
console.log(dt2.toString());
// "2023-11-05T10:00:00-07:00[America/Denver]"
```

--------------------------------

### DataView.prototype.setBigUint64()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView

Takes a BigInt and stores it as a 64-bit unsigned integer in the 8 bytes starting at the specified byte offset of this DataView.

```APIDOC
## DataView.prototype.setBigUint64()

### Description
Takes a BigInt and stores it as a 64-bit unsigned integer in the 8 bytes starting at the specified byte offset of this `DataView`.

### Method
`DataView.prototype.setBigUint64()`

### Parameters
#### Path Parameters
- **byteOffset** (number) - Required - The byte offset from the start of the `DataView` where the value begins.
- **value** (BigInt) - Required - The BigInt value to write.

#### Query Parameters
None

#### Request Body
None

### Request Example
None

### Response
#### Success Response (200)
- **None**

#### Response Example
None
```

--------------------------------

### ArrayBuffer.prototype.slice()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/slice

Returns a new ArrayBuffer whose contents are a copy of this ArrayBuffer's bytes from start, inclusive, up to end, exclusive.

```APIDOC
## ArrayBuffer.prototype.slice()

### Description
The slice() method of ArrayBuffer instances returns a new ArrayBuffer whose contents are a copy of this ArrayBuffer's bytes from start, inclusive, up to end, exclusive.

### Parameters
#### Query Parameters
- **start** (integer) - Optional - Zero-based index at which to start extraction. Negative values count back from the end of the buffer.
- **end** (integer) - Optional - Zero-based index at which to end extraction (exclusive). Negative values count back from the end of the buffer.

### Return value
A new ArrayBuffer containing the extracted elements. It is not resizable, even if the original was.
```

--------------------------------

### Escaping Double Punctuators in v-mode

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Character_class

Examples of valid and invalid escaping for double punctuator sequences in v-mode versus u-mode.

```javascript
/[\!]/u
```

```javascript
/[\!]/v
```

```javascript
/[!]/v
```

```javascript
/[!!]/v
```

--------------------------------

### Initialize a locale with a string

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale/Locale

Basic usage of the constructor using only a locale identifier string.

```javascript
const locale = new Intl.Locale("en-US");
```

--------------------------------

### For loop without a body

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for

Example of a for loop that calculates an offset position in the `afterthought` section, using a semicolon as an empty statement.

```javascript
for (let i = 0, j = 10; j < 11; i++, j--) {
  // empty statement
  ;
}
```

--------------------------------

### Use a generator function

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/yield

This example shows how to construct an iterator from a generator function and use its next() method to advance execution. The value passed to next() becomes the result of the yield expression.

```javascript
const iterator = generatorExample();

let result = iterator.next(); // Generator starts, logs 'Generator started', yields 'First value'
console.log(result); // { value: 'First value', done: false }

result = iterator.next('hello'); // Resumes, logs 'Received: hello', yields 'Second value'
console.log(result); // { value: 'Second value', done: false }

result = iterator.next('world'); // Resumes, logs 'Received: world', returns 'Generator finished'
console.log(result); // { value: 'Generator finished', done: true }
```

--------------------------------

### Iteration using next()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/values

Demonstrates manual iteration over an array using the next() method of the returned iterator.

```javascript
const arr = ["a", "b", "c"];
const iterator = arr.values();
console.log(iterator.next().value); // "a"
console.log(iterator.next().value); // "b"
console.log(iterator.next().value); // "c"
console.log(iterator.next().value); // undefined
```

--------------------------------

### Temporal.Instant Constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Instant

Creates a new Temporal.Instant object by directly supplying the underlying data.

```APIDOC
## Constructor

`Temporal.Instant()` Experimental

Creates a new `Temporal.Instant` object by directly supplying the underlying data.
```

--------------------------------

### Catching errors with decodeURIComponent()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/decodeURIComponent

This example demonstrates how to catch URIError exceptions that may occur when decoding an invalid URI component.

```javascript
const invalidEncoded = "%D1%82%D0%B5%D1%81%D1%82%"; // Incomplete escape sequence
try {
  const decoded = decodeURIComponent(invalidEncoded);
  console.log(decoded);
} catch (e) {
  console.error(e); // Output: URIError: URI malformed
}
```

--------------------------------

### Temporal.Instant.prototype.epochMilliseconds

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/Instant/epochMilliseconds

This section details the `epochMilliseconds` accessor property of `Temporal.Instant` instances. It returns the number of milliseconds since the Unix epoch. The `set` accessor is undefined, and `Temporal.Instant.fromEpochMilliseconds()` should be used to create new instances.

```APIDOC
## GET Temporal.Instant.prototype.epochMilliseconds

### Description
Returns an integer representing the number of milliseconds elapsed since the Unix epoch (midnight at the beginning of January 1, 1970, UTC) to this instant.

### Method
GET

### Endpoint
Temporal.Instant.prototype.epochMilliseconds

### Parameters
This is an accessor property and does not take parameters.

### Request Example
```javascript
const instant = Temporal.Instant.from("2024-07-26T10:00:00Z");
console.log(instant.epochMilliseconds);
// Expected output: 1721973600000
```

### Response
#### Success Response (200)
- **epochMilliseconds** (integer) - The number of milliseconds since the Unix epoch.

#### Response Example
```json
1721973600000
```

## POST Temporal.Instant.fromEpochMilliseconds()

### Description
Creates a new `Temporal.Instant` object from the number of milliseconds elapsed since the Unix epoch. This is the recommended way to create or modify an instant based on millisecond values.

### Method
POST

### Endpoint
Temporal.Instant.fromEpochMilliseconds()

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
- **milliseconds** (number) - Required - The number of milliseconds since the Unix epoch.

### Request Example
```javascript
const newInstant = Temporal.Instant.fromEpochMilliseconds(1721973600000);
console.log(newInstant.toString());
// Expected output: "2024-07-26T10:00:00Z"
```

### Response
#### Success Response (200)
- **Temporal.Instant** (object) - A new `Temporal.Instant` object representing the specified time.

#### Response Example
```json
{
  "instant": "2024-07-26T10:00:00Z"
}
```
```

--------------------------------

### Define a user-defined iterable

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol/iterator

This example shows how to define a custom iterable object. The `[Symbol.iterator]` method should return an iterator object.

```javascript
const myIterable = {
  [Symbol.iterator]() {
    let step = 0;
    return {
      next() {
        if (step < 2) {
          step++;
          return {
            value: step,
            done: false
          };
        } else {
          return {
            value: undefined,
            done: true
          };
        }
      }
    };
  }
};

for (const value of myIterable) {
  console.log(value);
}
// Output:
// 1
// 2
```

--------------------------------

### Racing timers with Promise.race()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/race

Demonstrates racing multiple setTimeout timers where the shortest duration determines the result.

```javascript
const promise1 = new Promise((resolve, reject) => {
  setTimeout(resolve, 500, 'one');
});

const promise2 = new Promise((resolve, reject) => {
  setTimeout(resolve, 100, 'two');
});

Promise.race([promise1, promise2]).then((value) => {
  console.log(value);
  // Both resolve, but promise2 is faster
});
// Expected output: "two"
```

--------------------------------

### Extract substring using slice()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/slice

This example demonstrates how to extract a substring from a string using positive indexes. The `indexEnd` is exclusive.

```javascript
const str = "The quick brown fox jumps over the lazy dog.";

console.log(str.slice(4, 9));
// Expected output: "quick"

console.log(str.slice(11));
// Expected output: "jumps over the lazy dog."
```

--------------------------------

### Basic toLocaleDateString() usage

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toLocaleDateString

Demonstrates basic usage without specifying locale or options, returning a string in the default locale and with default options.

```javascript
const today = new Date();
const dateString = today.toLocaleDateString();
console.log(dateString);
```

--------------------------------

### Native function string example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/toString

For built-in or bound functions, toString() returns a native function string. This string is not evaluable.

```javascript
function someName() { [native code] }
```

--------------------------------

### Using Array.prototype.reduce() vs Iterator.prototype.reduce()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Iterator

This example demonstrates the difference between using Array.prototype.reduce() after converting an iterator to an array versus using the Iterator.prototype.reduce() method directly. The latter is more efficient as it avoids creating an intermediate array and iterates only once.

```javascript
const map = new Map([
  ['a', 1],
  ['b', 2],
  ['c', 3]
]);

// Inefficient: converts to array, then reduces
const sumArray = Array.from(map.values()).reduce((acc, val) => acc + val, 0);

// Efficient: uses iterator's reduce directly
const sumIterator = map.values().reduce((acc, val) => acc + val, 0);

console.log(sumArray, sumIterator); // 6 6
```

--------------------------------

### Promise Chaining with then()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/then

Demonstrates how the then() method returns a new Promise, enabling method chaining. If the handler returns a Promise, it's passed to the next then() in the chain. The example simulates asynchronous code using setTimeout.

```APIDOC
## Promise Chaining with then()

### Description
The `then()` method returns a new `Promise`, allowing for method chaining. If the function passed as a handler to `then()` returns a `Promise`, an equivalent `Promise` will be exposed to the subsequent `then()` in the method chain. The below snippet simulates asynchronous code with the `setTimeout` function.

### Method
`Promise.prototype.then(onFulfilled, onRejected)`

### Endpoint
N/A (Instance method)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
// Example demonstrating chaining
new Promise((resolve, reject) => {
  setTimeout(() => resolve(10), 1000);
})
.then(value => {
  console.log('First then:', value);
  return value * 2;
})
.then(value => {
  console.log('Second then:', value);
  return Promise.resolve(value * 3);
})
.then(value => {
  console.log('Third then:', value);
})
.catch(error => {
  console.error('An error occurred:', error);
});
```

### Response
#### Success Response (200)
- **Promise** (Promise) - A new Promise that resolves or rejects based on the outcome of the `onFulfilled` or `onRejected` handlers.

#### Response Example
```json
{
  "message": "Promise resolved or rejected based on handler execution"
}
```
```

--------------------------------

### SpiderMonkey Stack Trace with eval/anonymous

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/stack

Example of a stack trace format from SpiderMonkey including eval and anonymous function calls.

```javascript
anonymous@filename.js line 1 > Function:1:8
@filename.js:1:65

====
@filename.js line 3 > eval:1:1
@filename.js:3:13
```

--------------------------------

### Using sup() to create superscript HTML

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/sup

This example demonstrates how to use the deprecated `sup()` method to create an HTML string that displays text as superscript. It is recommended to use DOM APIs like `document.createElement()` instead.

```javascript
const str = "This is superscript";

console.log(str.sup()); // "<sup>This is superscript</sup>"
```

--------------------------------

### Temporal.PlainMonthDay Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainMonthDay/PlainMonthDay

Methods available on instances of Temporal.PlainMonthDay.

```APIDOC
## Instance Methods

- equals(): Compares two PlainMonthDay objects.
- toJSON(): Returns a JSON representation.
- toLocaleString(): Returns a localized string representation.
- toPlainDate(): Converts to a PlainDate object.
- toString(): Returns an ISO 8601 string representation.
- valueOf(): Returns the primitive value.
- with(): Returns a new PlainMonthDay with modified fields.
```

--------------------------------

### Date.UTC() with year range

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/UTC

This example shows how Date.UTC() handles years between 0 and 99, mapping them to the 20th century (1900-1999).

```javascript
const date1995 = Date.UTC(95, 5, 15); // Year 95 is treated as 1995
console.log(new Date(date1995));
```

--------------------------------

### Basic Promise Chaining with then()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/then

Demonstrates basic chaining of Promises using the then() method. The first then() handles fulfillment, and the second then() handles the fulfillment of the promise returned by the first. This pattern is fundamental for asynchronous operations.

```javascript
const p1 = new Promise((resolve, reject) => {
  setTimeout(() => {
    resolve('foo');
  }, 300);
});

p1.then(value => {
  console.log(value); // 'foo'
  return value + 'bar';
}).then(value => {
  console.log(value); // 'foobar'
});
```

--------------------------------

### Define a setter with a computed property name

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/set

This example shows how to use an expression for a computed property name to define a setter.

```javascript
let obj = {
  set ["prop" + "Name"](value) {
    console.log(value);
  }
};

obj.propName = "computed"; // "computed"
```

--------------------------------

### Remove a setter using the `delete` operator

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/set

This example shows how to remove a setter property from an object using the `delete` operator.

```javascript
const obj = {
  set prop(value) {
    this.value = value;
  }
};

delete obj.prop;
obj.prop = 10; // This will not throw an error, but it won't set anything.
```

--------------------------------

### Intl.ListFormat Constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/ListFormat

Creates a new Intl.ListFormat object.

```APIDOC
## Intl.ListFormat()

### Description
Creates a new `Intl.ListFormat` object.

### Method
Constructor

### Endpoint
N/A (JavaScript built-in object)

### Parameters
None directly on the constructor call, options are passed during instantiation.

### Request Example
```javascript
const formatter = new Intl.ListFormat('en', { style: 'long', type: 'conjunction' });
```

### Response
#### Success Response (200)
An `Intl.ListFormat` object.

#### Response Example
```javascript
// Example of a formatter object (structure may vary)
{
  // Internal properties representing locale and options
}
```
```

--------------------------------

### Invalid for-of loop syntax

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Invalid_for-of_initializer

This example demonstrates the incorrect usage of a for-of loop where the variable declaration includes an initializer.

```javascript
for (const i = 0 of iterable) {
  // ...
}
```

--------------------------------

### Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number

Methods available on Number instances for formatting and value retrieval.

```APIDOC
## Instance Methods

- **toExponential()**: Returns a string representing the number in exponential notation.
- **toFixed()**: Returns a string representing the number in fixed-point notation.
- **toLocaleString()**: Returns a language-sensitive string representation of the number.
- **toPrecision()**: Returns a string representing the number to a specified precision.
- **toString(radix)**: Returns a string representing the specified object in the specified radix.
- **valueOf()**: Returns the primitive value of the specified object.
```

--------------------------------

### Get the day of a Temporal.PlainMonthDay

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainMonthDay/day

Use the `day` accessor property to retrieve the day of the month from a `Temporal.PlainMonthDay` instance. This property is read-only.

```javascript
const md = Temporal.PlainMonthDay.from("12-15");
console.log(md.day); // 15
```

--------------------------------

### Testing symbol properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/propertyIsEnumerable

Demonstrates that Symbol properties are supported by the method.

```javascript
const sym = Symbol("foo");
const o = { [sym]: "is enumerable" };

console.log(o.propertyIsEnumerable(sym)); // true
```

--------------------------------

### Using supportedLocalesOf()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat/supportedLocalesOf

This example demonstrates how supportedLocalesOf() returns supported locale tags. It assumes a runtime that supports Indonesian and German but not Balinese. The 'lookup' algorithm is specified to prevent 'best fit' matching.

```javascript
const locales = ["en", "id", "de", "balinese", "zh-Hans-CN-variant1", "zh-Hant-HK-variant2"];
const options = {
  localeMatcher: "lookup",
};

console.log(Intl.DateTimeFormat.supportedLocalesOf(locales, options));
// Expected output (if runtime supports Indonesian and German):
// ["id", "de"]

console.log(Intl.DateTimeFormat.supportedLocalesOf(locales));
// Expected output (if runtime supports Indonesian and German):
// ["en", "id", "de"]
```

--------------------------------

### Function Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat/formatToParts

Standard instance methods available on Function objects.

```APIDOC
## Function Instance Methods

### Description
Standard methods for inspecting and manipulating object properties.

### Methods
- `hasOwnProperty(prop)`
- `isPrototypeOf(V)`
- `propertyIsEnumerable(V)`
- `toLocaleString()`
- `toString()`
- `valueOf()`

### Endpoint
N/A (JavaScript instance methods)

### Parameters
- **prop** (String) - The name of the property to check.
- **V** (Object) - The object to compare against.

### Response
#### Success Response
- **hasOwnProperty()**: Returns a boolean indicating whether the object has the specified property as its own property.
- **isPrototypeOf()**: Returns a boolean indicating whether an object exists in the prototype chain of another object.
- **propertyIsEnumerable()**: Returns a boolean indicating whether the specified property is the object's own property and is enumerable.
- **toLocaleString()**: Returns a string representing the object. Overridden by subclasses.
- **toString()**: Returns a string representing the object. Overridden by subclasses.
- **valueOf()**: Returns the primitive value of an object. Overridden by subclasses.
```

--------------------------------

### Get available numbering system identifiers

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale

The getNumberingSystems() method returns an array of numbering system identifiers available for the locale.

```javascript
const locale = new Intl.Locale("en-US");
console.log(locale.getNumberingSystems()); // ["latn", "arab", ...]
```

--------------------------------

### Find first element less than its neighbors using findIndex()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex

This example shows how to use the `array` argument within the callback function of `findIndex()` to access other elements. It filters positive values and then finds the first element that is less than its neighbors.

```javascript
const numbers = [5, 10, 15, 20, 12, 30];

const index = numbers.filter((num) => num > 0).findIndex(
  (num, index, arr) => num < arr[index - 1] || num < arr[index + 1],
);

console.log(index); // 4
```

--------------------------------

### RegExp Instance Properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/Symbol.split

Details on properties available on RegExp instances.

```APIDOC
## RegExp Instance Properties

### Description
Properties that provide information about the state and characteristics of a regular expression instance.

### Properties
- **lastIndex** (number) - The index at which to start the next match.
- **dotAll** (boolean) - Whether the 's' flag is enabled, allowing '.' to match newline characters.
- **flags** (string) - The flags of the regular expression (e.g., 'g', 'i', 'm').
- **global** (boolean) - Whether the 'g' flag (global search) is enabled.
- **hasIndices** (boolean) - Whether the 'd' flag (indices) is enabled.
- **ignoreCase** (boolean) - Whether the 'i' flag (ignore case) is enabled.
- **multiline** (boolean) - Whether the 'm' flag (multiline) is enabled.
- **source** (string) - The text of the regular expression pattern.
- **sticky** (boolean) - Whether the 'y' flag (sticky search) is enabled.
- **unicode** (boolean) - Whether the 'u' flag (unicode) is enabled.
- **unicodeSets** (boolean) - Whether the 'v' flag (unicodeSets) is enabled.

### Example
```javascript
const regex = /abc/gi;
console.log(regex.source); // "abc"
console.log(regex.flags); // "gi"
console.log(regex.global); // true
```
```

--------------------------------

### Get available calendar identifiers

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale

Call the getCalendars() method on an Intl.Locale object to retrieve an array of available calendar identifiers.

```javascript
const locale = new Intl.Locale("en-US");
console.log(locale.getCalendars()); // ["gregory", "japanese", ...]
```

--------------------------------

### Get AsyncIterator.prototype

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/AsyncIterator

The AsyncIterator.prototype object shared by all built-in async iterators can be obtained with this code. Note that AsyncIterator is not a global object.

```javascript
const proto = AsyncIterator.prototype;
```

--------------------------------

### Use async generator to read files

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function%2A

This example demonstrates using an async generator function to read a series of files. It reads file content only when requested, leveraging Node.js's `fs/promises` module. Ensure the `fs/promises` module is available in your environment.

```javascript
import { readFile } from 'fs/promises';

async function* readFiles(filenames) {
  for (const filename of filenames) {
    yield readFile(filename, 'utf8');
  }
}

const filenames = ['file1.txt', 'file2.txt'];
const fileStream = readFiles(filenames);

for await (const content of fileStream) {
  console.log(content);
}
```

--------------------------------

### JavaScript Getter Syntax

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/get

Demonstrates the basic syntax for defining a getter in an object literal.

```APIDOC
## GET /api/users

### Description
This endpoint retrieves a list of users.

### Method
GET

### Endpoint
/api/users

### Parameters
#### Query Parameters
- **limit** (number) - Optional - The maximum number of users to return.

### Response
#### Success Response (200)
- **users** (array) - An array of user objects.
  - **id** (number) - The user's unique identifier.
  - **name** (string) - The user's name.

#### Response Example
```json
{
  "users": [
    {
      "id": 1,
      "name": "John Doe"
    },
    {
      "id": 2,
      "name": "Jane Smith"
    }
  ]
}
```
```

--------------------------------

### Regex Flags: Generate Indices

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Regular_expressions

The 'd' flag generates indices for substring matches, providing the start and end positions of each match.

```javascript
const regex = /a/d;
```

--------------------------------

### Using return() on a generator

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator/return

Demonstrates the basic usage of the return() method on a generator. If return() is called on a completed generator, it remains completed. If no argument is provided, the value property is undefined.

```javascript
function* gen() {
  try {
    yield 1;
    yield 2;
  } finally {
    console.log('finally block executed');
  }
  yield 3;
}

const g = gen();
console.log(g.next()); // { value: 1, done: false }
console.log(g.return(10)); // finally block executed
// { value: 10, done: true }
console.log(g.next()); // { value: undefined, done: true }
```

--------------------------------

### Array.prototype.lastIndexOf()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/lastIndexOf

Returns the last index at which a given element can be found in the array, or -1 if it is not present. The array is searched backwards, starting at fromIndex.

```APIDOC
## GET /array/prototype/lastIndexOf

### Description
Returns the last index at which a given element can be found in the array, or -1 if it is not present. The array is searched backwards, starting at `fromIndex`.

### Method
GET (conceptual, as this is a method on an array instance)

### Endpoint
`Array.prototype.lastIndexOf(searchElement, fromIndex)`

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const array = [2, 5, 9, 2];
console.log(array.lastIndexOf(2)); // Output: 3
console.log(array.lastIndexOf(2, 2)); // Output: 0
console.log(array.lastIndexOf(7)); // Output: -1
console.log(array.lastIndexOf(2, -1)); // Output: 3
```

### Response
#### Success Response (200)
- **index** (number) - The last index of `searchElement` in the array; `-1` if not found.

#### Response Example
```json
{
  "index": 3
}
```

### Error Handling
- Returns `-1` if `searchElement` is not found.
- Returns `-1` if `searchElement` is `NaN`.
- Returns `-1` if `fromIndex < -array.length`.
```

--------------------------------

### Valid for-of loop syntax

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors/Invalid_for-of_initializer

This example shows the correct way to use a for-of loop by removing the initializer from the variable declaration. Initialization logic, if needed, should be placed within the loop body.

```javascript
for (const i of iterable) {
  // ...
}
```

--------------------------------

### Temporal.PlainYearMonth Instance Methods

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainYearMonth/add

Methods for manipulating and retrieving information from a Temporal.PlainYearMonth instance.

```APIDOC
## Temporal.PlainYearMonth.prototype.add()

### Description
Adds time to a Temporal.PlainYearMonth object.

### Method
`plainYearMonth.add(duration)`

### Parameters
#### Path Parameters
- **duration** (Temporal.Duration) - Required - The duration to add.

### Response
#### Success Response (200)
- **Temporal.PlainYearMonth** - A new PlainYearMonth object with the duration added.

## Temporal.PlainYearMonth.prototype.equals()

### Description
Checks if two Temporal.PlainYearMonth objects represent the same date.

### Method
`plainYearMonth.equals(other)`

### Parameters
#### Path Parameters
- **other** (Temporal.PlainYearMonth) - Required - The other PlainYearMonth object to compare.

### Response
#### Success Response (200)
- **boolean** - `true` if the dates are equal, `false` otherwise.

## Temporal.PlainYearMonth.prototype.since()

### Description
Calculates the duration between two Temporal.PlainYearMonth objects.

### Method
`plainYearMonth.since(other[, options])`

### Parameters
#### Path Parameters
- **other** (Temporal.PlainYearMonth) - Required - The other PlainYearMonth object.
- **options** (object) - Optional - An options object.
  - **largestUnit** (string) - Optional - The largest unit to return in the duration (e.g., 'year', 'month').
  - **smallestUnit** (string) - Optional - The smallest unit to return in the duration (e.g., 'day', 'hour').
  - **sign** (number) - Optional - The sign of the duration (-1, 0, or 1).

### Response
#### Success Response (200)
- **Temporal.Duration** - The duration between the two PlainYearMonth objects.

## Temporal.PlainYearMonth.prototype.subtract()

### Description
Subtracts time from a Temporal.PlainYearMonth object.

### Method
`plainYearMonth.subtract(duration)`

### Parameters
#### Path Parameters
- **duration** (Temporal.Duration) - Required - The duration to subtract.

### Response
#### Success Response (200)
- **Temporal.PlainYearMonth** - A new PlainYearMonth object with the duration subtracted.

## Temporal.PlainYearMonth.prototype.toJSON()

### Description
Returns a string representation of the Temporal.PlainYearMonth object suitable for JSON serialization.

### Method
`plainYearMonth.toJSON()`

### Response
#### Success Response (200)
- **string** - The JSON string representation.

## Temporal.PlainYearMonth.prototype.toLocaleString()

### Description
Returns a string representing the Temporal.PlainYearMonth object, using locale-specific formatting.

### Method
`plainYearMonth.toLocaleString([locales[, options]])`

### Parameters
#### Path Parameters
- **locales** (string | Array<string>) - Optional - A string with a BCP 47 language tag, or an array of such strings.
- **options** (object) - Optional - An options object for formatting.

### Response
#### Success Response (200)
- **string** - The locale-formatted string.

## Temporal.PlainYearMonth.prototype.toPlainDate()

### Description
Converts the Temporal.PlainYearMonth object to a Temporal.PlainDate object, defaulting to the first day of the month.

### Method
`plainYearMonth.toPlainDate()`

### Response
#### Success Response (200)
- **Temporal.PlainDate** - A new PlainDate object.

## Temporal.PlainYearMonth.prototype.toString()

### Description
Returns a string representation of the Temporal.PlainYearMonth object.

### Method
`plainYearMonth.toString([options])`

### Parameters
#### Path Parameters
- **options** (object) - Optional - An options object.
  - **calendarName** (string) - Optional - Specifies whether to include the calendar name ('auto' or 'always').

### Response
#### Success Response (200)
- **string** - The string representation.

## Temporal.PlainYearMonth.prototype.until()

### Description
Calculates the duration between two Temporal.PlainYearMonth objects.

### Method
`plainYearMonth.until(other[, options])`

### Parameters
#### Path Parameters
- **other** (Temporal.PlainYearMonth) - Required - The other PlainYearMonth object.
- **options** (object) - Optional - An options object.
  - **largestUnit** (string) - Optional - The largest unit to return in the duration (e.g., 'year', 'month').
  - **smallestUnit** (string) - Optional - The smallest unit to return in the duration (e.g., 'day', 'hour').
  - **sign** (number) - Optional - The sign of the duration (-1, 0, or 1).

### Response
#### Success Response (200)
- **Temporal.Duration** - The duration between the two PlainYearMonth objects.

## Temporal.PlainYearMonth.prototype.valueOf()

### Description
Returns the primitive value of the Temporal.PlainYearMonth object.

### Method
`plainYearMonth.valueOf()`

### Response
#### Success Response (200)
- **Temporal.PlainYearMonth** - The primitive value.

## Temporal.PlainYearMonth.prototype.with()

### Description
Returns a new Temporal.PlainYearMonth object with some fields replaced.

### Method
`plainYearMonth.with(temporalLike)`

### Parameters
#### Path Parameters
- **temporalLike** (object) - Required - An object with fields to replace.

### Response
#### Success Response (200)
- **Temporal.PlainYearMonth** - A new PlainYearMonth object with updated fields.

```

--------------------------------

### Non-capturing Group Syntax and Usage

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Regular_expressions/Non-capturing_group

This section details the syntax and provides examples of using non-capturing groups in JavaScript regular expressions.

```APIDOC
## Non-capturing group: (?:...)

### Description
A non-capturing group `(?:...)` groups a subpattern, allowing quantifiers or disjunctions to be applied to the entire group without memorizing the matched text. This improves performance and avoids confusion with capturing groups.

### Syntax
```regex
pattern
```

`pattern`: A regular expression pattern, including disjunctions.

### Examples

#### Grouping a subpattern and applying a quantifier
This example tests if a file path ends with `styles.css` or `styles.[a hex hash].css`. The non-capturing group `(?:\.[\da-f]+)?` makes the hexadecimal hash part optional.

```javascript
const regex = /styles(?:\.[\da-f]+)?\.css$/;
console.log(regex.test('styles.css')); // true
console.log(regex.test('styles.abcdef.css')); // true
console.log(regex.test('styles.123456.css')); // true
console.log(regex.test('styles.css.bak')); // false
```

#### Grouping a disjunction
This example matches file extensions using a disjunction grouped by a non-capturing group.

```javascript
const regex = /\.(?:jpg|png|gif)$/;
console.log(regex.test('image.jpg')); // true
console.log(regex.test('photo.png')); // true
console.log(regex.test('animation.gif')); // true
console.log(regex.test('document.pdf')); // false
```

#### Avoiding refactoring hazards
Using non-capturing groups prevents the need to update group indices when the pattern changes, unlike capturing groups.

**Example without non-capturing groups (prone to refactoring issues):**
```javascript
// Original pattern to match title='xxx'
let regex = /title='([^']*)'/;
let match = regex.exec("title='Example'");
console.log(match[1]); // 'Example'

// Adding an alias 'name' requires updating indices
regex = /(?:title|name)='([^']*)'/; // If 'title' was group 1, now 'name' might be group 1
```

**Example with non-capturing groups (safer):**
```javascript
// Using non-capturing group for disjunction
let regex = /(?:title|name)='([^']*)'/;
let match = regex.exec("title='Example'");
console.log(match[1]); // 'Example'

match = regex.exec("name='Another Example'");
console.log(match[1]); // 'Another Example'
```

### Browser Compatibility
This feature is widely available across browsers since July 2015.
```

--------------------------------

### Parsed interpretation of class field error

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Lexical_grammar

The parsed interpretation of the class field and generator method example that leads to a syntax error.

```javascript
class A {
  a = 1 * b() {}
}
```

--------------------------------

### Changing day using with()

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainMonthDay/day

Demonstrates how to use the `with()` method to create a new `Temporal.PlainMonthDay` object with a different day value. The `with()` method constrains the day to the range of valid values for the given month and calendar.

```APIDOC
## Changing day using with()

### Description
By default, `with()` constrains the day to the range of valid values. So you can use `{ day: 1 }` to set the day to the first day of the month, even if the first day does not have the number `1`. Similarly, the following will set the day to the last day of the month:

### Method
`Temporal.PlainMonthDay.prototype.with()`

### Endpoint
`Temporal.PlainMonthDay.prototype.with({ day: newDay })`

### Parameters
#### Request Body
- **day** (integer) - Required - The new day value to set.

### Request Example
```json
{
  "day": 1
}
```

### Response
#### Success Response (200)
- **Temporal.PlainMonthDay** - A new `Temporal.PlainMonthDay` object with the updated day.

### Response Example
```json
{
  "day": 1
}
```
```

--------------------------------

### Get a value or insert a new entry

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map

The getOrInsert() method returns the value corresponding to the specified key. If the key is not present, it inserts a new entry with the key and a given default value, and returns the inserted value.

```javascript
const map = new Map([['key1', 'value1']]);

console.log(map.getOrInsert('key1', 'defaultValue')); // 'value1'
console.log(map.getOrInsert('key2', 'defaultValue')); // 'defaultValue'
console.log(map.get('key2')); // 'defaultValue'
```

--------------------------------

### Using with a closure

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/using

Demonstrates how a resource might be disposed before a closure is executed if the resource is tied to the function scope.

```javascript
function example() {
  using resource = new Resource();
  return () => resource.getValue();
}
```

--------------------------------

### Class field and generator method pitfall

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Lexical_grammar

Example of a syntax error caused by missing semicolons between class fields and generator methods.

```javascript
class A {
  a = 1
  *b() {}
}
```

--------------------------------

### Loop through all days in a month

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDate/day

To iterate through all days of a month, start by setting the date to the first of the month using `with({ day: 1 })`. Then, repeatedly use `add({ days: 1 })` until the month changes. This ensures correct handling even for non-standard calendars.

```javascript
const date = Temporal.PlainDate.from("2024-03-15");
let currentDay = date.with({ day: 1 });
const lastDay = date.daysInMonth;

for (let i = 1; i <= lastDay; i++) {
  console.log(currentDay);
  currentDay = currentDay.add({ days: 1 });
}
```

--------------------------------

### Add duration with non-overflowing month increment

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDate/add

Shows an example where adding months does not cause an overflow, as the target month can accommodate the day.

```javascript
const date = Temporal.PlainDate.from("2023-01-15");
const duration = Temporal.Duration.from({ months: 1 });
console.log(date.add(duration).toString()); // Expected: 2023-02-15
```

--------------------------------

### Splitting a string with a separator

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/split

Demonstrates splitting strings using different separators and observing the resulting array structure.

```text
The original string is: "Oh brave new world that has such people in it."
The separator is: " "
The array has 10 elements: Oh / brave / new / world / that / has / such / people / in / it.

The original string is: "Oh brave new world that has such people in it."
The separator is: "undefined"
The array has 1 elements: Oh brave new world that has such people in it.

The original string is: "Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec"
The separator is: ","
The array has 12 elements: Jan / Feb / Mar / Apr / May / Jun / Jul / Aug / Sep / Oct / Nov / Dec
```

--------------------------------

### Temporal.PlainDateTime.prototype.constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal/PlainDateTime

The constructor function that created the instance object. For Temporal.PlainDateTime instances, the initial value is the Temporal.PlainDateTime() constructor.

```APIDOC
## Temporal.PlainDateTime.prototype.constructor

### Description
The constructor function that created the instance object. For Temporal.PlainDateTime instances, the initial value is the Temporal.PlainDateTime() constructor.

### Method
GET

### Endpoint
Temporal.PlainDateTime.prototype.constructor

### Response
#### Success Response (200)
- **constructor** (function) - The constructor function for Temporal.PlainDateTime.
```

--------------------------------

### Using lastIndexOf() with position parameter

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/lastIndexOf

Examples demonstrating how the optional position parameter affects the search range for the last occurrence of a substring.

```javascript
'hello world hello'.lastIndexOf('world', 4)
```

```javascript
'hello world hello'.lastIndexOf('hello', 99)
```

```javascript
'hello world hello'.lastIndexOf('hello', 0)
```

```javascript
'hello world hello'.lastIndexOf('hello', -5)
```

--------------------------------

### Check if a set is NOT a superset of another

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/isSupersetOf

This example demonstrates that a set of odd numbers is not a superset of prime numbers, as not all prime numbers are odd.

```javascript
const set1 = new Set([1, 3, 5, 7, 9, 11, 13, 15, 17, 19]);
const set2 = new Set([2, 3, 5, 7, 11, 13, 17, 19]);
console.log(set1.isSupersetOf(set2)); // false
```

--------------------------------

### Map and flatMap comparison

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/flatMap

Demonstrates the difference between map() and flatMap() when generating a list of words from sentences.

```javascript
const arr1 = ["it's Sunny in", "", "California"];

arr1.map((x) => x.split(" "));
// [["it's","Sunny","in"],[""],["California"]]

arr1.flatMap((x) => x.split(" "));
// ["it's","Sunny","in", "", "California"]
```

--------------------------------

### String Instance Properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/codePointAt

Properties available on individual string instances.

```APIDOC
## String Instance Properties

### Description
Properties available on String instances.

### Properties
- `length`

### Parameters
None

### Request Example
```javascript
let str = "Example";
str.length; // Returns 7
```

### Response
#### Success Response (200)
- **number** - The length of the string.
```

--------------------------------

### Object/Function Static Methods and Properties

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter

Reference for static methods and properties of the Object and Function constructors in JavaScript.

```APIDOC
## Object/Function Static Methods and Properties

### Description
Details on static methods and properties associated with JavaScript's `Object` and `Function` constructors.

### Static Methods
- `Object.apply(thisArg, argsArray)`: Calls a function with a given `this` value and arguments provided as an array (or an array-like object).
- `Object.bind(thisArg, arg1, arg2, ...)`: Creates a new function that, when called, has its `this` keyword set to the provided value, with a given sequence of arguments preceding any provided when the new function is called.
- `Object.call(thisArg, arg1, arg2, ...)`: Calls a function with a given `this` value and arguments provided individually.
- `Object.toString()`: Returns a string representing the object. Overrides the default `Object.prototype.toString()` method.
- `Object[Symbol.hasInstance]()`: Determines if the `prototype` property of a constructor appears on an object's prototype chain.

### Static Properties
- `Object.displayName` (Non-standard): A non-standard property used for debugging purposes.
- `Object.length`: The value of the `length` property is the number of arguments expected by the function.
- `Object.name`: The name of the function.
- `Object.prototype`: Allows the addition of properties to all objects.
- `Object.arguments` (Non-standard, Deprecated): A non-standard, deprecated property that holds the arguments passed to the function.
- `Object.caller` (Non-standard, Deprecated): A non-standard, deprecated property that holds the function that invoked the current function.

### Instance Methods
- `__defineGetter__(propertyName, getter)` (Deprecated): Associates a function with the property that gets the value of that property.
- `__defineSetter__(propertyName, setter)` (Deprecated): Associates a function with the property that sets the value of that property.
- `__lookupGetter__(propertyName)` (Deprecated): Returns the getter function associated with the specified property.
- `__lookupSetter__(propertyName)` (Deprecated): Returns the setter function associated with the specified property.
- `hasOwnProperty(prop)`: Returns a boolean indicating whether the object has the specified property as its own property.
- `isPrototypeOf(V)`: Returns a boolean indicating whether the specified value is in the prototype chain of the object.
- `propertyIsEnumerable(prop)`: Returns a boolean indicating whether the specified property is the object's own property and if it is enumerable.
- `toLocaleString()`: Returns a string representing the object. This method is locale-specific.
- `toString()`: Returns a string representing the object. Overrides the default `Object.prototype.toString()` method.
- `valueOf()`: Returns the primitive value of the specified object.

### Instance Properties
- `__proto__` (Deprecated): A deprecated property that points to the object's prototype.
- `constructor`: A reference to the constructor function that created the object instance.
```

--------------------------------

### Smart / Lazy Getters

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/get

Illustrates the implementation of a smart or lazy getter for memoization.

```APIDOC
## PUT /api/users/{id}

### Description
Updates an existing user.

### Method
PUT

### Endpoint
/api/users/{id}

### Parameters
#### Path Parameters
- **id** (number) - Required - The unique identifier of the user to update.

#### Request Body
- **name** (string) - Optional - The updated name of the user.
- **email** (string) - Optional - The updated email address of the user.

### Request Example
```json
{
  "name": "Peter Jones Updated"
}
```

### Response
#### Success Response (200)
- **id** (number) - The unique identifier of the updated user.
- **name** (string) - The updated name of the user.
- **email** (string) - The updated email address of the user.

#### Response Example
```json
{
  "id": 3,
  "name": "Peter Jones Updated",
  "email": "peter.jones@example.com"
}
```
```

--------------------------------

### Intercepting getPrototypeOf

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy/Proxy/getPrototypeOf

This example demonstrates how to use the getPrototypeOf trap to intercept calls to Object.getPrototypeOf(). The handler returns a specific prototype object.

```javascript
const handler = {
  getPrototypeOf(target) {
    return {
      get: () => "I am the prototype!"
    };
  }
};

const proto = {
  get: () => "I am the real prototype!"
};

const target = Object.create(proto);
const proxy = new Proxy(target, handler);

console.log(Object.getPrototypeOf(proxy));
// Expected output: { get: [Function: get] }
```

--------------------------------

### Basic Promise.resolve() usage

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/resolve

A simple example showing Promise.resolve() with a non-promise value. The promise returned is immediately fulfilled with the provided value.

```javascript
Promise.resolve('Success!');
// This returns a Promise that is already fulfilled with the value 'Success!'
```

--------------------------------

### Convert Map to Object

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/fromEntries

Demonstrates converting a Map instance into a plain JavaScript object.

```javascript
const map = new Map([ ["foo", "bar"], ["baz", 42] ]);
const obj = Object.fromEntries(map);
console.log(obj); // { foo: "bar", baz: 42 }
```

--------------------------------

### Getter always returns the same value

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty

This example demonstrates a getter that consistently returns a predefined value, regardless of any potential underlying data.

```javascript
const obj = {
  get constant() {
    return "hello world";
  }
};

console.log(obj.constant); // "hello world"

```

--------------------------------

### Handling String Returns in flatMap

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Iterator/flatMap

Demonstrates how to handle string returns, which are rejected by flatMap unless wrapped or converted.

```javascript
// Wrap in an array to yield the string as one element
const it = ["a", "b"].values().flatMap((x) => [x + x]);
console.log([...it]); // ['aa', 'bb']
```

```javascript
// Use Iterator.from() to iterate by code points
const it = ["a", "b"].values().flatMap((x) => Iterator.from(x + x));
console.log([...it]); // ['a', 'a', 'b', 'b']
```

--------------------------------

### Anonymous function name property example

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/name

Shows that an anonymous function assigned to a variable will have its name property reflect the variable name.

```javascript
const bar = function() {};
console.log(bar.name);
```

--------------------------------

### RegExp Constructor

Source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/Symbol.split

Details about the RegExp constructor and its usage.

```APIDOC
## RegExp()

### Description
Constructs a regular expression object for matching text against a pattern.

### Method
Constructor

### Endpoint
N/A (Built-in Object)

### Parameters
#### Path Parameters
None

#### Query Parameters
None

#### Request Body
None

### Request Example
```javascript
const regex = new RegExp('pattern', 'flags');
```

### Response
#### Success Response (200)
Returns a RegExp object.

#### Response Example
```json
{
  "type": "RegExp"
}
```
```