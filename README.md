# AYNetworking #

AYNetworking is a set of category with API methods to make it easier to handle requests and response with [AFNetworking](https://github.com/AFNetworking/AFNetworking) Framework.

AYNetworking extent [AFHTTPClient](http://cocoadocs.org/docsets/AFNetworking/1.3.1/Classes/AFHTTPClient.html) and [AFHTTPRequestOperation](http://cocoadocs.org/docsets/AFNetworking/1.3.1/Classes/AFHTTPRequestOperation.html) API of the [AFNetworking](https://github.com/AFNetworking/AFNetworking) Framework.

Inspired by [LRResty](https://github.com/lukeredpath/LRResty)

## Quick introduction ##

### Install with CocoaPods ###

You can simple install AYNetworking in your Xcode-project with [CocoaPods](http://cocoapods.org). Writing the commands below in to the Podfile. This will automatically install [AFNetworking](https://github.com/AFNetworking/AFNetworking) as dependency.

    platform :ios, '5.0'
    
    pod 'AYNetworking', '= 1.3.0'

### Import ###

When you will use the AYNetworking Framework in your code you can just add the import command below. This will import [AFNetworking](https://github.com/AFNetworking/AFNetworking) for you too.

    #import <AYNetworking/AYNetworking.h>

### Client ###

First you need a [AFHTTPClient](http://cocoadocs.org/docsets/AFNetworking/1.3.1/Classes/AFHTTPClient.html) class based client.

    AFHTTPClient *client = [AFHTTPClient clientWithBaseURL:[NSURL URLWithString:@"http://base.url"]];

### Block API ###

To send a request with blocks you can just use the code below.

    [client get:@"resource"
             success:^(AFHTTPRequestOperation *operation, id response) {
                 // handle the response...
             }
             failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                 // handle the error...
             }
    ];

The same for:
 **post**, **delete**, **patch** and **put**.

if your request need parameters or headers you can call it like below:

    [client get:@"resource" parameters:@{@"": @""} headers:@{@"": @""}
             success:^(AFHTTPRequestOperation *operation, id response) {
                 // handle the response...
             }
             failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                 // handle the error...
             }
    ];

If you want modify the AFHTTPRequestOperation before the operation start to send the request you can use the code below.
	
    [client willStartRequestOperation:^(AFHTTPRequestOperation *operation) {
        // modify the AFHTTPRequestOperation...
    }];


### Delegate API ###

To send a request with delegate you can just use the code below.

    [client get:@"resource" delegate:self];

The delegate protocol methods to handle the response.

    - (void)client:(AFHTTPClient *)client requestOperation:(AFHTTPRequestOperation *)operation didSuccessfulWithObject:(id)response
    {
        // handle the response...
    }
    
    - (void)client:(AFHTTPClient *)client requestOperation:(AFHTTPRequestOperation *)operation didFailWithError:(NSError *)error
    {
         // handle the error...
    }

### Synchronous API ###

synchronous send request and handle response looks like below.

    AFHTTPRequestOperation *operation = [client get:@"resource"];
    
    if (operation.isSuccess){
        // handle the response...
        // operation.responseObject;
    }
    
    if (operation.isFailure) {
        // handle the error...
        // operation.error;
    }

## ToDo's ##

✓ Block API  
✓ Delegate API  
✓ Synchronous API  
✗ Documentation  
✗ UnitTest & Continuous Integration Build