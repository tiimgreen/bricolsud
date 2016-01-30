// Search
function fr_form_submit(form) {
  var q = window.encodeURIComponent(form["q"].value);
  var url = "http://www.google.fr/search?q=site:bricolsud.fr ";
  url = url + q;
  window.location = url;
  return false;
}

function en_form_submit(form) {
  var q = window.encodeURIComponent(form["q"].value);
  var url = "http://www.google.co.uk/search?q=site:bricolsud.fr ";
  url = url + q;
  window.location = url;
  return false;
}
