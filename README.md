# AYNetworking #

AYNetworking is a set of category with API methods to make it easier to handle requests and response with [AFNetworking](https://github.com/AFNetworking/AFNetworking) Framework.

AYNetworking extent AFHTTPClient and AFHTTPRequestOperation API of the [AFNetworking](https://github.com/AFNetworking/AFNetworking) Framework.

Inspirited by [LRResty](https://github.com/lukeredpath/LRResty)

## Block API ##

To send a request with blocks you can just use the code below.

    [client get:@"contact"
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

    [client get:@"contact" parameters:@{@"": @""} headers:@{@"": @""}
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


## Delegate API ##

To send a request with delegate you can just use the code below.

    [client get:@"contact" delegate:self];

The delegate protocol methods to handle the response.

    - (void)client:(AFHTTPClient *)client requestOperation:(AFHTTPRequestOperation *)operation didSuccessfulWithObject:(id)response
    {
        // handle the response...
    }
    
    - (void)client:(AFHTTPClient *)client requestOperation:(AFHTTPRequestOperation *)operation didFailWithError:(NSError *)error
    {
         // handle the error...
    }

## Synchronous API ##

synchronous send request and handle response looks like below.

    AFHTTPRequestOperation *operation = [client get:@"contact"];
    
    if (operation.isSuccess){
        // handle the response...
        // operation.responseObject;
    }
    
    if (operation.isFailure) {
        // handle the error...
        // operation.error;
    }

## Issues ##

✓ Block API  
✓ Delegate API  
✓ Synchronous API  
✗ Documentation
