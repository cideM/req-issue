# req-issue

```shell
$ nix-build
$ ./result/bin/foo
foo: VanillaHttpException (HttpExceptionRequest Request {
  host                 = "www.googleapis.com"
  port                 = 443
  secure               = True
  requestHeaders       = [("Accept","application/json")]
  path                 = "/robot/v1/metadata/x509/securetoken@system.gserviceaccount.com"
  queryString          = ""
  method               = "GET"
  proxy                = Nothing
  rawBody              = False
  redirectCount        = 10
  responseTimeout      = ResponseTimeoutDefault
  requestVersion       = HTTP/1.1
}
 ConnectionTimeout)

```

vs. `curl https://www.googleapis.com/robot/v1/metadata/x509/securetoken@system.gserviceaccount.com` which just works
