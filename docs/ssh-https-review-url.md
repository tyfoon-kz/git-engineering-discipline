# SSH remote and HTTPS review URL

## SSH for work

For Git operations from my machine I use SSH:

```text
git@github.com:<username>/ecommerce-platform.git
```

SSH uses my key pair to authenticate. The private key stays on my machine and must not be copied into a document, chat, issue, pull request or Tyfoon answer.

## HTTPS for Tyfoon review

For Tyfoon I send the HTTPS repository URL:

```text
https://github.com/<username>/ecommerce-platform.git
```

This is the browser-friendly review address. It is not the secret that gives write access.

## Checks

```bash
git remote -v
ssh -T git@github.com
make check
git status --short
```

## SSH error report

```text
Command: git push -u origin homework-v3-04-03-ssh-remote-https-review
Where: student repository root
Error: Permission denied (publickey)
Checked: git remote -v shows git@github.com:<username>/ecommerce-platform.git
Next step: verify that the public SSH key is added to the correct GitHub account
```
