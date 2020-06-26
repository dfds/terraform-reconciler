## Goal

Config Terrefrom via API?
Post to REST 

### Input

Name: 
Account: 

## Goal 2 
Get output back

200/400 on your command

## Flow
1. POst to REST
1. Terreform does the execution
1. Return 200


Desired state
Actual state
'
## Problems

How do we get Terreform to pick up a desired state from s3. 

Do we have to have a state per resource.
- Make a diff on the input file 

Trigger:


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