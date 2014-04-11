WTT - What the Type?
=====

`wtt` is a small library for type checking in JS. _It's also **hips** and has **swag**_

## Version
0.0.1

## Installation

    npm install wtt

## Usage
    var iz = require('wtt');

    var fn = function() { return true; }

    iz(fn).aFunction(); // returns true

    iz([]).anArray(); // returns true

    iz(123).aNumber(); // returns true

    iz('string').aString(); // returns true

    iz({}).anObject(); // returns true


## License

(The MIT License)

Copyright (c) 2014 Umut Sirin &lt;umutsirin1@gmail.com&gt;

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
(The MIT License)
