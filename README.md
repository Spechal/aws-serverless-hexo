
This repository is the demonstration content for [making Hexo Serverless](https://traviscrowder.com/aws/serverless/hexo/).

# Usage

* Checkout this repository
* Go into the `terraform` directory and modify `variables.tf`
* Adjust `bucket_name` to a globally unique name
* Run `terraform init` and then `terraform apply`
* Go into the `website` directory and run `npm install`
* Write some content per the [Hexo Docs](https://hexo.io/docs/)
* Run `deploy.sh`  (optionally including your AWS profile name)
* Visit the URL output
* 99 Write some more content and run `deploy.sh`
* GOTO 99

# License
Copyright 2019 Travis Crowder

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

