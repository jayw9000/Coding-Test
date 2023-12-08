# Coding-Test

# Soft Delete Functionality in Ruby on Rails

## Overview

This Ruby on Rails application implements a basic soft delete functionality for a model named "Item." Soft deletes involve marking records as "deleted" without physically removing them from the database. The primary use case is to implement features such as a trash or recycle bin.
   
## Setup

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-username/your-repo.git
   cd your-repo
3. Install Ruby on Rails and your IDE of preference
2. Install Dependencies: **bundle install**
3. Create the Database: **rails db:create**
4. Run migrations: **rails db:migrate**

Soft Delete Functionality
<br>Model: Item
1. Attributes:

    name (string)
    deleted_at (datetime)
   
2. Methods:

    soft_delete: Sets the deleted_at attribute to the current timestamp.
    restore: Sets the deleted_at attribute to nil.
3. Default Scope:
   
     The Item model includes a default scope to exclude "deleted" items from normal queries.

Running Tests:
<br>The implemented soft delete functionality is thoroughly tested using RSpec. The tests cover various scenarios, including:

  <br>Soft deleting an item.
  <br>Restoring a soft-deleted item.
  <br>Ensuring that soft-deleted items are excluded from normal queries.
To run the tests, use the following command:
<br>**bundle exec rspec**
  <br>***** If a pending migration error occurs when you run the test command, run **"rake db:migrate RAILS_ENV=test"** and THEN **"bundle exec rspec"** will run the tests without errors. 

Usage:

1. Soft Delete an Item:
      <br>item = Item.find(1)
      <br>item.soft_delete
2. Restore a Soft-Deleted Item:
     <br> item = Item.find(1)
      <br>item.restore
3. Query Items (Excluding Soft-Deleted):
       <br>items = Item.all


The main codes are in files: item_spec.rb, item.rb, items_controller.rb.



  
