$(document).ready(function() {
  $('.full-link').hide()
  $('.truncated-link').click(function(event) {
    $(this).hide().siblings('.full-link').show()
  })

  $('.full-link').click(function(event) {
    $(this).hide().siblings('.truncated-link').show()
  })

  $('.toggle-images').click(function(event) {
    $('table img').toggle()
  })
})

// Alternative

// function whatToDoWhenClicked(event) {
//   console.log('Hello World')
// }
//
// function whatToDoOnLoad() {
//   $('.truncated-link').click(whatToDoWhenClicked)
// }
//
// $(document).ready(whatToDoOnLoad)

// Ruby Version
// jquery(document).ready do
//   jquery(".truncated-link").click do |event|
//     console.log('Hello World')
//   end
// end
