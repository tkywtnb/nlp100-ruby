text = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'

p text.split(/\W+/).map(&:size)
