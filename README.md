# Blog

### Live URL
[nononsense.pro](https://www.nononsense.pro/)

### Github Repo for Github Pages
[github pages repo](https://github.com/viciouslabs/viciouslabs.github.io)

### Theme
[Hugo PaperMod](https://themes.gohugo.io/themes/hugo-papermod/)

### Setup

#### Git Submodules
The submodules power up the following folders:

- themes/papermod: Hugo PaperMod theme
- public: The Github pages repo

### Development

#### Install Hugo
Make sure you have [Hugo](https://gohugo.io/getting-started/installing/) installed.

Last tested with version:
```
hugo v0.152.2+extended+withdeploy darwin/arm64 BuildDate=2025-10-24T15:31:49Z VendorInfo=brew
```

#### Git Submodules
Use the `.gitmodules_local` file as `.gitmodules` file as a prerequisite.
Checkout the blogpost about multiple git configs for more details: [Managing Multiple Git Configurations](https://nononsense.pro/posts/multiple-personality-disorder/)

Make sure to initialize and update the git submodules:
```
git submodule update --init --recursive
```

#### Run Locally
To run the site locally, use the command:
```
hugo server -D
```

### Creating A Post
```
hugo new posts/<post-title>.md
```

### Automatic Deployment
The deployment is automated. Every push to the `main` branch, triggers a github action workflow. <br />
**Secrets:** For managing permissions of the github pages repo, the token, `BLOG_TOKEN` is provided in the repository secrets.
