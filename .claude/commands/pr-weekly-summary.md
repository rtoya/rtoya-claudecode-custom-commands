# PR Weekly Summary Command

This command generates a weekly aggregated summary of pull requests created by the currently authenticated GitHub user over the past 2 months.

## Usage

```
Generate weekly PR summary for the current user over the past 2 months
```

## What it does

1. Gets the current authenticated GitHub user using `gh api user`
2. Searches GitHub for pull requests created by the current user over the past 2 months
3. Aggregates the results by week
4. Creates a CSV file with the following columns:
   - Week Start
   - Week End  
   - PR Count
   - Merged (count)
   - Closed (count)
   - Open (count)

## Example

Input: `過去2ヶ月分のプルリクを週次で集計してください。`

Output: Creates a CSV file `{current_user}_pr_weekly_summary.csv` in the current directory with weekly aggregated data.

## Implementation Steps

1. Get current authenticated GitHub user
2. Search GitHub PRs for the current user over 2 months
3. Parse and aggregate results by week
4. Create CSV file with structured data
5. Display the final CSV content

## Notes

- Requires GitHub CLI (gh) to be installed and authenticated
- Search covers approximately 8-10 weeks depending on the current date
- CSV format is suitable for further analysis in spreadsheet applications
