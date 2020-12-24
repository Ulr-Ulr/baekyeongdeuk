/**
 * AdminLTE Demo Menu
 * ------------------
 * You should not use this file in production.
 * This file is for demo purposes only.
 */

/* eslint-disable camelcase */

(function ($) {
  'use strict'

  var $sidebar = $('.control-sidebar')
  var $container = $('<div />', {
    class: 'p-3 control-sidebar-content text-center'
  })

  $sidebar.append($container)

  $container.append(
    '<h5>로그 아웃</h5><hr class="mb-2"/>'
  )

  $container.append(
    '<button type="button" class="btn btn-lg btn-primary">로그아웃</button>'
  )
  
})(jQuery)