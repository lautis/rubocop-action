# Rubocop Action

**Deprecated: rubocop 1.2.0 supports annotation with `rubocop --format github`**

Lint your Ruby code in GitHub Actions. Can use bundled Rubocop and custom gems or even JSON results as input.

![](screenshots/annotations.png)

## Usage

Add the following step to your GitHub actions workflow:

```yaml
- name: Rubocop Linter
  uses: lautis/rubocop-action@v2.0.2
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

If you want to use JSON produced by Rubocop as input, give the path to the file as a parameter to the build.

```yaml
- run: rubocop -f json > rubocop.json || true
- uses: lautis/rubocop-action@v2.0.2
  with:
    results: "rubocop.json"
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

This can be helpful if your Gemfile needs to be installed on specific Ruby version or there are native dependencies that cannot be compiled in the action.
