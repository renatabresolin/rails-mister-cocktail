url = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read

ingredients = JSON.parse(url)

ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end
