/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function myFunction() {
  if (document.getElementById("myDropdown")) {
    document.getElementById("myDropdown").classList.toggle("show");
  }
}

export { myFunction }


function filterFunction() {
  var input, filter, ul, li, a, i;
  input = document.getElementById("myInput");
  if (input) {
    filter = input.value.toUpperCase();
    div = document.getElementById("myDropdown");
    a = div.getElementsByTagName("a");
    for (i = 0; i < a.length; i++) {
      if (a[i].innerHTML.toUpperCase().indexOf(filter) > -1) {
        a[i].style.display = "";
      } else {
        a[i].style.display = "none";
      }
    }
  }
}

export { filterFunction }
