

 $(document).ready(function(){
    $('.collapsible').collapsible();
  });

 $(document).on('turbolinks:load', function(){
  var questions = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizer.whitespace;
    queryTokenizer: Bloodhound.tokenizer.whitespace;
    remote: {
      url: '/questions/autocomplete?query=%QUERY',
      wildcard: '%QUERY'
    }
  });
  $('#search-bar').typeahead(null, {
    source: questions
  });
 })






