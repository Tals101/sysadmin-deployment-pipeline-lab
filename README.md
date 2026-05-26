# Sysadmin Deployment Pipeline and Branch Strategy Lab

## Project Summary

This project demonstrates how a sysadmin can test a deployment pipeline and branch strategy in a controlled Windows PowerShell lab environment.

The lab simulates how an application change moves through development, staging, and production using Git branches and PowerShell deployment scripts.

## Why This Project Matters

Sysadmins often support deployment infrastructure, release validation, environment readiness, service health checks, and rollback planning.

This project shows the operational side of deployments, including how to confirm that changes move safely between environments before reaching production.

## Branch Strategy

| Branch | Environment | Purpose |

|---|---|---|

| feature/* | Feature work | Individual changes |

| develop | Dev | Internal testing |

| staging | Staging | Pre-production validation |

| master | Production | Production-ready release |

## Deployment Flow

feature/update-version -> develop -> staging -> master

## Lab Environment

- Windows PowerShell

- Git

- Local folder-based deployment simulation

## Project Structure

- app/

- index.html

- scripts/

- deploy-dev.ps1

- deploy-staging.ps1

- deploy-prod.ps1

- environments/

- dev/

- staging/

- prod/

- reports/

- deployment-test-report.md

- .gitignore

- README.md

## Deployment Scripts

The lab includes three PowerShell deployment scripts:

| Script | Environment | Purpose |

|---|---|---|

| scripts/deploy-dev.ps1 | Dev | Deploys the application to the dev folder |

| scripts/deploy-staging.ps1 | Staging | Deploys the application to the staging folder |

| scripts/deploy-prod.ps1 | Production | Deploys the application to the prod folder |

Each script copies the application file into the correct environment folder and performs a basic health check.

## Tests Performed

- Feature branch promotion

- Dev deployment

- Staging deployment

- Production deployment

- Rollback from a bad release

- Basic health check validation

## Rollback Test

A simulated bad release was created using version 2.0.0 - BAD RELEASE.

The bad release was deployed only to the dev environment and then rolled back before reaching staging or production.

## Sysadmin Skills Demonstrated

- Branch strategy understanding

- Deployment pipeline testing

- Windows PowerShell scripting

- Environment separation

- Release validation

- Health check verification

- Rollback testing

- Change control documentation

- Operational troubleshooting

## Final Result

The deployment pipeline test was completed successfully. The lab demonstrated how a sysadmin can support safe release operations by validating branch flow, deployment scripts, environment separation, health checks, and rollback procedures.
