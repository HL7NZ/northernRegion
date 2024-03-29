#!/usr/bin/env node

/**
 * Upload the all resources created by sushi to a server
 * Note that sushi must be executed with the -s switch to generate the snapshots
 **/

console.log("Uploading all generated resources")
let fs = require('fs');
let axios = require('../../scripts/node_modules/axios');

//where the resources will be uploaded to...
//let serverRoot = 'http://home.clinfhir.com:8054/baseR4/';  
let serverRoot = 'http://hapi.fhir.org/baseR4/';  


let folder = "../fsh-generated/resources/"

fs.readdirSync(folder).forEach(function(file) {
    //console.log(file)
    let fullFileName = folder + file;
    let contents = fs.readFileSync(fullFileName, {encoding: 'utf8'}).toString();

    let resource = JSON.parse(contents)
    if (resource.resourceType !== 'CapabilityStatement') {  //server won't let a CapabilityStatement be PUTted
       
        //put to the server with the given id
        //only needed for my server resource.fhirVersion = "4.0.0";     //todo my server is a slightly older version..
        let url = serverRoot + resource.resourceType + "/" + resource.id
        //console.log(url)
    
            axios.put(url,resource)
                .then(function (response){
                    console.log(response.status, url)
                    
                })
                .catch(function (err){
                    console.log(err.response.status,url,err.response.data)
                
                })
    
    
            //console.log(resource.id, resource.resourceType)
        
        

        } else {
            console.log (file + " missing id")
        }
   
})




