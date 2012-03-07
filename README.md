Ruby Fiddle Exec
---------------

This is the thing that actually executes the codes.

PLEASE do not run this thing on a public server, unless it is read only.

### Api

POST to "/"  
Param name: Code

### Exceptions:

```code=1/0```

```
{"output":"","exception":"divided by 0","result":"divided by 0"}
```

### Return Values
```code=1/5.to_f```

```
{"output":"","exception":null,"result":0.2}
```

### STDOUT (puts)
```code= puts 1/5.to_f```

```
{"output":"0.2\n","exception":null,"result":null}
```

# TODOs

1. Ability to specify which gems to include
2. Add capybara to test json outputting
3. Possibly secure to only ruby-fiddle

# License
MIT License
