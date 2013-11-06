# Load the assets from /public/webshims, which is symlinked to a folder in
# /vendor. It would be nice if we could just use the webshims-rails gem,
# but it did not play nicely with Rails 4 last time we checked.
# https://github.com/whatcould/webshims-rails#note-on-changes-in-rails-4
$.webshims.setOptions("basePath", "/webshims/shims/")

# You can enable the polyfills you want by replacing the "[]" below.
# See "List of features" under "Embedding and configuring the script"
# at http://afarkas.github.io/webshim/demos/.
$.webshims.polyfill([])

# Turbolinks support
$(document).on "page:load", ->
  $(this).updatePolyfill()
