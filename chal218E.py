def palindromic_step(input, steps_taken=0):
    while str(input) != str(input)[::-1]:
        if steps_taken == 0:
            origin = input
        (input, steps_taken) = (input + int(str(input)[::-1]), steps_taken + 1)
    print(str(origin)
          + ' gets palindromic after ' + str(steps_taken)
          + ' steps: ' + str(input))


palindromic_step(123)
palindromic_step(286)
palindromic_step(196196871)
