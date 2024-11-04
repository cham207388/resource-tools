# Managing Releases

Releases are instances of charts running in a Kubernetes cluster.

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `helm get all <release-name>` | Download all information for a named release | `helm get all my-nginx` |
| `helm get manifest <release-name>` | Download the Kubernetes manifest for a named release | `helm get manifest my-nginx` |
| `helm get values <release-name>` | Download the values file for a named release | `helm get values my-nginx` |
| `helm get hooks <release-name>` | Download the hooks for a named release | `helm get hooks my-nginx` |
| `helm get notes <release-name>` | Download the notes for a named release | `helm get notes my-nginx` |
