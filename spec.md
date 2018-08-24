# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project  -using ruby gem
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)  -course has_many comments
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)  -comment belongs_to course
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)  -student has_many :comments, through: :courses 
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)  -course.name contains comments
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)  -Student, Course, Comment
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)  -course/total_lessons; total_lessons (course class method)
- [x] Include signup (how e.g. Devise)  -custom route
- [x] Include login (how e.g. Devise)  -custom route
- [x] Include logout (how e.g. Devise)  -custom route
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)  -OmniAuth/dotenv-rails/Facebook
- [x] Include nested resource show or index (URL e.g. users/2/recipes)  -student/:id/courses
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients)  -/courses/:course_id/comments
- [x] Include form display of validation errors (form URL e.g. /recipes/new)  -errors on course form

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
