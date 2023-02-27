To complete part 1, run `npm run test-1` and follow through this readme until you pass all of the tests. All you should need to do is change your `main.db` file through your sqlite CLI, and then rerun the tests as you go.

We will need to do a few things to set up our database. We will need three tables:

1. Users Table

   - id: auto incrementing primary id
   - first_name string
   - last_name string
   - motto string nullable

2. Dogs Table

   - id: auto incrementing primary id
   - name string

3. Favorites Table
   - should tie together users and dogs with foreign id's
   - needs `user_id` & `dog_id` keys
   - must be foreign keys

We will also need to create some entries in these tables:

1. Users

   - 1 Create a user named Jon Higgz, who's life motto is "I love coding".
   - 2 Create a user named Andrey Rusterton, who's life motto is "I love coding even more".
   - 3 Create a user named Peter Garboni, who's life motto is "I love coding even more".

2. Dogs

   - 1 Create a dog named DOOMSLAYER
   - 2 Create a dog named Zoey
   - 3 Create a dog named Jefferey

3. Favorites
   - Peter Favorites Doomslayer 3 1
   - Jon Favorites Doomslayer 1 1
   - Andrey Favorites Doomslayer 2 1
   - Jon Favorites Jefferey 1 3
   - Andrey favorites Zoey 2 2

Go ahead and run `npx jest part1 --watch`. You will need to create a `main.db` and change it via your `sqlite` command on your terminal. As you begin to setup your database you should notice that the tests will respond to the changes if you rerun it.

Once main.db is set up correctly and all of your part 1 tests are passing you may move on to part 2.
