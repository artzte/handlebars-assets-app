# Handlebars Assets Sample App

This app demonstrates usage of the [handlebars_assets](https://github.com/leshill/handlebars_assets) gem to generate Ember.js templates from HAML source files. 

Templates are generated on the fly in development mode, but are precompiled for production environments.

The app includes a snip from the [hamlbars gem](https://github.com/jamesotron/hamlbars), which I used with great success until various ecosystem changes required me to switch over to handlebars_assets. The hamlbars gem includes some useful HAML extensions necessary to generate action and bind statements within elements.

You can just run this app in development mode and the templates will be compiled on the fly for use in the sample Ember.js app provided. For a production environment, you would perform an asset compilation using the rake command `rake assets:precompile`.