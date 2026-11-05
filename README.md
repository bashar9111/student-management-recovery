# Student Management - Source Recovery

**Status: incomplete recovery archive. This is not a working or deployed student records system.**

Recovered ASP.NET Web Forms / C# source pages from a university-project ZIP. This repository preserves the available implementation for review and future restoration.

## Recovered components
- Home, student entry, student list and student data pages
- Course entry and course-list pages
- College, staff and class-schedule pages
- Shared master page and a login-page shell

## Missing or unresolved
The original database, verified SQL schema and reliable local solution configuration were not recovered. Database-backed behavior has not been tested. Some pages retain the original educational layout and spelling. There is no complete authentication or authorization implementation.

## Privacy and cleanup
Original photos, database contents, IDE state and machine-specific solution files are excluded. The hardcoded demonstration login was removed; the login button now explains the recovery status. The database configuration points only to a named local demonstration database, not SQL Server's master database. No account credentials or student records are included.

## Review and restoration
Use Visual Studio's Open Web Site on this folder to inspect the source. .NET Framework 4.8 is the intended inspection target. Do not treat opening the source as proof that it compiles or runs.

Before running it: reconstruct and verify the schema from the parameterized insert queries and data-source markup; resolve page/code-file compatibility; implement real authentication and authorization; validate inputs; then test with fictional records only.

This is a university team-project recovery, not a newly built production system. The archive intentionally documents what remains unfinished.

## Preparation check
ASP.NET precompilation passed under .NET Framework 4.8. This verifies page/code compilation only; database operations and authentication are still incomplete and untested.
