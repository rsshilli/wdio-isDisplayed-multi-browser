const {Given, When, Then} = require('@wdio/cucumber-framework');

Given(/^(Ryan|Kons) is on the modal page$/, async(browserName) => {
  await browser[browserName].url("https://codepen.io/rsshilli-the-flexboxer/pen/yLoWRRJ");
});

When(/^(Ryan|Kons) opens the modal$/, async(browserName) => {
  await browser[browserName].$("#modalOpenButton").click();
  await browser[browserName].$("#myBodyTextArea").waitForDisplayed(10 * 1000);
});

Then(/^(Ryan|Kons) clicks to close the modal$/, async(message) => {
  await browser[browserName].$("#closeButton").click();
  await browser[browserName].$("#myBodyTextArea").waitForDisplayed(10 * 1000, true);
});

