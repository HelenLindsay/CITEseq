# Patient information is from Supplementary Table 1

tibble::tribble(~Group, ~Genetic_mutations, ~Age, ~Gender, ~BMI,
                ~Severity_score, ~Disease_duration_years,
                "Control", NA, 55, "M", 22.9, NA, NA,
                "Control", NA, 35, "F", 33.3, NA, NA,
                "Control", NA, 43, "F", 22, NA, NA,
                "Herediary", "PRSS1", 21, "M", 23.1, 9, 17,
                "Herediary", "PRSS1", 9, "F", 20.3, 8, 7,
                "Herediary", "PRSS1, CFTR, SPINK1", 15, "M", 21.3, 10, 2,
                "Herediary", "PRSS1", 13, "M", 18.2, 9, 10,
                "Herediary", "PRSS1, CFTR", 16, "F", 22, 9, 7,
                "Idiopathic", NA, 47, "F", 19.1, 1, 4,
                "Idiopathic", NA, 42, "F", 27.3, 9, 3,
                "Idiopathic", NA, 31, "F", 28.8, 6, 3,
                "Idiopathic", NA, 42, "F", 28.7, 5, 17)
