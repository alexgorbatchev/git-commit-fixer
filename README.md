# git-commit-fixer

A tool to rewrite GIT commit messages for the entire history of a repository using OpenAI and [git-filter-repo](https://htmlpreview.github.io/?https://github.com/newren/git-filter-repo/blob/docs/html/git-filter-repo.html).
This is useful for fixing up commits if you have been rapidly prototyping something and want to clean up the commit history.

## Usage

Ensure there's `OPENAI_API_KEY` in your environment.

```bash
# Install dependencies
$ ./setup.sh

# Run the tool
$ ./run.sh
```

## Development

