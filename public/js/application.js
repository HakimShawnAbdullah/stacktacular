$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  showRegForm()
  showQuestionForm()
  showAnswerForm()
});

function showRegForm() {
  $("#register").on('click', function(event){
    event.preventDefault();

    $.ajax({
      method: "GET",
      url: '/users/new'
    })
      .done(function(form){
        $("#regform").append(form);
        $("#regform").css("display", "block")
        $("#registrationlink").css("display","none")
      });
  });
};

function showQuestionForm() {
  $(".questionForm").on('click', function(event){
    event.preventDefault();

    $.ajax({
      method: "GET",
      url: '/questions/new'
    })
      .done(function(form){
        $(".questionFormDiv").append(form);
        $(".questionFormDiv").css("display", "block")
        $(".questionForm").css("display","none")
      });
  });
};

function showAnswerForm() {
  $("#answerFormLink").on('click', function(event){
    event.preventDefault();

    $.ajax({
      method: "GET",
      url: '/answers/new'
    })
      .done(function(form){
        $("#answerFormDiv").append(form);
        $("#answerFormDiv").css("display", "block")
        $("#answerFormLink").css("display","none")
      });
  });
};
