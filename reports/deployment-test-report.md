\# Deployment Pipeline and Branch Strategy Test Report



\## Project Summary



This project tested a simulated deployment pipeline from a sysadmin operations perspective. The lab used Git branches, PowerShell deployment scripts, and separate environment folders to represent dev, staging, and production.



\## Branch Strategy Tested



| Branch | Environment | Purpose |

|---|---|---|

| feature/update-version | Feature work | Simulated a developer change |

| develop | Dev | Internal testing environment |

| staging | Staging | Pre-production validation |

| master | Production | Production release branch |



\## Deployment Flow



feature/update-version → develop → staging → master



\## Deployment Scripts Used



| Script | Environment | Purpose |

|---|---|---|

| scripts/deploy-dev.ps1 | Dev | Copies app file into dev environment and performs health check |

| scripts/deploy-staging.ps1 | Staging | Copies app file into staging environment and performs health check |

| scripts/deploy-prod.ps1 | Production | Copies app file into prod environment and performs health check |



\## Tests Performed



\### Dev Deployment Test



Result: Passed



The feature branch was merged into develop and deployed to the dev environment. The dev environment showed version 1.1.0.



\### Staging Deployment Test



Result: Passed



The develop branch was promoted into staging and deployed to the staging environment. The staging environment showed version 1.1.0.



\### Production Deployment Test



Result: Passed



The staging branch was promoted into master and deployed to the production environment. The production environment showed version 1.1.0.



\### Rollback Test



Result: Passed



A bad release was created with version 2.0.0 - BAD RELEASE. The bad release was merged into develop and deployed to dev. The issue was then rolled back before promotion to staging or production.



\## Health Check Method



Each deployment script verified that the correct index.html file existed in the target environment folder after deployment.



\## Sysadmin Skills Demonstrated



\- Branch strategy awareness

\- Deployment workflow testing

\- Environment separation

\- PowerShell scripting

\- Health check validation

\- Change promotion

\- Rollback testing

\- Release documentation

\- Basic operational troubleshooting



\## Final Result



The deployment pipeline test was successful. The lab showed how a sysadmin can validate deployment movement across environments, confirm basic health checks, and roll back a bad release before it reaches production.

