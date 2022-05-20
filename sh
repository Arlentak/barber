curl -H "Content-Type: application/json" -H "x-auth-token: dGgs0EWC_SYh-txP_DzaDlYCKY0zfUQNuEyDYfet84A" --data '{"appId": "6287eae8d441380375b74933","workflowId": "hello-world","branch": "main"}' https://api.codemagic.io/builds
sleep 2s
curl -H "Content-Type: application/json" -H "x-auth-token: bfdzqP-4Q1PESCkPbYUNp80cVRhgG0YYr2K7Smjg-LM" --data '{"appId": "6287f1add44138797f284fbb","workflowId": "hello-world","branch": "main"}' https://api.codemagic.io/builds
sleep 2s
