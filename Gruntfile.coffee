module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    stylus:
      compile:
        files:
          'site/style.css': 'style.styl'

    watch:
      scripts:
        files: ['style.styl']
        tasks: ['stylus']

  grunt.loadNpmTasks "grunt-contrib-stylus"
  grunt.loadNpmTasks "grunt-contrib-watch"

  grunt.registerTask 'default', ['stylus']
