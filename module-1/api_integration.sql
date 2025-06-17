USE ROLE accountadmin;
CREATE DATABASE course_repo;
USE SCHEMA public;

-- Create credentials
CREATE OR REPLACE SECRET course_repo.public.github_pat
  TYPE = password
  USERNAME = 'SOvikcg2025'
  PASSWORD = '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';

-- Create the API integration
CREATE OR REPLACE API INTEGRATION git_api_integration
  API_PROVIDER = git_https_api
  API_ALLOWED_PREFIXES = ('https://github.com/SovikCG2025') -- URL to your GitHub profile
  ALLOWED_AUTHENTICATION_SECRETS = (github_pat)
  ENABLED = TRUE;

-- Create the git repository object
CREATE OR REPLACE GIT REPOSITORY course_repo.public.advanced_data_engineering_snowflake
  API_INTEGRATION = git_api_integration  -- Name of the API integration defined above
  ORIGIN = 'https://github.com/SovikCG2025/advanced-data-engineering-snowflake.git' -- Insert URL of forked repo
  GIT_CREDENTIALS = course_repo.public.github_pat;

-- List the git repositories
SHOW GIT REPOSITORIES;
USE ROLE accountadmin;
CREATE DATABASE course_repo;
USE SCHEMA public;

-- Create credentials
CREATE OR REPLACE SECRET course_repo.public.github_pat
  TYPE = password
  USERNAME = 'Sovikcg2025'
  PASSWORD = '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';

-- Create the API integration
CREATE OR REPLACE API INTEGRATION git_api_integration
  API_PROVIDER = git_https_api
  API_ALLOWED_PREFIXES = ('https://github.com/SovikCG2025') -- URL to your GitHub profile
  ALLOWED_AUTHENTICATION_SECRETS = (github_pat)
  ENABLED = TRUE;

-- Create the git repository object
CREATE OR REPLACE GIT REPOSITORY course_repo.public.advanced_data_engineering_snowflake
  API_INTEGRATION = git_api_integration  -- Name of the API integration defined above
  ORIGIN = 'https://github.com/SovikCG2025/advanced-data-engineering-snowflake.git' -- Insert URL of forked repo
  GIT_CREDENTIALS = course_repo.public.github_pat;

-- List the git repositories
SHOW GIT REPOSITORIES;
