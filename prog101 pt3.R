# Calling a function - name followed by parenthesis, with arguments indside the parenthesis
sqrt(9)
abs(-3)

# Autocompleting functions in the editor is a useful IDE feature

# str() = structure
str(3)
str("Santa Barbara")

# Another nice feature: syntax highlighting (R interperets "Santa Barbara" as a
# string of text, called a character, as opposed to if it wasn't in quotes, R
# would think they were variable names)

#functions can take multiple arguments
pi
round(pi, 0)
round(pi, 5)

n_digits <- 2
round(pi, n_digits)

#functions are a great example of encapsulation. Replacing potentially complex
#logic with a very simple name. That makes our code far more readable and
#expressive.

?sqrt
?round

