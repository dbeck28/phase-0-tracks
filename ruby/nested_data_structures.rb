pets = {
  "dogs" => [
    "cocker spaniel",
    "greyhound",
    "pitbull",
    "yorkie"
  ],
  "cats" => [
    "bengal",
    "siamese",
    "burmese",
    "shorthair"
  ],
  "reptiles" => [
    "lizards",
    "pythons",
    "horned frogs"
  ]
}

p "Access lizards"
p pets["reptiles"][0]

p "Access burmese cats"
p pets["cats"][2]

p "Access the value at index 4 in the string pitbull from pets hash (should be the string, 'u'"
p pets["dogs"][2][4]

p "Access the value at index 5 in the string pythons from pets hash (should be the string, 'n'"
p pets["reptiles"][1][5]