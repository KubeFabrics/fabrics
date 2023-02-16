# Post installation directions

## Vault

### References
- https://www.hashicorp.com/blog/announcing-the-vault-helm-chart
- https://developer.hashicorp.com/vault/tutorials/operations/generate-root
- https://developer.hashicorp.com/vault/tutorials/kubernetes/kubernetes-sidecar



issue unseal for each key

kubectl exec -it vault-eval-0 -- vault operator generate-root -init
A One-Time-Password has been generated for you and is shown in the OTP field.
You will need this value to decode the resulting root token, so keep it safe.
Nonce         918b2afe-ce2e-59fa-42b1-20120018f2b5
Started       true
Progress      0/3
Complete      false
OTP           XXXXXXXXXXXXXXXXXXXXXXXXXXX
OTP Length    26


kubectl exec -it vault-eval-0 -- vault operator generate-root
Operation nonce: 918b2afe-ce2e-59fa-42b1-20120018f2b5
Unseal Key (will be hidden): 
Nonce            918b2afe-ce2e-59fa-42b1-20120018f2b5
Started          true
Progress         3/3
Complete         true
Encoded Token    F3lDBg8ZXWUGGC9PADYtXDwCYldQRDNYBl4

$ kubectl exec -it vault-eval-0 -- vault operator generate-root -decode=F3lDBg8ZXWUGGC9PADYtXDwCYldQRDNYBl4 -otp=dWvGJA701tBv3GJ6WE30d1a4d1
s.5AEXjU7lm93qgjkGQg4uRlbo


## KeyCloak


## Harbor


