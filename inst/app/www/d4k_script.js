$( document ).ready(function() {

});

// Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
    'use strict';
    let isValid = true;
  
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    const forms = document.querySelectorAll('.needs-validation');
  
    // Loop over them and prevent submission
    Array.prototype.slice.call(forms).forEach((form) => {
      form.addEventListener('submit', (event) => {
        if (!form.checkValidity()) {
          event.preventDefault();
          event.stopPropagation(); 
          isValid = false;
        }
        form.classList.add('was-validated');   
        if(isValid){
          var contactFormData = {
            firstName: document.getElementById("firstNameID").value,
            lastName: document.getElementById("lastNameID").value,
            emailAdress: document.getElementById("emailID").value,
            messageText: document.getElementById("messageID").value,
            submit: 1,
          };
          //alert(contactFormData.emailAdress);
          Shiny.setInputValue("contactFormData", contactFormData); // Send data to Shiny input
          location.reload();
          alert("Your message is sucessfuly sent ! You will have a feed-back within 48h!")
        }
      }, false);
    });
  })();

// reset  the form
document.getElementById("contactForm").onreset = function (event) {
  event.preventDefault(); // Prevent normal form submission
  location.reload();
}

// Text area count characters
document.getElementById("messageID").addEventListener("input", function() {
  document.getElementById("charCount").textContent = document.getElementById("messageID").value.length;
});

