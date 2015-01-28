// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {
  $('#pl-patterns .pl-pattern').each(function() {
    var $this = $(this);
    $this.find('.pl-snippet-styled > *').each(function() {
      var styles = css($(this));
      $(this).find('*').each(function() {
        styles = styles.concat(css($(this)));
      });
      $this.find('.pl-pattern-css').text(prettyPrintArray(styles));
    });
  });
});

function css(a) {
  var sheets = document.styleSheets, o = [];
  for (var i in sheets) {
    var rules = sheets[i].rules || sheets[i].cssRules;
    for (var r in rules) {
      if (a.is(rules[r].selectorText)) {
        o.push(rules[r].cssText);
      }
    }
  }
  if (a.attr('style')) {
    o.push("Inline { " + a.attr('style') + " }");
  }
  return o;
}

function prettyPrintArray(styles) {
  return $.map(styles, function(rule) {
    rule = rule.replace(/\{\s*/g, '{\n  ');
    rule = rule.replace(/;\s*/g, ';\n  ');
    rule = rule.replace(/([^;\s])\s*\}/g, '$1;\n}');
    rule = rule.replace(/^\s+\}/gm, '}');
    return rule;
  }).join('\n');
}
