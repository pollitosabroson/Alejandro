#= require jquery
#= require redactor-rails
#= require prism.js

$(document).ready ->
  $("#blog_content, #blog_extracto, #product_descripcion").redactor()
    imageUpload: "/redactor_rails/pictures?" + params
    imageGetJson: "/redactor_rails/pictures"
    fileUpload: "/redactor_rails/documents?" + params
    fileGetJson: "/redactor_rails/documents"
    path: "/assets/redactor-rails"
    css: "style.css"
