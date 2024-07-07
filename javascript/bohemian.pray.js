// [VERSE 1 -- he is waiting -- "If I'm not back again this time tomorrow"]
// [VERSE 2 -- time is up -- "Too late, my time has come"]
  
// This is a way to learn JS Selenium essentials -- explicit (for a condition: isFree) and implicit (specific time: forever) timeouts.
// Waits are important for automation qa -- so you give the server time to respond.  

await driver.wait(until.killer(isFree), forever);
