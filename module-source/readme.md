# Documentation about the module source code.

## Inputs:
- ami_id (Optional): This is an optional field while calling the module. If required we can provide the new value otherwise default value will be taken.
- instance_type (Optional): This is an optional field while calling the module. If required we can provide the new value otherwise default value will be taken.
- instance_tags (Optional): This is an optional field while calling the module. If required we can provide the new value otherwise default value will be taken.

## Outputs:
- private_ip: Output the private ip of the instance created.
- public_ip: Output the public ip of the instance created.
- instance_id: Output the instance id of the instance created.
