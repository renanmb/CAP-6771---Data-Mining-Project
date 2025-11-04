# Happy Github with Quarto

Here are some notes and a cheatsheet on how to properly use Github with Quarto.

## Github Pages + Quarto

GitHub Pages is a website hosting service that enables you to publish content based on source code managed within a GitHub repository.

We will cover the steps necessary for properly setting up the project to publish a github page website using Quarto and Github Actions.

From the Quarto Documentation website: [GitHub Pages - Overview](https://quarto.org/docs/publishing/github-pages.html)

> [!IMPORTANT]
> Before configuring the publishing action, it’s important that you run **quarto publish gh-pages** locally, once. This will create the **_publish.yml** configuration required by the subsequent invocations of the GitHub Action. To do this, run the following from within your project:

This command will render and publish the website into a new branch and all left to do is configure the github pages and actions.

```bash
quarto publish gh-pages
```

### Source branch

Before attempting to publish you should ensure that the **Source branch** for your repository is **gh-pages** and that the site directory is set to the repository root (/). 

You can modify these options in **Settings : Pages** for your repository. For example, if you already have a **gh-pages** branch:

<!-- PROJECT Meme -->
<br />
<div align="center">
    <img src="images/gh-pages-user-site.png" alt="Logo" width="600">
</div>

If you do not already have a **gh-pages** branch, you can create one as follows. First, make sure you have committed all changes to your current working branch with **git status**. 

Then:

```bash
git checkout --orphan gh-pages
git reset --hard # make sure all changes are committed before running this!
git commit --allow-empty -m "Initialising gh-pages branch"
git push origin gh-pages
```

Double-check that the last **git push** action has indeed set the **Settings : Pages** for your repository as expected in the previous figure. Get back to your original repository branch with, for example, **git checkout main**.

### Ignoring Output Gitignore

It’s important to note that you don’t need to check your _site or _book directory into version control.

Before proceeding you should add the output directory of your project to .gitignore. For example:

```text
/.quarto/
/_site/
```

If you’ve already checked these files into source control you may need to remove them explicitly:

```bash
git rm -r _site
```

### Quarto Publish

Once you have configured the source branch and updated your **.gitignore**, navigate to the directory where your **project / git repository** is located, make sure you are not on the **gh-pages** branch, and execute the **quarto publish** command for GitHub Pages:

```bash
quarto publish gh-pages
```

The publish command will confirm that you want to publish, render your content, copy the output to a special **gh-pages** branch, push that branch to GitHub, and then open a browser to view your site once it is deployed.


## Connect to Github

Need to add more notes here on how to Connect

These explain how u can Connect Rstudio to a Github repo. 

[Chapter 9 - Personal access token for HTTPS](https://happygitwithr.com/https-pat)

[Chapter 10 - Set up keys for SSH](https://happygitwithr.com/ssh-keys)

[Chapter 11 - Connect to GitHub](https://happygitwithr.com/push-pull-github)

[Chapter 12 - Connect RStudio to Git and GitHub](https://happygitwithr.com/rstudio-git-github.html)


