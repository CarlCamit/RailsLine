 # README

---

# Design Process

## Problem

- People need a way to let out their problems in a space that can be viewed by other people so it can be lifted off their shoulders. At the same time they need it to be anonymous so that they have no fear of it coming back to them.

## User Stories

- [Trello Link to User Stories](https://trello.com/b/j7Uiv1YR/railsline)

## ERD

### User (made by Devise)

- email:string
- password:string

### Post

- belongs_to user
- has_many categorization
- has_many categories through categorization
- subject:text
- body:text

### Reply

- body:text

### Categories

- has_many categorization
- has_many posts through categorization

### Categorizations
- belongs_to category
- belongs_to post

### Prototype Wireframe

- [Figma Prototype Wireframes](https://www.figma.com/file/a5vKTqigs302i0vo7B1rJuxq/Untitled)
- Mobile first, designed wireframes for prototyping in figma
- We focused on colour schemes and general looks of buttons for consistency purposes

---

# Setup

- Generate a new rails file with ``rails new FILE -T --database=postgresql``

## Gems

- DOTENV for environment variables
- Devise to generate a User model
- Shrine for image uploading. Fastimage, ImageProcessing, and MiniMagick for processing 
- AWS integration for image storage
- RSpec for testing
- Boostrap for styling

- Follow the documentation for everything except Shrine
- Follow this guide for Shrine [Rails Shrine Guide](https://www.sitepoint.com/rails-file-uploading-you-can-believe-in-with-shrine/) and also add ``include ImageUploader::Attachment.new(:image)`` in your model that uses the image data.

## Environment Variables

- You need S3_ACCESS_KEY, S3_SECRET_KEY, S3_REGION, S3_BUCKET in your .env file to use Shrine in Heroku.

## Models

- Scaffold all the models in the ERD

## Source code management tool usage

- All team members created their own branches on github at different times with the process working well and merges happening as required.

## Presentation
- [Application presentation] (https://docs.google.com/presentation/d/1OcfHxmdnk-vfTEQ4x7C0ypoRoDsKE-eryUTN7bM-e-A/edit?usp=sharing)