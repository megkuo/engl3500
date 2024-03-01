alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
varname = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh"]

for place in varname:
    if place == "first":
        for each in alphabet:
            print ("* " + each)
            print ("    ~ " + place + " = \"" + each + "\"")
    else:
        for each in alphabet:
            print ("* " + each.lower())
            print ("    ~ " + place + " = \"" + each.lower() + "\"")