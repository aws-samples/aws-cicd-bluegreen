Welcome to the AWS CodeStar sample web application
==================================================

This sample code helps get you started with a simple Node.js web application
deployed by AWS CodeDeploy and AWS CloudFormation to an Amazon EC2 instance.

What's Here
-----------

This sample includes:

* README.md - this file
* app.js - this file contains the code for your application
* appspec.yml - this file is used by AWS CodeDeploy when deploying the web
  application to EC2
* package.json - this file contains various metadata relevant to your Node.js
  application such as dependencies
* public/ - this directory contains static web assets used by your application
* scripts/ - this directory contains scripts used by AWS CodeDeploy when
  installing and deploying your application on the Amazon EC2 instance
* tests/ - this directory contains unit tests for your application
* template.yml - this file contains the description of AWS resources used by AWS
  CloudFormation to deploy your infrastructure


Getting Started
---------------

These directions assume you want to develop on your local computer, and not
from the Amazon EC2 instance itself. If you're on the Amazon EC2 instance, the
virtual environment is already set up for you, and you can start working on the
code.

To work on the sample code, you'll need to clone your project's repository to your
local computer. If you haven't, do that first. You can find instructions in the
AWS CodeStar user guide.

1. Install Node.js on your computer.  For details on available installers visit
   https://nodejs.org/en/download/.

2. Install NPM dependencies:

        $ npm install

2. Start the development server:

        $ node app.js

3. Open http://127.0.0.1:3000/ in a web browser to view your application.

What Do I Do Next?
------------------

Once you have a virtual environment running, you can start making changes to
the sample Node.js web application. We suggest making a small change to
/public/index.html first, so you can see how changes pushed to your project's
repository are automatically picked up by your project pipeline and deployed to
the Amazon EC2 instance. (You can watch the progress on your project dashboard.)
Once you've seen how that works, start developing your own code, and have fun!

To run your tests locally, go to the root directory of the
sample code and run the `npm test` command, which
AWS CodeBuild also runs through your `buildspec.yml` file.

To test your new code during the release process, modify the existing tests or
add tests to the tests directory. AWS CodeBuild will run the tests during the
build stage of your project pipeline. You can find the test results
in the AWS CodeBuild console.

Learn more about AWS CodeBuild and how it builds and tests your application here:
https://docs.aws.amazon.com/codebuild/latest/userguide/concepts.html

Learn more about AWS CodeStar by reading the user guide.  Ask questions or make
suggestions on our forum.

User Guide: http://docs.aws.amazon.com/codestar/latest/userguide/welcome.html

Forum: https://forums.aws.amazon.com/forum.jspa?forumID=248

How Do I Add Template Resources to My Project?
------------------

To add AWS resources to your project, you'll need to edit the `template.yml`
file in your project's repository. You may also need to modify permissions for
your project's worker roles. After you push the template change, AWS CodeStar
and AWS CloudFormation provision the resources for you.

See the AWS CodeStar user guide for instructions to modify your template:
https://docs.aws.amazon.com/codestar/latest/userguide/how-to-change-project#customize-project-template.html

What Should I Do Before Running My Project in Production?
------------------

AWS recommends you review the security best practices recommended by the framework
author of your selected sample application before running it in production. You
should also regularly review and apply any available patches or associated security
advisories for dependencies used within your application.

Best Practices: https://docs.aws.amazon.com/codestar/latest/userguide/best-practices.html?icmpid=docs_acs_rm_sec
