# backbase_temp

Manaul Regression Testing:

Manual regression tests written to establish that functionality is as expected. Coverage is limited to those I deemed to be of highest priority based on my own exploration of the application.

I got caught out in a few places whereby the application did not behaves as expected. E.G. Allowing for duplicate records (without a unique key visible), was a pain and had a knock on effect of how I had to deal with the automation.

Originally written using open office, so I'd recommend the ODS version - although given it's pretty much plain text, there should be no issue with xlsx version.

Automation:

I automated most of the manual tests written, with those omitted typically due to time constraints. Typically I'd automate as much as possible to minimize on the number of manual tests required. I appreciate that there are such things as over saturated automation suites, which can result in excessive run time and maintenance, however, this is something that needs to be handled separately.

I've made an asusmption that no thorough instructions are needed to execute the automation (if you even intend to do so). Regardless I've added a few lines to a readme in the directory anyway.

Not Covered:

There were a few theoretical areas not covered in automation or manual testing that in reality, should be considered for this type of solution:

  Cross browser testing - Realistically this would only be done when a list of supported browsers is provided

  SQL injection testing - I didn't really go down this route as my experience is severely limited
