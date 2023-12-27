function displaySelectedValue() {
        var selectedValue = document.getElementById("list").value;
         document.getElementById("selectedValue").value = selectedValue;
}

 function toggleBold() {
        var selection = window.getSelection();
        var range = selection.getRangeAt(0);
        var span = document.createElement('span');
        span.style.fontWeight = (range.commonAncestorContainer.parentNode.style.fontWeight === 'bold') ? 'normal' : 'bold';
        range.surroundContents(span);
    }

    function updateTextarea(type) {
        var contentDiv = document.querySelector('[data-type="' + type + '"]');
        var textarea = document.querySelector('textarea[name="' + type + '"]');
        textarea.value = contentDiv.innerHTML;
    }