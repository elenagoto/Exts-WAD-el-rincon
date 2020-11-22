# El rincón de la Curuba

This is the Capstone Project for the Web Application Development Program. This project has been developed by [Laura Gomez](https://elenagoto.ch/), as a final step to complete the full program of the **My Digital Future Fellowship**.

The main goal of this project is to put into practice the knowledge I have acquired while completing the 6 courses included in the Fellowship:

- 50 Things You Need to Know About the Internet
- Thinking and Creating with Code
- Web Application Development Program
  1. HTML and CSS
  2. Interactive web pages
  3. Introduction to Ruby on Rails
  4. Dynamic web applications

The app has been deployed in Heroku to the following URL: [https://rincon-de-la-curuba.herokuapp.com](https://rincon-de-la-curuba.herokuapp.com).

## The "Rincon de la Curuba" app

"Rincon de la Curuba" was imagined as a blog where the colombian podcasters creators of the "El olor de la Curuba Podcast" would be able to share their written content, as well as the episodes of their podcasts.

The main changes I made in relationship with the proposal presented in June are the following:

### HTML & CSS

- The template proposed was modified to add a Featured post in the homepage of the app.
- The Palette changed as well, and different colors were used.

### JavaScript

- The search is limited to Title and tags of the posts.
- The filter buttons are now by existing tags.
- Among the proposed languages, beside Spanish and English, there is also French.

### Data structures and Models

- The posts don't have a category between Podcast episode and Blog entry, but it could be added.
- The relationship many-to-many for the favorites has its own model: Bookmarks, instead of the joined table proposed.

### Third party Services

- The uploads are managed with ActiveStorage instead of the Carrierwave gem, so, this one is not included.
- The google sign-up and sign-in is managed with three different gems: `dotenv-rails`, `omniauth` and `omniauth-google-oauth2`, instead of the proposed one (`google_sign_in`).
- For Markdown I made use of the `redcarpet` gem, but I left out the `rouge` gem.
- I added the gem `social-share-button` for the Facebook and Twitter buttons in the Post#show view.
- The chosen podcasting hosting is Spotify, but I didnot work with their API, since it wasn't required for the project.

## Problems during development

### Search

To create the search I first whent with the ActiveRecord queries we learned during the course. However, since I wanted to include the title of the post as well as the tags of each post, I had to find a different way to approach it. So, the two queries I created were:

```Ruby
scope :title_contains, ->(term) { where('title LIKE ?', "%#{term}%") }
scope :tags_contain, ->(term) { joins(:tags).where('tags.name LIKE ?', "%#{term}%") }

```

However, when I tried to join them I got the following error:

```console
ArgumentError (Relation passed to #or must be structurally compatible. Incompatible values: [:joins])
```

After some Google queries, I found a solution that seemed to work:

```Ruby
scope :search, ->(search_term) { title_contains(search_term) | tags_contain(search_term) }
```

However, this solution returns an array containing the search results, not an `ActiveRecord::Relation`. This means that I can't use any ActiveRecord queries with them, like `.order(created_at: :desc)`. So, I tried another solution that seemd to wor in this case, and returned an `ActiveRecord::Relation`:

```Ruby
scope :title_contains, ->(term) { joins(:tags).where('title LIKE ?', "%#{term}%") }
scope :tags_contain, ->(term) { joins(:tags).where('tags.name LIKE ?', "%#{term}%")}
scope :search, ->(search_term) { title_contains(search_term).or(tags_contain(search_term)).group('posts.id')}
```

However this solution lefted out any post that had no tags. I don't actually expect that the post won't, but I felt that this should be taked into account, specially because the use of tags when creating a post is not requiered.

So, I came back to my first solution and I had to find a different solution to organize the results by date:

```Ruby
results = Post.search(@search_term)
@posts = results.sort_by(&:created_at).reverse
```

This had also another consequence in the problem explained below.

### Including JS in all the views

As a part of the interactivity of the app, I created several scripts that allowed for a better experience for the user, such a hambuger menu that appears in mobile mode, textarea inputs that grow with accordingly to the content, and a reset button in the search form that will keep the form active allowing the user to write right away after erasing the previous content, among others. However, I was strugling to make the scripts work all the time.

I first tried with a `window.onload` event listener that would get the nodes and call the functions only after the page was loaded, however this only worked after reloading the page, and not when visiting a page through a link.

I was able to find the solution after a search and I learned that, in the case of rails, the event listener should look for the `"turbolinks:load",` event, to make sure the scripts are reloaded everytime a page is visited.

### Asynchronous bookmark button

One of the featured of the app allow the users to create a Reading list using a bookmark button included in each post card. However, I wanted to make this button work with JS so the page wasn't reloaded everytime. However, I couldn't find a way for JS to recreate the `form_tag` requiered to add the post to the user's reading list.

However, following the advice of Danger and Andrew, I decided to keep add both the `form_tag` to add and the link to remove the bookmark in the card, and to use JS and the remote request to add or remove an `invisible` class. So, the user can use this to add and remove the bookmark without reloading the page. This also allowed me to slightly change the card that is shown in the _Account#bookmarked_ view, so it removes the card from the page when the remove button is clicked.

### Filter and pagination

As explained in the course, I used `kaminari` for the pagination of the posts and users cards in several views.

Also, I decided to create a JS filter for the results, so that the users can filter the posts or the search results using the existing tags. This filter only works on the front-end (so I could put into practice what we learned in the second course), so, it depends on the existing cards in the page.

However (and as I expected), the filter only works in the current page and the other records (in the other pages) are not included. Also, the `.page(params[:page])` method won't work with the array of the search results (it requires an `ActiveRecord::Relation` since it is related to the Model). So, I decided not to use the pagination in the `Posts#index` view, but to make use of it in other views.

## Improvements

This exercise has the main goal to show what we have learned during the program courses so I tried to include the several concepts for front-end and back-end. However, it can be improved and other features could be added to it. Some I have thought about are:

- related posts shown at the bottom of the Post page. This could make use of an random way of presenting a selection of posts that share 1 or more tags with the current post.
- Front-end (JS) pagination or _load more_ posts for the search results. However, this would require for JS to create the whole card, and as explained above with the Favorite button, I couldn't find a way for JS to recreate the bookmarks form without loosing the authenticity tokens created by rails.
- A sorting by date and or author. This would require the same thing as above.
