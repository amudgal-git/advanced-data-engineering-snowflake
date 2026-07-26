use database snowflake;
use schema telemetry;
select * from events;

describe table EVENTS;

use database staging_tasty_bytes;
create or replace schema telemetry;
create or replace event table pipeline_events;

describe table pipeline_events;

alter account set event_table = staging_tasty_bytes.telemetry.pipeline_events;