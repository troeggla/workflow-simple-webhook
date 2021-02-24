# Simple Workflow Webhook Action

A simple workflow action to call a POST endpoint via `curl`. Optionally accepts
username and password for HTTP basic authentication.

## Usage

```yml
    - name: Invoke deployment hook
      uses: troeggla/workflow-simple-webhook@v1
      env:
        webhook_url: ${{ secrets.WEBHOOK_URL }}
```

## Arguments

```yml
  webhook_url: "https://some.webhook.url"
```

*Required* The HTTP URI of the webhook endpoint to call. The endpoint must be
able to accept a HTTP POST request.

```yml
  webhook_auth: "username:password"
```

*Optional* Credentials to be used for BASIC authentication against the
endpoint. Should take the shape `username:password`.
