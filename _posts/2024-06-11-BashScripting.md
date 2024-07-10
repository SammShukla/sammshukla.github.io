- #!bin/bash

- shebang charactor(#!). this tells the path of the interpreter.

- this tells that open the interpreter and run all the commands which written in this script.this is not mendatory but it is a good prectice to mention shebang char in the script.


# CONCEPT OF VARIABLE:
- HOW TO USE?
- USE THIS LOGIC: things that varies based on diffrent environments, projects or use cases. there we use variables.

# SOME SYSTEN VARIABLES:
- $0 - the name of the bash script
- $1-$9 - The first 9 arguments to the bash script.
- $# - How many arguments were passed to the bash script
- $@ - All the arguments passed to the bash script.
- $? - The exit status of the most recent run process.

# NOTE :-  '?' = the exit code { if for some reason the command that we ran got failed then the output of the $? will be non-zero. but is that ran successfully then the output will be zero.}



# QUOTES IN BASH SCRIPT:-
- There are mainly 2 types of quotes in bash scripting.
- Double Quotes & Single quotes:

- 1. Single Quotes:

- When you enclose a string in single quotes, the shell treats every character literally, without any special meaning. This means:
Variables and special characters (like $, \, and !) within single quotes are not expanded or interpreted; they are treated as ordinary characters.
Single quotes preserve the exact literal value of each character within the quotes.
Example:

---

- #!/bin/bash

variable="world"

echo 'Hello $variable'    # Output: Hello $variable
echo 'Hello'              # Output: Hello
echo 'Hello\'             # Output: Hello\
- 2. Double Quotes:

- Double quotes allow for more flexibility in how strings are interpreted:
- Variables inside double quotes are expanded to their values. For example, "$variable" will be replaced with the contents of variable.
- Certain special characters still retain their special meanings inside double quotes. For instance, "$" is used to refer to variables.
- Double quotes do not preserve the exact literal value of characters, but rather allow for variable expansion and some interpretation of special characters.
- Example:

- #!/bin/bash

- variable="world"

- echo "Hello $variable"    # Output: Hello world
- echo "Hello"              # Output: Hello
- echo "Hello\""            # Output: Hello"

- Key Differences:

- Variable Expansion: Double quotes allow variables (e.g., $variable) to be expanded, whereas single quotes treat variables as literal strings ($variable is not expanded).
- Special Characters: Double quotes interpret some special characters ($, !, \, etc.) for their special meanings, while single quotes treat them as literal characters.
- Literal Value: Single quotes preserve the exact literal value of each character enclosed within them.

- In summary, choose between single quotes and double quotes based on whether you need variable expansion and interpretation of special characters ("), or if you want to preserve the literal value of characters ('').

- note:-
- VIRUS="covid19"
- echo "Due to $VIRUS virus company have lost $9 million."
- OUTPUT - Due to covid19 virus company have lost  million. > in that it consiserd $9 as a 9th cmd-line argument(which is absent in this case) and print that in that place.
- echo 'Due to SVIRUS virus company have lost $9 million.'
- output - Due to $VIRUS virus company have lost $9 million. > in this case, single quote removed the sspecial charactor meaning.
- echo "Dun to $VIRUS virus company have lost \$9 million."
- output - Due to covidi9 virus company have lost $9 million. > in this case, backward slash(\) removed the special charactor meaning of $9 and print that as it is.(otherwise it would have printed 9th cmd-line argument.).

# COMMAND SUBSTITUTION :

- Variable defined in the script leave with it and dies after the script dies or completes. If we want to define a variable that is accessible to all the scripts from your current shell we need to export it.
- It basically takes the output of a command and stores it into a variable. We can achieve this by using 'backticks' or '$()'.

- example : if we take command 'uptime' and stores in a variable CMD with backticks or $(), for example - CMD=`uptime` or CMD=$(uptime) 
- And if we run command echo $CMD then it well print the output of command 'uptime'. 
