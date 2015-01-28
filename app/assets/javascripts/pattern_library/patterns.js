// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {
  $('#pl-patterns .pl-pattern').each(function() {
    var $this = $(this);
    $this.find('.pl-snippet-styled > *').each(function() {
      $this.find('.pl-pattern-css').text(prettyPrintJSON(css($(this))));
    });
  });
});

function css(a) {
  var sheets = document.styleSheets, o = {};
  for (var i in sheets) {
    var rules = sheets[i].rules || sheets[i].cssRules;
    for (var r in rules) {
      if (a.is(rules[r].selectorText)) {
        o = $.extend(o, css2json(rules[r].style), css2json(a.attr('style')));
      }
    }
  }
  return o;
}

function css2json(css) {
  var s = {};
  if (!css) return s;
  if (css instanceof CSSStyleDeclaration) {
    for (var i in css) {
      if ((css[i]).toLowerCase) {
        s[(css[i]).toLowerCase()] = (css[css[i]]);
      }
    }
  } else if (typeof css == "string") {
    css = css.split(/;\s*/);
    for (var i in css) {
      var l = css[i].split(/:\s*/);
      s[l[0].toLowerCase()] = (l[1]);
    }
  }
  return s;
}

function prettyPrintJSON(json) {
  return JSON.stringify(json);
}
