<!-- capy:agents:begin -->
## Secrets (Capy)
This repo's secrets are managed by Capy.
- Run `capy help --json` for every command, its options, and its error codes.
- Always pass `--json` and branch on the `code` field, never on message text.
- Run `capy pair --json` in an interactive terminal/PTY. After browser approval, it asks "Enable this location as [email]?" before installing the session or keys. Show the returned email to the human and obtain explicit Yes/No approval before answering. Never automatically confirm or pipe `yes`; Enter defaults to No. No upfront email is required.
- Never print, log, or commit secret values.
- To set a value, pipe it from the command that produces it: `<cmd> | capy edit NAME --json`. Never put a value in a command argument, an `echo`, or a heredoc — it would land in your context and the shell history.
<!-- capy:agents:end -->
