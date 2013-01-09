Ruby Fiddle Exec
---------------

This is the thing that actually executes the codes.

### Api

POST to "/"  
Param name: Code

### Exceptions:

```
code=1/0

#result
{"output":"","exception":"divided by 0","result":"divided by 0"}
```

### Return Values
```
code=1/5.to_f

#result
{"output":"","exception":null,"result":0.2}
```

### STDOUT (puts)
```
code=puts 1/5.to_f

#result
{"output":"0.2\n","exception":null,"result":null}
```

Created by
---------

Jesse Wolgamott, @jwo for the upcoming RubyOffRails project.

Updates
------

Send em! I like Pulls!

MIT License
-------
Copyright (C) 2012-2013, Jesse Wolgamott

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

