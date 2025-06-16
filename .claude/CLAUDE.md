# Claude Code Settings

## Code Style Guidelines

### File Formatting
- All files must end with a trailing newline (empty line at the end)
- This is required for RuboCop lint compliance

### Commands
- Lint: `bundle exec rubocop`
- Fix auto-correctable issues: `bundle exec rubocop -a`

## Pre-Push Requirements
- ALWAYS run `bundle exec rubocop` before pushing to GitHub
- If there are any lint errors, fix them with `bundle exec rubocop -a` or manually
- Only push after all lint errors are resolved

## Database Migration Guidelines
- NEVER delete migration files from db/migrate/ directory
- Migration files should remain in the repository to maintain database history
- If a migration needs to be modified, create a new migration instead of editing existing ones
- Use `rails db:migrate:status` to check migration status before making changes