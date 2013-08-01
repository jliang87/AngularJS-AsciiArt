Summary
========

When I saw the project description, my first reaction was to take up the challenge to learn AngularJS and build my first AngularJS app, since I want to learn something new and 'in', and it seems more fun. 

Currently, the app allows the user to type in HTML (ex. &lt;span class='az-spinner'&gt; CRAZY &lt;/span&gt;) in a textbox and displays the result in a table cell. 
The texts are persisted to the database by using AngularJS's $resource.

I've spent the majority of the time tweaking the UI. The major difficulty was the displaying of the texts in a table cell, where each row in the table can only have three texts. 
And then there's the problem of generating a table for the existing texts in the DB when the DOM loads: query() for $resource in the controller returns results only when the user interacts with the app, not when the app loads, which I think is because of this - http://stackoverflow.com/questions/12956380/angularjs-get-data-immediatelly-after-call-to-query). 
After googling and unable to find any more information regarding this problem, I came up with a hack by including back JQuery in app and use $.get through JSON to obtain the texts in the DB, only to learn that $.get is asynchronous and won't work, and $.ajax with 'async=false' works.





ASCSSIII
========

In the repo are some mockups for one of our internal hackathon projects (this is what we do for fun) -- we're trying to revive ASCII art with a new "spin"; the possibilities are endless with Unicode + HTML + CSS -- here's a [fiddle](http://jsfiddle.net/qke3p/22/) to give you an idea of the creativity that this new technology enables :) -- the goal is to allow everyone to submit their own art-work (ala dribbble) and show their spinning ASCII art off on the homepage :)

It is an open assignment. The goal is for you to show off your skills -- feel free to go light on backend and go crazy on front-end (if you enjoy that more) or vice versa -- or both :D For example, if you decided to focus on the backend, and build an awesome API which integrates with a DB, but the front-end is static and bare, that's perfectly fine. If you decide to build out an awesome SPA with Angular, but only using in-memory storage (which of course has the option to swap out modularly with a REST service to tie it up with a backend), then that's perfectly fine as well :)

You may use frameworks or technologies of your choice. We will look at code-quality, modularity, maintainability and we will ask you to rationalize every choice you made at your discretion. There is no wrong or right, there's only awesome :)

Feel free to take a week to work on it. The goal is not to finish every piece of functionality but to do as much as you can, while maintaining quality.

Also, consider this test project as if you're part of the team so please don't hesitate to ask for any clarification!

Design references (including PNG): https://www.dropbox.com/sh/381032v5egt6vwf/Vke6DSqnsB

Good luck!
