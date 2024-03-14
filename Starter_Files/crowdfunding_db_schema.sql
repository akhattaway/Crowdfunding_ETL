-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/l9T8dw
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar (25)  NOT NULL,
    "last_name" varchar (25)  NOT NULL,
    "email" varchar (25)  NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar (25)  NOT NULL,
    "description" varchar (25)  NOT NULL,
    "goal" varchar (25)  NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" varchar (25)  NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar (25)  NOT NULL,
    "currency" money   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "subcategory_id" int   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

