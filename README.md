# Blog

The blog is created using hugo v0.111.2. To be able to deploy, the public folder is pushed to the github pages repo, [github pages repo](https://github.com/viciouslabs/viciouslabs.github.io).

### Live URL
[nononsense.pro](https://www.nononsense.pro/)

### Creating A Post
```
hugo new --kind post <name>
```

### Theme
[Hugo PaperMod](https://themes.gohugo.io/themes/hugo-papermod/)

### Automatic Deployment
The deployment is automated. Every push to the `main` branch, triggers a github action workflow. <br />
**Secrets:** For managing permissions of the github pages repo, the token, `BLOG_TOKEN` is provided in the repository secrets.
