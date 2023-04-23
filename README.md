# cookiecutter-python

## PyPI
- Create token scoped for "Entire account"

## Github Settings
- General -> Features
    - Disable "Wikis"
    - Disable "Projects"
- General -> Pull Requests
    - Disable "Allow squash merging"
    - Disable "Allow rebase merging"
    - Enable "Allow auto-merge"
    - Enable "Automatically delete head branches"
- Branches -> Add branch-protection-rule
    - Enable "Require a pull request before merging"
    - Enable "Require status checks to pass before merging"
    - Enable "Require branches to be up to date before merging"
    - Enable "Require conversation resolution before merging"
    - Enable "Do not allow bypassing the above settings"
- Pages
    - Source: "Deploy from a branch"
    - Branch: "main"
    - Click "Save"
- Secrets and variables -> Actions
    - Repository secrets
        - Add "PYPI_TOKEN"

## First release
```text
git clone git@github.com:betaboon/repository.git
cookiecutter -f gh:betaboon/cookiecutter-python
cd repository
git checkout -b boilerplate
git add -A
git commit -m "feat: setup project"
git push -u origin boilerplate
```
Create PR and merge

## After first release
- Create a new pypi token, this time scoped for the project
- In GitHub
    - Branches -> main
        - in "Require branches to be up to date before merging" add "passed"
    - Secrets and variables -> Actions
        - Repository secrets
            - Change "PYPI_TOKEN"
