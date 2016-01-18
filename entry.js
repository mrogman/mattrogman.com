var coffeeDir = './public/coffeescripts/'
var stylesDir = './public/stylesheets/'

//styles
require(stylesDir + 'style.scss');

//scripts
main = require(coffeeDir + 'main.coffee');
Background = require(coffeeDir + 'background.coffee');
