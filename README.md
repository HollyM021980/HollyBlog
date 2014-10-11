== README

This is a relatively simple blog app to work through Rails associations.
Also used to work on css & html appearance.

# DataModel

## Post
* has one-to-many relationship with a comment (has_many)
* has one-to-one relationship with an Author (has_one)
* has one-to-one relatinship with a Category (has_one)

## Comment
* has many-to-one relationship with a Post (belongs_to)
* has many-to-one relationship with an Author (has_one)

## Author
* has one-to-many relationship with Posts (belongs_to)
* has one-to-many relationship with Comments (belongs_to)

## Category
* has one-to-many relationship with Posts (belongs_to)

