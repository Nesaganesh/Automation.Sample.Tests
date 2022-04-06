import {test} from '@playwright/test';


test.beforeEach(async ({ page }) => {
    console.log("Process : "+process.cwd())
    await page.goto('file://'+process.cwd()+'/localtest.html');
  });


test('fetch all hyperlinks and check for brokern links @UITests', async({page}) => {

    let arrayOfElements  = await page.$$('a');
    console.log(arrayOfElements.length);

    for (let i = 0; i < arrayOfElements.length; i++) {

        await arrayOfElements[i].click();
        await page.waitForLoadState();
        await page.goBack();
        await page.waitForLoadState();
        arrayOfElements  = await page.$$('a');
    }   
    
});

test('fetch all rows from the given html @UITests', async({page}) => {

    const arrayOfElements = await page.$$("tr td");
    console.log("Number of rows in the page " + arrayOfElements.length);

    for (let i = 0; i < arrayOfElements.length; i++) {

        const text = await arrayOfElements[i].$eval('a', e=>e.innerText); 
        console.log(text);
    }   
    
});