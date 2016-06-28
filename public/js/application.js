$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});


//Javascript + Jquery +Ajax example from todo list


// $(document).ready(function() {
//   $('body').on('submit', "#deleteButton" ,function(event){
//     event.preventDefault();
//      var killTask = $(this).attr('action'); // '/tasks/11'
//      var killDiv = $(this).parent();

//     $.ajax({
//     method: "DELETE",
//     url: killTask
//     }).done(function(){
//     killDiv.remove();
// })
// })
//   $('#new-task').on('click', function(event){
//     event.preventDefault();

//       $.ajax({
//         type: "get",
//         url: "/tasks/new"
//       }).done(function(response){
//         $("#new-task").hide();
//         $(".container").append(response);
//       });
//   });

//   $('.container').on('submit','#new-task-form', function(event){
//     event.preventDefault();
//     var data =  $( this ).serialize();
//      $.ajax({
//         type: "post",
//         url: "/tasks",
//         data: data
//       }).done(function(response){
//         console.log(response);

//         $(".container ul").append(response);
//         $("#new-task-form").hide();
//         $("#new-task").show();
//         $('#new-task-form').remove();
//       });
//   })

// });

// Status API Training Shop Blog About
