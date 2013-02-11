# AYNetworking #

AYNetworking is a small extension for the [AFNetworking](https://github.com/AFNetworking/AFNetworking) Framework. It make to send request with AFNetworking simpler.

Inspirited be [LRResty](https://github.com/lukeredpath/LRResty)

To send a request you can just use the code below. No start or similar needed!
	
	// send request
    [self.client get:@"contact" parameters:nil headers:nil
             success:^(AFHTTPRequestOperation *operation, id response) {
                 // handle the response...
             }
             failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                 // handle the error…
             }
    ];

The same for post, delete, patch and put.

If you want modify the AFHTTPRequestOperation before it start the operation to send the request you can use the code below.
	
    [self.client willStartRequestOperation:^(AFHTTPRequestOperation *operation) {
        // modify the AFHTTPRequestOperation…
    }];

Documentation is coming soon!

## DONE ##

- Block API

## TODO ##

- Delegate API
- Synchronous API
