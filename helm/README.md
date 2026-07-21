# Dated Helm chart example

This chart models the Python and Redis application in this repository as it
looked on 15 March 2022. The Redis image is deliberately pinned to the old
`6.2.6-alpine` tag so dependency-remediation tools have a stable example to
detect and update.

Render the chart locally with:

```sh
helm template example ./helm
```

