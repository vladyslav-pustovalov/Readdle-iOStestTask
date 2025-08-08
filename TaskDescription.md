## Greetings %username% !

This is a quick manual on what we expect from you during performing the test task.

This will be a simple app that contains two features: Login & Checklist.

* First of all, get to know with the application under test, build the test app and check out its possibilities and bugs. 

* Second of all, we need to evaluate your qa manual background, so create down below:
 - short testplan 
 - list of the testcases
 - list of discovered issues
 
* Third of all, write test automation according test automation purposes  

* And fourth of all, push the whole project to github.com and notice us with a link to your repo on completion. 

Please reachout Oksana (otolstykh@readdle.com) if you have any questions.

## Good Luck!
* p.s. Do not tamper codebase of application

#YOUR TASK STARTS HERE: 


# TEST PLAN: 

- Environment:
    - iPhones with different screen sizes: usuall, Max, mini, SE (newer and older)
    - iPhones with different supported iOS versions 
    Devices with diffrent screens and OS versions can be mixed for not having the same tests on all the devices.
    iPad - with the same approach as on iPhones (default, mini, usuall Pro size and bigger Pro size (or Airs)).
    - Portrain and Landscape orientation
    
- What parts of app will be tested:
    - Functional part
    - UI on different iPhone models, with different themes (Light, Dark)
    - Localization on different languages
    - Compatability part on different iOS version
    - Accessibility using tools like VoiceOver, Larger icons and fonts, one hand mode.  


# LIST OF TEST CASES: 
// Only summaries of tests: e.g. 

- Perform login with valid email and password
- Perform login with email without @
- Perform login with empty login and password
- Perform login with empty password field
- Perform login with invalid credentials

- Perform logout from the main screen with logout
- Perform logout from the main screen with cancel
- Perform logout from the subtask screen with logout
- Perform logout from the subtask screen with cancel

- Perform Retry when error login is shown and credentials was valid
- Perform Retry when error login is shown and credentials was invalid
- Perform Cancle when error login is shown

- Navigate to the subpask screen
- Navigate from the subtask to the main screen

- Compleme an uncompleted task without subtasts
- Cancel a completed task without subtasts
- Compleme an uncompleted task with subtasts
- Cancel a completed task with subtasts
- Complete all tasks when non tasks are completed
- Complete all tasks when some tasks are completed
- Cancel all tasks when all tasks are completed
- Cancel all tasks when tasks are partially completed

- Compleme an uncompleted subtask
- Cancel a completed subtask
- Complete all subtasks
- Cancel one subtaks when all subtasks are completed
- Cancel all subtasks when all subtasks are completed
- Cancel all subtasks when subtasks are partially completed

- Sort tasts by name
- Sort subtasts by name

- Check saving completed tasks when navigate to subtask screen and back
- Check saving completed subtask when navigate to main screen and back
- Check saving completed task and subtask when logout and login


# LIST OF DISCOVERED ISSUES:
// Only summaries of bug reports: e.g.

- The error login is shown randomly when a user logins with valid credentials (try to login and logout a few times with the same credentials)
- The Retry login with valid credentials is not happened randomly when the login error alert is shown and a user retries to login (try to repeat retry a few times when the login error is shown)
- The login is successful when the dns label is longer than 63 characters but there is another label after dot that is shorter (FE test@comw.longtestemalongtestemalongtestemalongtestemalongtestemalongtaaaa.com)
- Navigation to the subtask screen is not happened when a user clicks on the navigation arrow on the right from the info sign
- Subtasks are not canceled when not all the tasks are completed and a user clicks on the Canclel All button
- The button Cancel All is not changed to Complete All when all tasks are completed and a user cancels some task
- The button Complete All is not changed to Cancel All when a user completes all tasks manually
- The button Cancel All is not changed to Complete All when all subtasks are completed and a user cancels some subtask
- The button Complete All is not changed to Cancel All when a user completes all subtasks manually
- The button Cancel All is not shown when a user navigates to the subtask screen of the completed task
- The previous Taks is clicked randomly when a user clicks the task (try to click a few times on the same task)
- All tasks checkboxes are not checked randomly when a user clicks on the Complete All button on the main screen (try to click a few times on the Complete All button)
- Complete All button is not changed to the Cancel All button randomly when a user clicks on Complete All button on the main screen (try to click a few times on the Complete All button)
- All subtasks checkboxes are not checked randomly when a user clicks on the Complete All button on the subtaskts screen (try to click a few times on the Complete All button)
- Complete All button is not changed to the Cancel All button randomly when a user clicks on Complete All button on the subtask screen (try to click a few times on the Complete All button)
- Taks are NOT sorted by name randomly when a user clicks on the Sort by Name button on the main screen (try to click a few times on the Sort by Name button)
- Taks are set completed randomly when a user clicks on the Sort by Name button on the main screen (try to click a few times on the Sort by Name button)
- Subtaks are NOT sorted by name randomly when a user clicks on the Sort by Name button on the subtask screen (try to click a few times on the Sort by Name button)
- Subtasks are set completed randomly when a user clicks on the Sort by Name button on the subtask screen (try to click a few times on the Sort by Name button)
- Task and its subtasks completion state are not synced randomly when a user completes the task with subtasks (try to click a few times on the same task with subtasks)
- Tasks name has black color in the dark mode randomly (try to relogin to the app in the dark mode a few times)
- Checkboxes are has black color in the dark mode (are not seen at all)
