#= require "vendor/jquery"

# Foundation Javascript
#= require "foundation/foundation"
#= require "foundation/foundation.topbar"

#= require "vendor/jquery.backstretch.min.js"
#= require "vendor/custom.modernizr.js"

(($, window, undefined_) ->
  "use strict"
  $doc = $(document)
  Modernizr = window.Modernizr
  $(document).ready ->
    $(document).foundation()

  # Hide address bar on mobile devices (except if #hash present, so we don't mess up deep linking).
  if Modernizr.touch and not window.location.hash
    $(window).load ->
      setTimeout (->
        window.scrollTo 0, 1
      ), 0

) jQuery, this