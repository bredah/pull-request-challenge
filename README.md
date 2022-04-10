# PR Challeng

This project presents a simple solution for validating standards and good
practices, as well as validations in a pull request for GitHub (Actions).

## Inpection

This solution using GitHub Actions to validate a pull request (new, reopened or
edited), this mechanism performs the following assessments:

- validate the contents of the `Pull Request` body
  - If not contains the words: "please", "appreciate", "would be great", failed
  the PR and skip the linting.
- run the linting
  - if not respecting standard code formatter or best practices, this step
  would fail

### Pull Request

Here are some examples of validations in action:

- PR without expected word in the body: [link]() - [pull request](https://github.com/bredah/pull-request-challenge/runs/5964172514)
- PR with expected word in the body: [link]() - [pull request](https://github.com/bredah/pull-request-challenge/runs/5964417143)

#### GitHub Actions (hook)

In the `.github/workflows/pull_request.yml` you will find the hook to be
executed after a `PULL REQUEST`.

With each new PR, the code quality inspection will be performed automatically
via Actions. This process was configured by default in the project, for this
you will need:

- Access the project settings
- On side menu, select the `Branch` option
- Select the `Add new rule` option
- Fill the `Branch name pattern` field with the value: "main"
- Select the option `Require status checks to pass before merging` and then
  fill in the field with the value `inspection`
- Select the `Create` option which is located at the bottom of the page

#### Pull Request Template

In the `.github/pull_request_template.md` contains a template used when a
developer open a new PR, it will be filled in automatically, providing the
basic information ans structure, so the developer must modify and fill in the
remaining information to the PR.

### External Libraries

- [pre-commit](https://pre-commit.com): used to validate best practices on
  developed code, after adding a file in the commit, run the `make Inspection`
  command to run lint locally.
