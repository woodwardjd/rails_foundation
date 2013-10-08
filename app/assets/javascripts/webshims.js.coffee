# Load the assets from the /public folder. This is kind of a drag, because
# we're not using the vendored versions in the webshims-rails gem, but it's
# necessary because Rails 4 doesn't generate non-fingerprint-named assets
# when precompiling and Webshims doesn't know how to find the fingerprint-named
# versions.
# In other words, using the vendored versions would result in 404s for all of
# the shim files in production because Webshims would be trying to load URLs
# like /assets/webshims/shims/whatever.js but the actual URL would be like
# /assets/webshims/shims/whatever-8dc88426a7dd2224ec441901b49a7139.js
# If that's as clear as mud, you can read the gem author's explanation at
# https://github.com/whatcould/webshims-rails#note-on-changes-in-rails-4
$.webshims.setOptions("basePath", "/webshims/shims/")

# You can enable the polyfills you want by replacing the "[]" below.
# See "List of features" under "Embedding and configuring the script"
# at http://afarkas.github.io/webshim/demos/.
$.webshims.polyfill([])

# Turbolinks support
$(document).on "page:load", ->
  $(this).updatePolyfill()