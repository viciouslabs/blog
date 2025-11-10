---
title: "Multiple Personality Disorder"
date: 2020-09-15T11:30:03+00:00
# weight: 30
# aliases: ["/first"]
tags: ["productivity"]
author: ""
# author: ["Me", "You"] # multiple authors
showToc: false
TocOpen: false
draft: false
hidemeta: false
comments: true
description: ""
canonicalURL: "https://canonical.url/to/page"
disableShare: false
disableHLJS: false # to disable highlightjs
hideSummary: true
searchHidden: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
ShowWordCount: false
ShowRssButtonInSectionTermList: true
UseHugoToc: true
cover:
    image: "<image path/url>" # image path/url
    alt: "<alt text>" # alt text
    caption: "<text>" # display caption under cover
    relative: false # when using page bundles set this to true
    hidden: true # only hide on current single page
editPost:
    URL: "https://github.com/viciouslabs/blog/blob/main/content"
    Text: "Suggest Changes" # edit text
    appendFilePath: true # to append file path to Edit link
---
You might be an employee on the weekdays, and a curious warrior on the weekends. Usually we're all set to work professionally as an employee. When you're working with tools professionally, you'll face a situation where you'll need to switch identities seemlessly.

### Get More Done with Low Friction Setups
Remember that side project you wanted to work on, getting started with it, and never finding time to start? But everytime you'd start, you notice that your IDEs and other tools need a little setting up to get started.

This is what i'm calling friction, and it is enough to deter you. And in no time you'll end up on the social media website you've been spending most of your free time on.

### Setting Up Tools

**IDE Workspaces**
As developers we're very familiar with IDEs. All IDEs these days support workspaces. A workspace is nothing but a bookmarked state of IDE settings. Mostly these settings or open projects allow you to focus on a single type of work at a time. Imagine having two workspaces, professional and personal. It will be super easy to switch between the two. And you'll spend almost no time getting started to contribute.

**Git Identities**
You have a separate Github or Gitlab accounts for professional and personal use, don't you? How frustrating is it to accidentally commit to the professional repository, and realise that you committed with your personal identity. Yikes.

Simply having multiple `.gitconfig`s can solve this for you. This is what your new `.gitconfig` will look like.
```
[includeif "gitdir:~/professional/"]
    path = ~/professional/.gitconfig

[includeif "gitdir:~/personal/"]
    path = ~/personal/.gitconfig
```

And your professional and personal `.gitconfig` files look like:
`~/professional/.gitconfig`
```
[user]
email = firstname.lastname@youremployer.com
name = First Name

[github]
user = professional_handle
```
`~/personal/.gitconfig`
```
[user]
email = personal.email@gmail.com
name = Nonsense Alias

[github]
user = personal_handle
```

May be let's also talk about using SSH keys for github. For this, this is what your `~/.ssh/config` file should look like.
```
# for personal repos
Host github.com-personal
   HostName github.com
   PreferredAuthentications publickey
   IdentityFile ~/.ssh/id_rsa_personal

# for work related repos
Host github.com
   HostName github.com
   PreferredAuthentications publickey
   IdentityFile ~/.ssh/id_rsa
```

Now, just make sure that the remote for the personal repos are:
```
git@github.com-personal:<github-account>/<repository>.git
```
instead of:
```
git@github.com:<github-account>/<repository>.git
```

Well I believe you got the point. Just setup your workspaces and tool well enough that they'll be ready for you to begin working in no-time. Happy switching contexts.

