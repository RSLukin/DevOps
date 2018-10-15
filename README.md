# DevOps

This terraform code does the following:
1)Connects to Azure subscription using the credentials from azureprovider.tf
2)Creates all required resources for VM such as: resource group and networking
3)Creates VM

Variables:

1)prefix
The Prefix used for all resources in this task
 
2)location
The Azure Region in which the resources in this task should exist

3)sshkey
The ssh key of the user (~/.ssh/id_rsa.pub)

4)custom_data
(Optional) Specifies custom data to supply to the machine. On Linux-based systems, this can be used as a cloud-init script. On other systems, this will be copied as a file on disk. Internally, Terraform will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes."

5)tags
Any tags which should be assigned to the resources in this task

