https://about.gitlab.com/install/#debian

```bash
sudo apt-get update && \
sudo apt-get install -y curl openssh-server ca-certificates perl && \
sudo apt-get install -y postfix && \
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash && \
sudo EXTERNAL_URL="https://gitlab.example.com" apt-get install gitlab-ce=16.9.1-ce.0
```
---

`sudo vim /etc/hosts`
```bash
127.0.0.1  gitlab.my.local
```

---

then `sudo vim /etc/gitlab/gitlab.rb`

and change `# letsencrypt['enable'] = nil` to `letsencrypt['enable'] = false`

and `extenal_url https://gitlab.example.com` to `external_url http://gitlab.my.local`

then
`gitlab-ctl reconfigure`

