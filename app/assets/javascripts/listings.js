// Index Page

function myMap() {
    var mapOptions = {
        center: new google.maps.LatLng(51.5, -0.12),
        zoom: 10,
        mapTypeId: 'roadmap'
    }
var map = new google.maps.Map(document.getElementById("map"), mapOptions);
}

$(document).on("turbolinks:load", function(){
    var calendarButton = document.getElementById('booking-button')
    calendarButton.addEventListener("click", function(evt){
      var startdate = new Date($('#start_date').val().replace(/\-/g,'/')),
          enddate = new Date($('#end_date').val().replace(/\-/g,'/')),
          today = new Date();
        
      if (startdate === "" || enddate === "") {
        addBookingErrorNotice(evt, "Please pick dates to continue")
      } else if (startdate < today ) {
        addBookingErrorNotice(evt, "Check-in cannot be in the past")
      } else if (enddate < startdate) {
        addBookingErrorNotice(evt, "Please pick a valid date range")
      }
    })
    
    $('.bottom-left').click(function(e){
      var result = confirm("Are you sure you want to delete this image?")
      if (result) {
        $.ajax({
          url: `/listings/${params.id}/delete_photo`,
          method: "POST",
          data: $(this).index,
          success: function(){
            $(this).parent().remove()
          }
        })
      }
    })

})

function addBookingErrorNotice(evt, message) {
  $('#booking-dates-error-notice').html(message)
  evt.preventDefault();
}