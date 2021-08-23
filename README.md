# Create a Link Using the href Attribute

## Learning Goals

- Write an `a` tag to create a link

## Introduction

We've got our HTML tags, and we've got our HTML tag attributes. How do we use
them together? We can figure it out by exploring the `a` tag and creating a
link.

## Getting Started

Fork and clone this lesson into your local environment. Navigate into its
directory in the terminal, then run `code .` to open the files in Visual Studio
Code. Finally, run `bundle` to install the lab's dependencies.

## Write an `a` Tag to Create a Link

Open `index.html` in your text editor. Add an `a` tag with the inner text (the
text between the `<a>` tag and the `</a>` tag) of `Flatiron School` anywhere in
the file. Then set the `href` attribute of your new link element to
`https://flatironschool.com`.

You can run the tests with this lab via the `rspec` command. Make sure you save
the file before running the test suite. Failing tests will provide helpful error
messages that you can use to debug your code — read them closely for hints!

### Viewing Your Work in the Browser

While working through these assignments, your general workflow should center on
writing code in the text editor and checking to see what it looks like
in-browser.

Working in your local environment, you can open `index.html` a few ways,
depending on the environment you are in:

For Mac users:

- Open from the Terminal by running `open index.html` in the root directory
  of this lab
- Use Finder to navigate to this lab's local folder and click the `index.html`
  file

For WSL users:

- Open from Ubuntu by running `explorer.exe index.html` in the root directory of
  this lab
- Open a new Explorer window. There is a bar that says "Quick Access" along the
  top of the window (similar to a URL bar in a browser). Click this and type
  `\\wsl$` to access files and folders on Ubuntu. Navigate to
  `/home/<your-user-name>/` to get to your home directory, then locate this
  lab's local folder and click the `index.html` file.

Once you have the HTML document open in your browser, you can make changes to it
in a text editor, save the file, refresh the page in the browser, and see the
changes.

## Saving Your Work Remotely

Currently, the work you've done on this assignment is only on your local
machine. To preserve work on your GitHub fork, you will need to stage the
changes you've made, commit them, and push the commit up to GitHub. Use the
following commands to do this:

```console
$ git add .
$ git commit -m "Completed assignment"
$ git push
```

If you visit your fork on GitHub, you should now see that _you've_ made the most
recent commit, and your solution will be present in the files.

## Conclusion

Here we saw how an attribute helps the `a` tag do its job, which is to link to
another location. Now we can go on to explore some additional HTML tags.

## Resources

- [Mozilla Developer Network: HTML `<a>` Tag](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a)
