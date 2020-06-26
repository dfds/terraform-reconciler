## Prerequisites
[Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html#install-terraform)

## Goal 

Put desired state in s3
Terraform picks up and reconciles desired state

### Input

Name:

## Goal 2 
Get output back

// Pretend to raise event 
On success 
On Error


## Flow
1. Store a desired state to s3
1. Terraform reconciles the desired state
1. The result is stored in a different s3 bucket
1. Raise event if success
1. Raise event if failed


Desired state
Actual state
'
## Problems

How do we get Terraform to pick up a desired state from s3. 

Do we have to have a state per resource.
- Make a diff on the input file 


We need a data resource for a s3 object.



## Notes
You can see the stat of a plan

Instance id. 

Skriver tilbage i staten på Terreform

Input to Terroform is the desired state (configuration) 
Plan output is a diff.


We want 2 processes:
1. You upload a desired state (config) to s3 and command Terreform to make it happen
1. A service keeps looping over all our s3 files and ensures that the desired state is true.


## Questions
What resources is there and will Terreform be able to create

Is Terreform cloud the solution to our desire?

Can Terreform cloud help keep configured resources alive.


You can upload a file directly to Terraform.

We need Terragrunt to make s3 key for state variable

How do we trigger single file?


Where should desired and actual state live?
In a central master account (could be oxygen)
Or en each capability account?
What are the pros and cons related the 2 models?

Could we define a worker that can look up recipes on different desired state. 
Say you desire a erc repository then the worker will look up how to make a ECR repository and execute the recipe.
