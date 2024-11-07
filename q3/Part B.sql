CREATE TABLE "senators" (
  "senator_id" int PRIMARY KEY,
  "last_name" varchar,
  "party" varchar,
  "state" varchar
);

CREATE TABLE "requests" (
  "request_id" int PRIMARY KEY,
  "senator_id" int,
  "title" varchar,
  "recipient" varchar
);

CREATE TABLE "duplicates" (
  "request_id" int,
  "duplicate_id" int,
  "status" varchar,
  PRIMARY KEY ("request_id", "duplicate_id")
);

CREATE TABLE "duplicate_groups" (
  "group_id" int PRIMARY KEY,
  "request_id" int
);

ALTER TABLE "requests" ADD FOREIGN KEY ("senator_id") REFERENCES "senators" ("senator_id");

ALTER TABLE "duplicates" ADD FOREIGN KEY ("request_id") REFERENCES "requests" ("request_id");

ALTER TABLE "duplicates" ADD FOREIGN KEY ("duplicate_id") REFERENCES "requests" ("request_id");

ALTER TABLE "duplicate_groups" ADD FOREIGN KEY ("request_id") REFERENCES "requests" ("request_id");
