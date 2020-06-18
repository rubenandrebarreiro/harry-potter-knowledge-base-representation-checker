-- HARRY POTTER'S KNOWLEDGE BASE REPRESENTATION

-- Description:
-- - A project based in Knowledge Base Representation and Logic Programming. This project was built using both Prolog, with the support of SWISH and SWI-Prolog, and Lua. The project it's a simple application to allow to make checks, verification and queries, about some information and data, of the well-known Series of Fantasy Novels and Movies' Sagas of Harry Potter, through a knowledge base representation, built with facts, predicates, rules and structs, among many others!

-- Author:
-- - Ruben Andre Barreiro
-- - Computer Science/Engineering

print("\n\n\n--- WELCOME TO THE HARRY POTTER'S KNOWLEDGE BASE REPRESENTATION ---\n\n")


-- Definition of the Characters

-- Harry Potter
harry_potter = {
    name = "Harry Potter",
    gender = "Male",
    wizard = true,
    house_team = "Gryffindor",
    roles = { "Heroe", "Student" }
}

-- Ron Weasley
ron_weasley = {
    name = "Ron Weasley",
    gender = "Male",
    wizard = true,
    house_team = "Gryffindor",
    roles = { "Heroe", "Student" }
}

-- Hermione Granger
hermione_granger = {
    name = "Hermione Granger",
    gender = "Female",
    wizard = true,
    house_team = "Gryffindor",
    roles = { "Heroe", "Student" }
}

-- Ginny Weasley
ginny_weasley = {
    name = "Ginny Weasley",
    gender = "Female",
    wizard = true,
    house_team = "Gryffindor",
    roles = { "Heroe", "Student" }
}

-- Draco Malfoy
draco_malfoy = {
    name = "Draco Malfoy",
    gender = "Male",
    wizard = true,
    house_team = "Slytherin",
    roles = { "Heroe", "Villain", "Student" }
}

-- Albus Dumbledore
albus_dumbledore = {
    name = "Albus Dumbledore",
    gender = "Male",
    wizard = true,
    house_team = "Gryffindor",
    roles = { "Heroe", "Professor" }
}

-- Severus Snape
severus_snape = {
    name = "Severus Snape",
    gender = "Male",
    wizard = true,
    house_team = "Slytherin",
    roles = { "Heroe", "Villain", "Professor" }
}

-- Lord Voldemort
lord_voldemort = {
    name = "Lord Voldemort",
    gender = "Male",
    wizard = true,
    house_team = "Slytherin",
    roles = { "Villain" }
}


-- Simblings
ron_weasley.sister = ginny_weasley
ginny_weasley.brother = ron_weasley


-- Couples
harry_potter.spouse = ginny_weasley
ginny_weasley.spouse = harry_potter

ron_weasley.spouse = hermione_granger
hermione_granger.spouse = ron_weasley


-- Usage of the Characters
local characters = {harry_potter,
                    ron_weasley,
                    hermione_granger,
                    ginny_weasley,
                    draco_malfoy,
                    albus_dumbledore,
                    severus_snape,
                    lord_voldemort
}


-- Debug of the Program

-- Prints all the Characters' Names
print("All Characters:")
for element in pairs(characters) do
    print(string.format ("%i: %s", element, characters[element].name))
end


print("\n")


-- Prints all the Characters' Names, who are considered Heroes
local heroe_num = 0

print("All Heroes' Characters:")
for element in pairs(characters) do
    for role in pairs(characters[element].roles) do
        if(characters[element].roles[role] == "Heroe") then
            heroe_num = heroe_num + 1
            print(string.format ("%i: %s", heroe_num, characters[element].name))
        end
    end
end


print("\n")


-- Prints all the Characters' Names, who are considered Villains
local villain_num = 0

print("All Villains' Characters:")
for element in pairs(characters) do
    for role in pairs(characters[element].roles) do
        if(characters[element].roles[role] == "Villain") then
            villain_num = villain_num + 1
            print(string.format ("%i: %s", villain_num, characters[element].name))
        end
    end
end


print("\n")


-- Prints all the Characters' Names, who are considered Professors
local professor_num = 0

print("All Professors' Characters:")
for element in pairs(characters) do
    for role in pairs(characters[element].roles) do
        if(characters[element].roles[role] == "Professor") then
            professor_num = professor_num + 1
            print(string.format ("%i: %s", professor_num, characters[element].name))
        end
    end
end


print("\n")


-- Prints all the Characters' Names, who are considered Students
local student_num = 0

print("All Students' Characters:")
for element in pairs(characters) do
    for role in pairs(characters[element].roles) do
        if(characters[element].roles[role] == "Student") then
            student_num = student_num + 1
            print(string.format ("%i: %s", student_num, characters[element].name))
        end
    end
end


print("\n")


-- Prints all the Characters' Names, who are Male people
local male_num = 0

print("All Male Characters:")
for element in pairs(characters) do
    if(characters[element].gender == "Male") then
        male_num = male_num + 1
        print(string.format ("%i: %s", male_num, characters[element].name))
    end
end


print("\n")


-- Prints all the Characters' Names, who are Female people
local female_num = 0

print("All Female Characters:")
for element in pairs(characters) do
    if(characters[element].gender == "Female") then
        female_num = female_num + 1
        print(string.format ("%i: %s", female_num, characters[element].name))
    end
end


print("\n")


-- Prints all the Characters' Names, who forms Simbling relationships (Brothers/Sisters)
local simblings_num = 0

print("All Simblings:")
for element_1 in pairs(characters) do
    for element_2 in pairs(characters) do
        if element_1 ~= element_2 and characters[element_1].brother ~= nil and characters[element_2].sister ~= nil then
            if characters[element_1].brother.name == characters[element_2].name and characters[element_2].sister.name == characters[element_1].name then
                simblings_num = simblings_num + 1
                print(string.format ("%i: { %s , %s }", simblings_num, characters[element_1].name, characters[element_2].name))
            end
        end
    end
end


print("\n")


-- Prints all the Characters' Names, who forms Couples relationships (Spouse)
local couple_num = 0

print("All Couples:")
for element_1 in pairs(characters) do
    for element_2 in pairs(characters) do
        if element_1 ~= element_2 and characters[element_1].spouse ~= nil and characters[element_2].spouse ~= nil then
            if characters[element_1].spouse.name == characters[element_2].name and characters[element_2].spouse.name == characters[element_1].name and
               characters[element_1].gender == "Male" and characters[element_2].gender == "Female" then
                couple_num = couple_num + 1
                print(string.format ("%i: { %s , %s }", couple_num, characters[element_1].name, characters[element_2].name))
            end
        end
    end
end
