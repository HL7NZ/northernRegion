#!/usr/bin/env node

/**
 * Upload the Extension Definitions to a server
 * This MUST be run after the IG builder has run, as the IG builder adds the snapshot element to the SD
 **/

console.log("Uploading Extension Definitions")
let fs = require('fs');
let syncRequest = require('../../common/node_modules/sync-request/lib');

//where the resources will be uploaded to...
//let serverRoot = 'http://home.clinfhir.com:8054/baseR4/';  

let serverRoot = 'http://hapi.fhir.org/baseR4/';  

//the output filder of sushi
let folderHome = "../shorthand/build/input/"
let IGBuilderOutput =  "../shorthand/build/output/"; //Where the profile with the snapshot is... (as IGBuilder adds it)

//the folders where resources are placed...
let folders = ['profiles','extensions'];        //todo ? add others

folders.forEach(function(folder){
    let fullPath = folderHome + folder;
    fs.readdirSync(fullPath).forEach(function(file) {
        console.log(file)
        if (file.substr(0,1) !== '.'){

            //need to get the SD from the output folder, as IG builder adds the snapshot
            

            let fullFileName = IGBuilderOutput + file;     //location of the fsh file
            console.log(fullFileName)
            try {
                let contents = fs.readFileSync(fullFileName, {encoding: 'utf8'}).toString();
                let resource = JSON.parse(contents)
                resource.fhirVersion = "4.0.0";     //todo my server is a slightly older version..
                let id = resource.id
            
                let url = serverRoot + resource.resourceType + "/" + id
                //console.log(url)
                PUTResource(url,resource)
            } catch (ex) {
                console.log(ex)
            }
        }

    })
})



function PUTResource(url,resource) {


    var options = {};
    options.headers = {"content-type": "application/json+fhir","Accept":"application/json+fhir"}
    options.timeout = 20000;        //20 seconds
    options.body = JSON.stringify(resource);
    //console.log(options);
    //return
    var response = syncRequest('PUT', url, options);
    console.log(response.statusCode)
    if (response.statusCode !== 200 && response.statusCode !== 201) {
        console.log('  error' + response.body.toString())
        return false
    } else {
        if (response.statusCode == 200) {
            console.log('Updated ' + url)
        } 
        
        if (response.statusCode == 201) {
            console.log('Created ' + url)
        }
       
        return true
    }
}