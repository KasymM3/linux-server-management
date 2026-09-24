# Development Workflow

## Main Branch

The `main` branch contains stable and reviewed versions of the project.

Developers should not implement new features directly in `main`.

## Feature Development

Create a new branch from the latest version of `main`.

Example:

git switch main
git pull origin main
git switch -c feature/example

## Commit

Changes should use descriptive commit messages.

Examples:

feat: add disk monitoring script

fix: correct disk threshold condition

docs: update troubleshooting guide

test: add script validation

## Pull Request

Every feature is submitted through a Pull Request.

The Pull Request should explain:

- what was changed
- why it was changed
- how it was tested

## Review

Changes should be reviewed before they are merged into `main`.

## Merge

Approved and tested changes can be merged into the stable branch.