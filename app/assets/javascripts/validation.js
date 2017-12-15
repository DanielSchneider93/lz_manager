window.onload = function(){

text_field_id.oninput = function()
{
  var x = document.getElementById('text_field_id').value;

  var regex = /(www\.)[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,4}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)/;
  if(!regex .test(x)) {
    document.getElementById("feedback").innerHTML = "URL not valid";
    document.getElementById("feedback").style.color = "red";
    document.getElementById("text_field_id").style.border="2px solid red";
    return false;
  } else {
      document.getElementById("text_field_id").style.border="2px solid green";
      document.getElementById("feedback").innerHTML = "URL valid ";
      document.getElementById("feedback").style.color = "green";
    return true;

  }
}
}
