# Rebase Sample

This is a sample project for demonstrating how to use git rebase. On master, there's a view controller with two views that alternate colors. On a branch named add-cat-button there are some other changes that add a button that, when tapped, shows a cat picture.

The workflow for demonstrating this is:

- Show that commit with message "Make imageView's content mode scaleAspectFit." is out of order.
- Show that commit with message "Add button and imageView." should be split into two commits.
- Show that commit with message "Add cat pic getter." should be merged with the commit that introduces the button *or* before it.

Perform an interactive rebase:

- Move "Make imageView's content mode scaleAspectFit." to the end by reordering commits.
- Split "Add button and imageView." into to commits using the `edit` option.
- Merge "Add cat pic getter." with the commit that introduces the button using the `fixup` option.

Rebase and merge with master:

- Resolve conflicts along the way, there are a few.
- Merge into master `using --no-ff`

In the end you should have a pulsating background view with a cat pic button that shows a cat when tapped.

![](http://cl.ly/image/3P0O1x3k1j3U/gif.gif)

To reset state for this example reset add-cat-button back to add-cat-button-pristine and reset master back to master-pristine.