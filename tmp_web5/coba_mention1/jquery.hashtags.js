// Generated by CoffeeScript 1.12.5
(function() {
  var $, hashtagsBase, hashtagsContenteditable, hashtagsInput, Selection, entityMap, escapeHtml, escapeRegExp, namespace,
    bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
    extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty,
    slice = [].slice;

  namespace = "hashtagsInput";

  if (typeof module === "object" && typeof module.exports === "object") {
    $ = require("jquery");
    require("jquery-ui/ui/widgets/autocomplete");
  } else {
    $ = window.jQuery;
  }

  Selection = {
    get: function(input) {
      return {
        start: input[0].selectionStart,
        end: input[0].selectionEnd
      };
    },
    set: function(input, start, end) {
      if (end == null) {
        end = start;
      }
      if (input[0].selectionStart) {
        input[0].selectStart = start;
        return input[0].selectionEnd = end;
      }
    }
  };

  entityMap = {
    "&": "&amp;",
    "<": "&lt;",
    ">": "&gt;",
    "\"": "&quot;",
    "'": "&#39;",
    "/": "&#x2F;"
  };

  escapeHtml = function(text) {
    return text.replace(/[&<>"'\/]/g, function(s) {
      return entityMap[s];
    });
  };

  escapeRegExp = function(str) {
    var specials;
    specials = /[.*+?|()\[\]{}\\$^]/g;
    return str.replace(specials, "\\$&");
  };

  $.widget("ui.areacomplete", $.ui.autocomplete, {
    options: $.extend({}, $.ui.autocomplete.prototype.options, {
      matcher: "(\\b[^,]*)",
      suffix: ''
    }),
    _create: function() {
      this.overriden = {
        select: this.options.select,
        focus: this.options.focus
      };
      this.options.select = $.proxy(this.selectCallback, this);
      this.options.focus = $.proxy(this.focusCallback, this);
      $.ui.autocomplete.prototype._create.call(this);
      return this.matcher = new RegExp(this.options.matcher + '$');
    },
    selectCallback: function(event, ui) {
      var after, before, newval, value;
      value = this._value();
      before = value.substring(0, this.start);
      after = value.substring(this.end);
      newval = ui.item.value + this.options.suffix;
      value = before + newval + after;
      this._value(value);
      Selection.set(this.element, before.length + newval.length);
      if (this.overriden.select) {
        ui.item.pos = this.start;
        this.overriden.select(event, ui);
      }
      return false;
    },
    focusCallback: function() {
      if (this.overriden.focus) {
        return this.overriden.focus(event, ui);
      }
      return false;
    },
    search: function(value, event) {
      var match, pos;
      if (!value) {
        value = this._value();
        pos = Selection.get(this.element).start;
        value = value.substring(0, pos);
        match = this.matcher.exec(value);
        if (!match) {
          return '';
        }
        this.start = match.index;
        this.end = match.index + match[0].length;
        this.searchTerm = match[1];
      }
      return $.ui.autocomplete.prototype.search.call(this, this.searchTerm, event);
    },
    _renderItem: function(ul, item) {
      var anchor, li, regexp, value;
      li = $('<li>');
      anchor = $('<a>').appendTo(li);
      if (item.image) {
        anchor.append("<img src=\"" + item.image + "\" />");
      }
      regexp = new RegExp("(" + escapeRegExp(this.searchTerm) + ")", "gi");
      value = item.value.replace(regexp, "<strong>$&</strong>");
      anchor.append(value);
      return li.appendTo(ul);
    }
  });

  $.widget("ui.editablecomplete", $.ui.areacomplete, {
    options: $.extend({}, $.ui.areacomplete.prototype.options, {
      showAtCaret: false
    }),
    selectCallback: function(event, ui) {
      var hashtag, pos;
      pos = {
        start: this.start,
        end: this.end
      };
      if (this.overriden.select) {
        ui.item.pos = pos;
        if (this.overriden.select(event, ui) === false) {
          return false;
        }
      }
      hashtag = document.createTextNode(ui.item.value);
      inserthashtag(hashtag, pos, this.options.suffix);
      this.element.change();
      return false;
    },
    search: function(value, event) {
      var match, node, pos, sel;
      if (!value) {
        sel = window.getSelection();
        node = sel.focusNode;
        value = node.textContent;
        pos = sel.focusOffset;
        value = value.substring(0, pos);
        match = this.matcher.exec(value);
        if (!match) {
          return '';
        }
        this.start = match.index;
        this.end = match.index + match[0].length;
        this._setDropdownPosition(node);
        this.searchTerm = match[1];
      }
      return $.ui.autocomplete.prototype.search.call(this, this.searchTerm, event);
    },
    _setDropdownPosition: function(node) {
      var boundary, posX, posY, rect;
      if (this.options.showAtCaret) {
        boundary = document.createRange();
        boundary.setStart(node, this.start);
        boundary.collapse(true);
        rect = boundary.getClientRects()[0];
        posX = rect.left + (window.scrollX || window.pageXOffset);
        posY = rect.top + rect.height + (window.scrollY || window.pageYOffset);
        this.options.position.of = document;
        return this.options.position.at = "left+" + posX + " top+" + posY;
      }
    }
  });

  hashtagsBase = (function() {
    hashtagsBase.prototype.marker = '\u200B';

    function hashtagsBase(input1, options) {
      this.input = input1;
      this.options = $.extend({}, this.settings, options);
      if (!this.options.source) {
        this.options.source = this.input.data('source') || [];
      }
    }

    hashtagsBase.prototype._getMatcher = function() {
      var allowedChars;
      allowedChars = '[^' + this.options.trigger + ']';
      return '[' + this.options.trigger + '](' + allowedChars + '{0,20})';
    };

    hashtagsBase.prototype._markuphashtag = function(hashtag) {
      return "#[" + hashtag.name + "](" + hashtag.uid + ")";
    };

    return hashtagsBase;

  })();

  hashtagsInput = (function(superClass) {
    var mimicProperties;

    extend(hashtagsInput, superClass);

    mimicProperties = ['backgroundColor', 'marginTop', 'marginBottom', 'marginLeft', 'marginRight', 'paddingTop', 'paddingBottom', 'paddingLeft', 'paddingRight', 'borderTopWidth', 'borderLeftWidth', 'borderBottomWidth', 'borderRightWidth', 'fontSize', 'fontStyle', 'fontFamily', 'fontWeight', 'lineHeight', 'height', 'boxSizing'];

    function hashtagsInput(input1, options) {
      var container;
      this.input = input1;
      this._updateHScroll = bind(this._updateHScroll, this);
      this._updateVScroll = bind(this._updateVScroll, this);
      this._updateValue = bind(this._updateValue, this);
      this._onSelect = bind(this._onSelect, this);
      this._addhashtag = bind(this._addhashtag, this);
      this._updatehashtags = bind(this._updatehashtags, this);
      this._update = bind(this._update, this);
      this.settings = {
        trigger: '#',
        widget: 'areacomplete',
        suffix: '',
        autocomplete: {
          autoFocus: true,
          delay: 0
        }
      };
      hashtagsInput.__super__.constructor.call(this, this.input, options);
      this.hashtags = [];
      this.input.addClass('input');
      container = $('<div>', {
        'class': 'hashtags-input'
      });
      container.css('display', this.input.css('display'));
      this.container = this.input.wrapAll(container).parent();
      this.hidden = this._createHidden();
      this.highlighter = this._createHighlighter();
      this.highlighterContent = $('div', this.highlighter);
      this.input.focus((function(_this) {
        return function() {
          return _this.highlighter.addClass('focus');
        };
      })(this)).blur((function(_this) {
        return function() {
          return _this.highlighter.removeClass('focus');
        };
      })(this));
      options = $.extend({
        matcher: this._getMatcher(),
        select: this._onSelect,
        suffix: this.options.suffix,
        source: this.options.source,
        appendTo: this.input.parent()
      }, this.options.autocomplete);
      this.autocomplete = this.input[this.options.widget](options);
      this._setValue(this.input.val());
      this._initEvents();
    }

    hashtagsInput.prototype._initEvents = function() {
      var tagName;
      this.input.on("input." + namespace + " change." + namespace, this._update);
      tagName = this.input.prop("tagName");
      if (tagName === "INPUT") {
        this.input.on("focus." + namespace, (function(_this) {
          return function() {
            return _this.interval = setInterval(_this._updateHScroll, 10);
          };
        })(this));
        return this.input.on("blur." + namespace, (function(_this) {
          return function() {
            setTimeout(_this._updateHScroll, 10);
            return clearInterval(_this.interval);
          };
        })(this));
      } else if (tagName === "TEXTAREA") {
        this.input.on("scroll." + namespace, ((function(_this) {
          return function() {
            return setTimeout(_this._updateVScroll, 10);
          };
        })(this)));
        return this.input.on("resize." + namespace, ((function(_this) {
          return function() {
            return setTimeout(_this._updateVScroll, 10);
          };
        })(this)));
      }
    };

    hashtagsInput.prototype._setValue = function(value) {
      var match, hashtagRE, offset;
      offset = 0;
      hashtagRE = /#\[([^\]]+)\]\(([^ \)]+)\)/g;
      this.value = value.replace(hashtagRE, '$1');
      this.input.val(this.value);
      match = hashtagRE.exec(value);
      while (match) {
        this._addhashtag({
          name: match[1],
          uid: match[2],
          pos: match.index - offset
        });
        offset += match[2].length + 5;
        match = hashtagRE.exec(value);
      }
      return this._updateValue();
    };

    hashtagsInput.prototype._createHidden = function() {
      var hidden;
      hidden = $('<input>', {
        type: 'hidden',
        name: this.input.attr('name')
      });
      $.each(this.input.data(), function(name, value) {
        return hidden.attr("data-" + name.replace(/([a-zA-Z])(?=[A-Z])/g, '$1-').toLowerCase(), JSON.stringify(value));
      });
      this.input.removeData();
      hidden.appendTo(this.container);
      this.input.removeAttr('name');
      return hidden;
    };

    hashtagsInput.prototype._createHighlighter = function() {
      var content, highlighter, j, len, property;
      highlighter = $('<div>', {
        'class': 'highlighter'
      });
      if (this.input.prop("tagName") === "INPUT") {
        highlighter.css('whiteSpace', 'pre');
      } else {
        highlighter.css('whiteSpace', 'pre-wrap');
        highlighter.css('wordWrap', 'break-word');
      }
      content = $('<div>', {
        'class': 'highlighter-content'
      });
      highlighter.append(content).prependTo(this.container);
      for (j = 0, len = mimicProperties.length; j < len; j++) {
        property = mimicProperties[j];
        highlighter.css(property, this.input.css(property));
      }
      this.input.css('backgroundColor', 'transparent');
      return highlighter;
    };

    hashtagsInput.prototype._update = function() {
      this._updatehashtags();
      return this._updateValue();
    };

    hashtagsInput.prototype._updatehashtags = function() {
      var change, cursor, diff, i, j, k, len, hashtag, piece, ref, update_pos, value;
      value = this.input.val();
      diff = diffChars(this.value, value);
      update_pos = (function(_this) {
        return function(cursor, delta) {
          var j, len, hashtag, ref, results;
          ref = _this.hashtags;
          results = [];
          for (j = 0, len = ref.length; j < len; j++) {
            hashtag = ref[j];
            if (hashtag.pos >= cursor) {
              results.push(hashtag.pos += delta);
            } else {
              results.push(void 0);
            }
          }
          return results;
        };
      })(this);
      cursor = 0;
      for (j = 0, len = diff.length; j < len; j++) {
        change = diff[j];
        if (change.added) {
          update_pos(cursor, change.count);
        } else if (change.removed) {
          update_pos(cursor, -change.count);
        }
        if (!change.removed) {
          cursor += change.count;
        }
      }
      ref = this.hashtags.slice(0);
      for (i = k = ref.length - 1; k >= 0; i = k += -1) {
        hashtag = ref[i];
        piece = value.substring(hashtag.pos, hashtag.pos + hashtag.name.length);
        if (hashtag.name !== piece) {
          this.hashtags.splice(i, 1);
        }
      }
      return this.value = value;
    };

    hashtagsInput.prototype._addhashtag = function(hashtag) {
      this.hashtags.push(hashtag);
      return this.hashtags.sort(function(a, b) {
        return a.pos - b.pos;
      });
    };

    hashtagsInput.prototype._onSelect = function(event, ui) {
      this._updatehashtags();
      this._addhashtag({
        name: ui.item.value,
        pos: ui.item.pos,
        uid: ui.item.uid
      });
      return this._updateValue();
    };

    hashtagsInput.prototype._updateValue = function() {
      var cursor, hdContent, hlContent, j, len, hashtag, piece, ref, value;
      value = this.input.val();
      hlContent = [];
      hdContent = [];
      cursor = 0;
      ref = this.hashtags;
      for (j = 0, len = ref.length; j < len; j++) {
        hashtag = ref[j];
        piece = value.substring(cursor, hashtag.pos);
        hlContent.push(escapeHtml(piece));
        hdContent.push(piece);
        hlContent.push("<strong>" + hashtag.name + "</strong>");
        hdContent.push(this._markuphashtag(hashtag));
        cursor = hashtag.pos + hashtag.name.length;
      }
      piece = value.substring(cursor);
      this.highlighterContent.html(hlContent.join('') + escapeHtml(piece));
      return this.hidden.val(hdContent.join('') + piece);
    };

    hashtagsInput.prototype._updateVScroll = function() {
      var scrollTop;
      scrollTop = this.input.scrollTop();
      this.highlighterContent.css({
        top: "-" + scrollTop + "px"
      });
      return this.highlighter.height(this.input.height());
    };

    hashtagsInput.prototype._updateHScroll = function() {
      var scrollLeft;
      scrollLeft = this.input.scrollLeft();
      return this.highlighterContent.css({
        left: "-" + scrollLeft + "px"
      });
    };

    hashtagsInput.prototype._replaceWithSpaces = function(value, what) {
      return value.replace(what, Array(what.length).join(' '));
    };

    hashtagsInput.prototype._cutChar = function(value, index) {
      return value.substring(0, index) + value.substring(index + 1);
    };

    hashtagsInput.prototype.setValue = function() {
      var j, len, piece, pieces, value;
      pieces = 1 <= arguments.length ? slice.call(arguments, 0) : [];
      value = '';
      for (j = 0, len = pieces.length; j < len; j++) {
        piece = pieces[j];
        if (typeof piece === 'string') {
          value += piece;
        } else {
          value += this._markuphashtag(piece);
        }
      }
      return this._setValue(value);
    };

    hashtagsInput.prototype.getValue = function() {
      return this.hidden.val();
    };

    hashtagsInput.prototype.getRawValue = function() {
      return this.input.val().replace(this.marker, '');
    };

    hashtagsInput.prototype.gethashtags = function() {
      return this.hashtags;
    };

    hashtagsInput.prototype.clear = function() {
      this.input.val('');
      return this._update();
    };

    hashtagsInput.prototype.destroy = function() {
      this.input.areacomplete("destroy");
      this.input.off("." + namespace).attr('name', this.hidden.attr('name'));
      return this.container.replaceWith(this.input);
    };

    return hashtagsInput;

  })(hashtagsBase);

  hashtagsContenteditable = (function(superClass) {
    var inserthashtag, hashtagTpl;

    extend(hashtagsContenteditable, superClass);

    hashtagsContenteditable.prototype.selector = '[data-hashtag]';

    function hashtagsContenteditable(input1, options) {
      this.input = input1;
      this._onSelect = bind(this._onSelect, this);
      this._addhashtag = bind(this._addhashtag, this);
      this.settings = {
        trigger: '#',
        widget: 'editablecomplete',
        autocomplete: {
          autoFocus: true,
          delay: 0
        }
      };
      hashtagsContenteditable.__super__.constructor.call(this, this.input, options);
      options = $.extend({
        matcher: this._getMatcher(),
        suffix: this.marker,
        select: this._onSelect,
        source: this.options.source,
        showAtCaret: this.options.showAtCaret
      }, this.options.autocomplete);
      this.autocomplete = this.input[this.options.widget](options);
      this._setValue(this.input.html());
      this._initEvents();
    }

    hashtagTpl = function(hashtag) {
      return "<strong data-hashtag=\"" + hashtag.uid + "\">" + hashtag.value + "</strong>";
    };

    inserthashtag = function(hashtag, pos, suffix) {
      var node, range, selection;
      selection = window.getSelection();
      node = selection.focusNode;
      range = selection.getRangeAt(0);
      range.setStart(node, pos.start);
      range.setEnd(node, pos.end);
      range.deleteContents();
      range.insertNode(hashtag);
      if (suffix) {
        suffix = document.createTextNode(suffix);
        $(suffix).insertAfter(hashtag);
        range.setStartAfter(suffix);
      } else {
        range.setStartAfter(hashtag);
      }
      range.collapse(true);
      selection.removeAllRanges();
      selection.addRange(range);
      return hashtag;
    };

    hashtagsContenteditable.prototype._initEvents = function() {
      return this.input.find(this.selector).each((function(_this) {
        return function(i, el) {
          return _this._watch(el);
        };
      })(this));
    };

    hashtagsContenteditable.prototype._setValue = function(value) {
      var hashtagRE;
      hashtagRE = /#\[([^\]]+)\]\(([^ \)]+)\)/g;
      value = value.replace(hashtagRE, (function(_this) {
        return function(match, value, uid) {
          return hashtagTpl({
            value: value,
            uid: uid
          }) + _this.marker;
        };
      })(this));
      return this.input.html(value);
    };

    hashtagsContenteditable.prototype._addhashtag = function(data) {
      var hashtag, hashtagNode;
      hashtagNode = $(hashtagTpl(data))[0];
      hashtag = inserthashtag(hashtagNode, data.pos, this.marker);
      return this._watch(hashtag);
    };

    hashtagsContenteditable.prototype._onSelect = function(event, ui) {
      this._addhashtag(ui.item);
      this.input.trigger("change." + namespace);
      return false;
    };

    hashtagsContenteditable.prototype._watch = function(hashtag) {
      return hashtag.addEventListener('DOMCharacterDataModified', function(e) {
        var offset, range, sel, text;
        if (e.newValue !== e.prevValue) {
          text = e.target;
          sel = window.getSelection();
          offset = sel.focusOffset;
          $(text).insertBefore(hashtag);
          $(hashtag).remove();
          range = document.createRange();
          range.setStart(text, offset);
          range.collapse(true);
          sel.removeAllRanges();
          return sel.addRange(range);
        }
      });
    };

    hashtagsContenteditable.prototype.update = function() {
      this._initValue();
      this._initEvents();
      return this.input.focus();
    };

    hashtagsContenteditable.prototype.setValue = function() {
      var j, len, piece, pieces, value;
      pieces = 1 <= arguments.length ? slice.call(arguments, 0) : [];
      value = '';
      for (j = 0, len = pieces.length; j < len; j++) {
        piece = pieces[j];
        if (typeof piece === 'string') {
          value += piece;
        } else {
          value += this._markuphashtag(piece);
        }
      }
      this._setValue(value);
      this._initEvents();
      return this.input.focus();
    };

    hashtagsContenteditable.prototype.getValue = function() {
      var markuphashtag, value;
      value = this.input.clone();
      markuphashtag = this._markuphashtag;
      $(this.selector, value).replaceWith(function() {
        var name, uid;
        uid = $(this).data('hashtag');
        name = $(this).text();
        return markuphashtag({
          name: name,
          uid: uid
        });
      });
      return value.html().replace(this.marker, '');
    };

    hashtagsContenteditable.prototype.gethashtags = function() {
      var hashtags;
      hashtags = [];
      $(this.selector, this.input).each(function() {
        return hashtags.push({
          uid: $(this).data('hashtag'),
          name: $(this).text()
        });
      });
      return hashtags;
    };

    hashtagsContenteditable.prototype.clear = function() {
      return this.input.html('');
    };

    hashtagsContenteditable.prototype.destroy = function() {
      this.input.editablecomplete("destroy");
      this.input.off("." + namespace);
      return this.input.html(this.getValue());
    };

    return hashtagsContenteditable;

  })(hashtagsBase);

  
/*
    Copyright (c) 2009-2011, Kevin Decker <kpdecker#gmail.com>
*/
function diffChars(oldString, newString) {
  // Handle the identity case (this is due to unrolling editLength == 0
  if (newString === oldString) {
    return [{ value: newString }];
  }
  if (!newString) {
    return [{ value: oldString, removed: true }];
  }
  if (!oldString) {
    return [{ value: newString, added: true }];
  }

  var newLen = newString.length, oldLen = oldString.length;
  var maxEditLength = newLen + oldLen;
  var bestPath = [{ newPos: -1, components: [] }];

  // Seed editLength = 0, i.e. the content starts with the same values
  var oldPos = extractCommon(bestPath[0], newString, oldString, 0);
  if (bestPath[0].newPos+1 >= newLen && oldPos+1 >= oldLen) {
    // Identity per the equality and tokenizer
    return [{value: newString}];
  }

  // Main worker method. checks all permutations of a given edit length for acceptance.
  function execEditLength() {
    for (var diagonalPath = -1*editLength; diagonalPath <= editLength; diagonalPath+=2) {
      var basePath;
      var addPath = bestPath[diagonalPath-1],
          removePath = bestPath[diagonalPath+1];
      oldPos = (removePath ? removePath.newPos : 0) - diagonalPath;
      if (addPath) {
        // No one else is going to attempt to use this value, clear it
        bestPath[diagonalPath-1] = undefined;
      }

      var canAdd = addPath && addPath.newPos+1 < newLen;
      var canRemove = removePath && 0 <= oldPos && oldPos < oldLen;
      if (!canAdd && !canRemove) {
        // If this path is a terminal then prune
        bestPath[diagonalPath] = undefined;
        continue;
      }

      // Select the diagonal that we want to branch from. We select the prior
      // path whose position in the new string is the farthest from the origin
      // and does not pass the bounds of the diff graph
      if (!canAdd || (canRemove && addPath.newPos < removePath.newPos)) {
        basePath = clonePath(removePath);
        pushComponent(basePath.components, undefined, true);
      } else {
        basePath = addPath;   // No need to clone, we've pulled it from the list
        basePath.newPos++;
        pushComponent(basePath.components, true, undefined);
      }

      var oldPos = extractCommon(basePath, newString, oldString, diagonalPath);

      // If we have hit the end of both strings, then we are done
      if (basePath.newPos+1 >= newLen && oldPos+1 >= oldLen) {
        return buildValues(basePath.components, newString, oldString);
      } else {
        // Otherwise track this path as a potential candidate and continue.
        bestPath[diagonalPath] = basePath;
      }
    }

    editLength++;
  }

  // Performs the length of edit iteration. Is a bit fugly as this has to support the
  // sync and async mode which is never fun. Loops over execEditLength until a value
  // is produced.
  var editLength = 1;
  while(editLength <= maxEditLength) {
    var ret = execEditLength();
    if (ret) {
      return ret;
    }
  }
}

function buildValues(components, newString, oldString) {
    var componentPos = 0,
        componentLen = components.length,
        newPos = 0,
        oldPos = 0;

    for (; componentPos < componentLen; componentPos++) {
      var component = components[componentPos];
      if (!component.removed) {
        component.value = newString.slice(newPos, newPos + component.count);
        newPos += component.count;

        // Common case
        if (!component.added) {
          oldPos += component.count;
        }
      } else {
        component.value = oldString.slice(oldPos, oldPos + component.count);
        oldPos += component.count;
      }
    }

    return components;
  }

function pushComponent(components, added, removed) {
  var last = components[components.length-1];
  if (last && last.added === added && last.removed === removed) {
    // We need to clone here as the component clone operation is just
    // as shallow array clone
    components[components.length-1] = {count: last.count + 1, added: added, removed: removed };
  } else {
    components.push({count: 1, added: added, removed: removed });
  }
}

function extractCommon(basePath, newString, oldString, diagonalPath) {
  var newLen = newString.length,
      oldLen = oldString.length,
      newPos = basePath.newPos,
      oldPos = newPos - diagonalPath,

      commonCount = 0;
  while (newPos+1 < newLen && oldPos+1 < oldLen && newString[newPos+1] == oldString[oldPos+1]) {
    newPos++;
    oldPos++;
    commonCount++;
  }

  if (commonCount) {
    basePath.components.push({count: commonCount});
  }

  basePath.newPos = newPos;
  return oldPos;
}

function clonePath(path) {
    return { newPos: path.newPos, components: path.components.slice(0) };
};

  $.fn[namespace] = function() {
    var args, options, returnValue;
    options = arguments[0], args = 2 <= arguments.length ? slice.call(arguments, 1) : [];
    returnValue = this;
    this.each(function() {
      var instance, ref;
      if (typeof options === 'string' && options.charAt(0) !== '_') {
        instance = $(this).data('hashtagsInput');
        if (options in instance) {
          return returnValue = instance[options].apply(instance, args);
        }
      } else {
        if ((ref = this.tagName) === 'INPUT' || ref === 'TEXTAREA') {
          return $(this).data('hashtagsInput', new hashtagsInput($(this), options));
        } else if (this.contentEditable === "true") {
          return $(this).data('hashtagsInput', new hashtagsContenteditable($(this), options));
        }
      }
    });
    return returnValue;
  };

}).call(this);
