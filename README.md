# README

init a mininal ruby on rails web with shoelace and tailwind
application up and running.

Things you may want to cover:

* Ruby version
  3.1.0
* Rails version
  7.0.3
* System dependencies
  postgresql

* Configuration
  1. add fronted libray with shoelace:
     a. yarn add @shoelace-style/shoelace
     b. yarn add copyfiles
     c. yarn add daisyui
  2. confing the package.json script 
     ```
     "scripts": {
      "build": "yarn shoelace:prepare && esbuild app/javascript/*.* --bundle --sourcemap --outdir=app/assets/builds",
      "shoelace:prepare": "mkdir -p public/shoelace-assets && yarn shoelace:copy-assets && yarn shoelace:copy-styles",
      "shoelace:copy-assets": "cp -r node_modules/@shoelace-style/shoelace/dist/assets public/shoelace-assets",
      "shoelace:copy-styles": "copyfiles --flat node_modules/@shoelace-style/shoelace/dist/themes/*.css app/assets/stylesheets/shoelace"
     }
     ```
    3. confing the tailwind.config.js
       ```
       module.exports = {
          content: [
            './app/views/**/*.html.erb',
            './app/helpers/**/*.rb',
            './app/assets/stylesheets/**/*.css',
            './app/javascript/**/*.js'
          ],
          plugins: [require('daisyui')],
          variants: {
            extend: {
              overflow: ['hover']
            }
          },
          theme: {
            listStyleType: {
              none: 'none',
              disc: 'disc',
              decimal: 'decimal',
              square: 'square'
            }
          },
          daisyui: {
            logs: false
          }
        }
       ```

* Database creation
  1. rails db:create
  2. rails db:migrate

* Database initialization
  1. brew services start postgresql

* How to run the test suite
  1. bin/dev

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
