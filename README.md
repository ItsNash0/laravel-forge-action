# Laravel Forge GitHub Action

Deploy your application to [Laravel Forge](https://forge.laravel.com) with GitHub Actions.

### `site_label`

A Label so you can keep track of which trigger_url corresponds to what site.

### `trigger_url`

When using the trigger url to deploy your application, this field is required. You can find this within your site's detail panel in Forge.

## Examples

### Deploy via Deployment Trigger URL

```yml
name: 'Deploy on push'

on:
  push:
    branches:
      - master

jobs:
  forge-deploy:
    name: 'Laravel Forge Deploy'
    runs-on: ubuntu-latest

    steps:
      # Trigger Laravel Forge Deploy
      - name: Deploy
        uses: ItsNash0/laravel-forge-action@v1.0.2
        with:
          site_label: ${{ secrets.SITE_LABEL }}
          trigger_url: ${{ secrets.TRIGGER_URL }}
```
