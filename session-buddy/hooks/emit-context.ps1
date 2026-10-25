# Session Buddy: SessionStart hook emitter.
# Prints the strict hook-output JSON ZCode expects; the text below is the
# convention injected into every new/resumed session. Edit freely, keep the
# JSON shape {"additionalContext":"..."} and keep this file ASCII-safe or
# save it as UTF-8 (output encoding below handles both).
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
Write-Output '{"additionalContext":"[session-buddy] Workspace tidiness convention is ACTIVE. When this conversation creates file deliverables for the user (reports, generated documents, data exports, demo pages, one-off scripts), place them under buddy/YYYY-MM-DD-short-topic/ in the workspace root, never loose in the root. Reuse one folder for the whole conversation and name it in the user language. Write a short README.md inside each session folder and keep buddy/INDEX.md updated. Do not move or reorganize existing user files; edits to project source files stay in place; paths the user specifies always win. Load the session-buddy skill for full rules whenever you start creating files."}'
