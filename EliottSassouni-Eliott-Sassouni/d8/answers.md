#Eliott Sassouni

1. When we use one resource, 8 routes are usually made for us. However, because we have two resources, I think that we'll have 16 routes.

2. There are 2 models, one for comments and the other for treasure.

3. There are 3 controllers (if we count the application_controller), but really there are only 2 main ones that we use, comments_controller and treasures.controller.

4. Most of the CRUD logic takes place inside treasures_controller.rb, but some CRUD logic happens in comments_controller.rb too.

5. new.html.erb is the view that allows us to create a new treasure.

6. views/comments/_form.html.erb is the view that allows us to comment on an existing treasure. However, the comment will be rendered in views/treasures/show.html.erb, which is the view that will show the comment on the website.

7. views/treasures/index.html.erb is the home page.

8. The home page (views/treasures/index.html.erb) lists all the trreasures.

9. Treasures have a "title" and a "description". Comments have a "bru" and a "comment".

10. db/schema.rb displays the attributes for each model.