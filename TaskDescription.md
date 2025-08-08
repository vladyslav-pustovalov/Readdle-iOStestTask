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
    In info.plist file I see that there is no iPad support, if it's according to the requirements - we shouldn't test it on the iPad. If the app should be on the iPad - we should test it with the same approach.
    
- What parts of app will be tested:
    - Functional part
    - UI on different iPhone models, with different themes (Light, Dark)
    - Localization on different languages
    - Compatability part on different iOS version
    - Accessibility using tools like VoiceOver, Larger icons and fonts, one hand mode.  


# LIST OF TEST CASES: 
// Only summaries of tests: e.g. 

- Perform login with valid credentials
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

- The error login is shown randomly when a user logins with valid credentials
- The login with valid credentials happens from the second Retry when the error login is shown
- Navigation to the subtask screen is not happened when a user clicks on the navigation arrow on the right from the info sign
- Subtasks are not canceled when not all the tasks are completed and a user clicks on the Canclel All button
- The button Cancel All is not changed to Complete All when all tasks are completed and a user cancels some task
- The button Complete All is not changed to Cancel All when a user completes all tasks manually
- The button Cancel All is not changed to Complete All when all subtasks are completed and a user cancels some subtask
- The button Complete All is not changed to Cancel All when a user completes all subtasks manually
- The button Cancel All is not shown when a user navigates to the subtask screen of the completed task
