---
layout              : page
title               : "title"
subheadline         : ""
teaser              : ""
header:
   image_fullwidth  : "header_unsplash_12.jpg"
permalink           : "/page/" 
output:
  md_document:
    variant: markdown_github
    preserve_yaml: TRUE
---

edited to add 15

<script>
  var now = new Date();
  var datetime = now.toLocaleString();
  var month = now.getUTCMonth() + 1;
  document.write(month);
</script>


<script>
  function getLastWednesdayOfMonth(year, month) {
    var lastDay = new Date(year, month + 1, 0); // Get the last day of the next month
    var dayOfWeek = lastDay.getDay(); // Get the day of the week for the last day

    // Calculate the difference between the last day's day of the week and Wednesday
    var difference = (dayOfWeek - 3 + 7) % 7;

    // Subtract the difference from the last day to get the last Wednesday
    lastDay.setDate(lastDay.getDate() - difference);

    return lastDay;
  }

  // Example: Get the last Wednesday of the current month
  var now = new Date();
  var currentYear = now.getFullYear();
  var currentMonth = now.getMonth();

  var lastWednesday = getLastWednesdayOfMonth(currentYear, currentMonth);

  document.write("Last Wednesday of the month: " + lastWednesday.toDateString());
</script>




