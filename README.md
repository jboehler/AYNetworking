# AYNetworking #

AYNetworking is a set of category with API methods to make it easier to handle requests and response with [AFNetworking](https://github.com/AFNetworking/AFNetworking) Framework.

AYNetworking extent AFHTTPClient and AFHTTPRequestOperation API of the [AFNetworking](https://github.com/AFNetworking/AFNetworking) Framework.

Inspirited by [LRResty](https://github.com/lukeredpath/LRResty)

## Block API ##

To send a request with blocks you can just use the code below.
	
    [client get:@"contact" parameters:nil headers:nil
             success:^(AFHTTPRequestOperation *operation, id response) {
                 // handle the response...
             }
             failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                 // handle the error...
             }
    ];

or cleaner

    [client get:@"contact"
             success:^(AFHTTPRequestOperation *operation, id response) {
                 // handle the response...
             }
             failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                 // handle the error...
             }
    ];

The same for post, delete, patch and put.

If you want modify the AFHTTPRequestOperation before the operation start to send the request you can use the code below.
	
    [client willStartRequestOperation:^(AFHTTPRequestOperation *operation) {
        // modify the AFHTTPRequestOperation...
    }];


## Delegate API ##

To send a request with delegate you can just use the code below.

    [client get:@"contact" parameters:nil headers:nil delegate:self];

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

    AFHTTPRequestOperation *operation = [client get:@"contact"];
    
    if (operation.isFailure) {
        // handle the response...
        // operation.responseData;
    }
    if (operation.isSuccess){
        // handle the error...
        // operation.error;
    }

## Issues ##

✓ Block API  
✓ Delegate API  
✗ Synchronous API  (TODO: operation.responseObject)  
✗ Documentation
