// $(document).ready(function() {
//   $('#new_user_guess').submit(function(event) {
//     event.preventDefault();

//     var formData = $(this).serialize();

//     $.ajax({
//       type: 'POST',
//       url: '/user_guess',
//       data: formData
//     }).done(function(response) {
//       if (response.result === 'correct') {
//         $('#result').text('Correct!');
//       } else {
//         $('#result').text('Incorrect, try again.');
//       }
//     });
//   });
// });
