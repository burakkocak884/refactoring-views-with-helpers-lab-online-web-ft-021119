# Refactoring Views With Helpers Lab

## Objectives

1. Review creating associated objects
2. Write a helper to conditionally display different links
3. Use the helper in multiple views

## Song Library

In this lab, we're going to augment our song library. While, ideally, every song is associated with an artist, this won't always be the case in our application. We'll use helpers to display different links based on whether or not a song is associated with an artist.

When a user adds a song to the library, they might be in a hurry and not know the artist off the top of their head, leaving it blank.

When we display the song library to the user, we want to account for when no artist has been associated with any given song. Additionally, we want to prompt the user to add an artist (mostly because we don't want to contribute to the global iTunes library "Unknown Artist" epidemic).

## Instructions

The base models, controllers, views and other files have been provided. There are tests for the lab in the `spec` directory. You can run tests with the `rspec` command.

1. Write the code for `#artist_name` and `#artist_name=` so that an `Artist` can be retrieved from, and associated with, a `Song` instance
2. Write a helper method `#display_artist` in the appropriate `app/helpers` file to be called on in our views. The method's return value should take into consideration whether an artist is already associated with a song:
  - If an artist is already associated with the song, return a link to the artist's `show` page
  - If an artist is not associated with the song (a.k.a. 'else'), return a link to the song's `edit` page, with a link text of "Add Artist"
3. Use the helper to display the artist on the `songs#show` and `songs#index` pages
4. Make sure all tests pass. Then, do this:

![Dancing Daft Punk](http://i.giphy.com/ZCKh7knqLpc4M.gif)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/refactoring-views-with-helpers-lab' title='Refactoring Views With Helpers Lab'>Refactoring Views With Helpers Lab</a> on Learn.co and start learning to code for free.</p>
# refactoring-views-with-helpers-lab-online-web-ft-021119
