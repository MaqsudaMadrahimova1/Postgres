CREATE TABLE "contacts"(
    "id" CHAR(255) NOT NULL,
    "partner_id" VARCHAR(255) NOT NULL,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "notes" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "created_by" CHAR(255) NOT NULL,
    "update_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "update_by" CHAR(255) NOT NULL
);
ALTER TABLE
    "contacts" ADD PRIMARY KEY("id");
CREATE TABLE "partners"(
    "id" CHAR(255) NOT NULL,
    "group_id" CHAR(255) NOT NULL,
    "slug" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "notes" VARCHAR(255) NOT NULL,
    "description" VARCHAR(255) NULL,
    "logo" VARCHAR(255) NOT NULL,
    "social_facebook" VARCHAR(255) NULL,
    "social_instagram" VARCHAR(255) NULL,
    "social_twitter" VARCHAR(255) NULL,
    "social_linkedin" VARCHAR(255) NULL,
    "social_youtube" VARCHAR(255) NULL,
    "social_slack" VARCHAR(255) NULL,
    "social_github" VARCHAR(255) NULL,
    "created_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "created_by" CHAR(255) NOT NULL,
    "update_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "updated_by" CHAR(255) NOT NULL
);
ALTER TABLE
    "partners" ADD PRIMARY KEY("id");
CREATE TABLE "users"(
    "id" BIGINT NOT NULL,
    "slug" VARCHAR(255) NOT NULL,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "email_validate" TIMESTAMP(0) WITHOUT TIME ZONE NULL,
    "email_validation_before_login" BOOLEAN NOT NULL,
    "avatar" VARCHAR(255) NOT NULL,
    "bio" VARCHAR(255) NULL,
    "company" VARCHAR(255) NULL,
    "location" VARCHAR(255) NULL,
    "phone" VARCHAR(255) NULL,
    "websitre" VARCHAR(255) NULL,
    "social_facebook" VARCHAR(255) NULL,
    "social_instagram" VARCHAR(255) NULL,
    "social_twitter" VARCHAR(255) NULL,
    "social_youtube" VARCHAR(255) NULL,
    "social_meetup" VARCHAR(255) NULL,
    "social_slack" VARCHAR(255) NULL,
    "social_github" VARCHAR(255) NULL,
    "created_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "updated_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "title" VARCHAR(255) NULL,
    "mentoring" VARCHAR(255) NULL
);
ALTER TABLE
    "users" ADD PRIMARY KEY("id");
CREATE TABLE "cfps"(
    "id" CHAR(255) NOT NULL,
    "group_id" CHAR(255) NOT NULL,
    "slug" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "begin" TIMESTAMP(0) WITHOUT TIME ZONE NULL,
    "close" TIMESTAMP(0) WITHOUT TIME ZONE NULL,
    "description" VARCHAR(255) NOT NULL,
    "tags" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "created_by" CHAR(255) NOT NULL,
    "update_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "update_by" CHAR(255) NOT NULL
);
ALTER TABLE
    "cfps" ADD PRIMARY KEY("id");
CREATE TABLE "event_rsvps"(
    "event_id" CHAR(255) NOT NULL,
    "user_id" CHAR(255) NOT NULL,
    "answer" VARCHAR(255) NOT NULL,
    "answered_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL
);
ALTER TABLE
    "event_rsvps" ADD PRIMARY KEY("event_id");
CREATE TABLE "propolsals"(
    "id" CHAR(255) NOT NULL,
    "talk_id" CHAR(255) NOT NULL,
    "cfp_id" CHAR(255) NOT NULL,
    "event_id" CHAR(255) NULL,
    "status" VARCHAR(255) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "duration" BIGINT NOT NULL,
    "description" VARCHAR(255) NOT NULL,
    "speakers" VARCHAR(255) NOT NULL,
    "sliders" VARCHAR(255) NULL,
    "video" VARCHAR(255) NULL,
    "tags" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "created_by" CHAR(255) NOT NULL,
    "updated_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "updated_by" CHAR(255) NOT NULL,
    "orga_tegs" VARCHAR(255) NULL,
    "message" VARCHAR(255) NULL
);
ALTER TABLE
    "propolsals" ADD PRIMARY KEY("id");
CREATE TABLE "talks"(
    "id" CHAR(255) NOT NULL,
    "slug" VARCHAR(255) NOT NULL,
    "status" VARCHAR(255) NOT NULL,
    "duration" BIGINT NOT NULL,
    "description" VARCHAR(255) NOT NULL,
    "speakers" VARCHAR(255) NOT NULL,
    "slides" VARCHAR(255) NULL,
    "video" VARCHAR(255) NULL,
    "tags" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "created_by" CHAR(255) NOT NULL,
    "updated_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "updated_by" CHAR(255) NOT NULL,
    "message" VARCHAR(255) NULL
);
ALTER TABLE
    "talks" ADD PRIMARY KEY("id");
CREATE TABLE "proposal_ratings"(
    "proporsal_id" CHAR(255) NOT NULL,
    "grade" INTEGER NOT NULL,
    "created_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "created_by" CHAR(255) NOT NULL
);
ALTER TABLE
    "proposal_ratings" ADD PRIMARY KEY("proporsal_id");
CREATE TABLE "comments"(
    "event_id" CHAR(255) NOT NULL,
    "proporsal_id" CHAR(255) NULL,
    "id" CHAR(255) NOT NULL,
    "kind" VARCHAR(255) NOT NULL,
    "answer" CHAR(255) NULL,
    "text" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "created_by" CHAR(255) NOT NULL
);
ALTER TABLE
    "comments" ADD PRIMARY KEY("event_id");
CREATE TABLE "events"(
    "id" CHAR(255) NOT NULL,
    "group_id" CHAR(255) NOT NULL,
    "cfp_id" CHAR(255) NULL,
    "slug" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "start" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "max_attende" BIGINT NULL,
    "aliow_rsvp" BOOLEAN NOT NULL,
    "description" VARCHAR(255) NOT NULL,
    "orga_notes" VARCHAR(255) NOT NULL,
    "orga_notes_updated_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "orga_notes_update_by" CHAR(255) NOT NULL,
    "venue" CHAR(255) NULL,
    "talks" VARCHAR(255) NOT NULL,
    "tags" VARCHAR(255) NOT NULL,
    "published" TIMESTAMP(0) WITHOUT TIME ZONE NULL,
    "meetupgroup" VARCHAR(255) NULL,
    "meetupeevent" BIGINT NULL,
    "created_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "created_by" CHAR(255) NOT NULL,
    "updated_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "updated_by" CHAR(255) NOT NULL,
    "kind" VARCHAR(255) NULL
);
ALTER TABLE
    "events" ADD PRIMARY KEY("id");
CREATE TABLE "group_id"(
    "id" CHAR(255) NOT NULL,
    "slug" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "logo" VARCHAR(255) NULL,
    "banner" VARCHAR(255) NULL,
    "contact" VARCHAR(255) NULL,
    "website" VARCHAR(255) NULL,
    "description" VARCHAR(255) NOT NULL,
    "location" VARCHAR(255) NULL,
    "location_lat" FLOAT(53) NULL
);
ALTER TABLE
    "group_id" ADD PRIMARY KEY("id");
CREATE TABLE "logins"(
    "provider_id" VARCHAR(255) NOT NULL,
    "provider_key" VARCHAR(255) NOT NULL,
    "user_id" CHAR(255) NOT NULL
);
ALTER TABLE
    "logins" ADD PRIMARY KEY("provider_id");
CREATE TABLE "sponsor_packs"(
    "id" CHAR(255) NOT NULL,
    "group_id" CHAR(255) NOT NULL,
    "slug" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" VARCHAR(255) NOT NULL,
    "price" FLOAT(53) NULL
);
ALTER TABLE
    "sponsor_packs" ADD PRIMARY KEY("id");
CREATE TABLE "venues"(
    "id" CHAR(255) NOT NULL,
    "partner_id" CHAR(255) NOT NULL,
    "contact_id" CHAR(255) NULL,
    "address" VARCHAR(255) NOT NULL,
    "address_lat" FLOAT(53) NULL
);
ALTER TABLE
    "venues" ADD PRIMARY KEY("id");
CREATE TABLE "table_15"(
    "id" CHAR(255) NOT NULL,
    "group_id" CHAR(255) NOT NULL,
    "partner_id" CHAR(255) NOT NULL,
    "sponsor_pack_id" CHAR(255) NOT NULL,
    "contact_id" CHAR(255) NULL,
    "start" DATE NOT NULL,
    "finish" DATE NOT NULL,
    "paid" DATE NULL,
    "price" FLOAT(53) NOT NULL
);
ALTER TABLE
    "table_15" ADD PRIMARY KEY("id");
ALTER TABLE
    "propolsals" ADD CONSTRAINT "propolsals_talk_id_foreign" FOREIGN KEY("talk_id") REFERENCES "talks"("id");
ALTER TABLE
    "sponsor_packs" ADD CONSTRAINT "sponsor_packs_id_foreign" FOREIGN KEY("id") REFERENCES "group_id"("id");
ALTER TABLE
    "sponsor_packs" ADD CONSTRAINT "sponsor_packs_group_id_foreign" FOREIGN KEY("group_id") REFERENCES "group_id"("id");
ALTER TABLE
    "table_15" ADD CONSTRAINT "table_15_contact_id_foreign" FOREIGN KEY("contact_id") REFERENCES "contacts"("id");
ALTER TABLE
    "proposal_ratings" ADD CONSTRAINT "proposal_ratings_created_by_foreign" FOREIGN KEY("created_by") REFERENCES "events"("orga_notes_updated_at");
ALTER TABLE
    "events" ADD CONSTRAINT "events_cfp_id_foreign" FOREIGN KEY("cfp_id") REFERENCES "cfps"("id");
ALTER TABLE
    "events" ADD CONSTRAINT "events_updated_by_foreign" FOREIGN KEY("updated_by") REFERENCES "users"("id");
ALTER TABLE
    "cfps" ADD CONSTRAINT "cfps_created_by_foreign" FOREIGN KEY("created_by") REFERENCES "users"("id");
ALTER TABLE
    "partners" ADD CONSTRAINT "partners_updated_by_foreign" FOREIGN KEY("updated_by") REFERENCES "users"("id");
ALTER TABLE
    "cfps" ADD CONSTRAINT "cfps_update_by_foreign" FOREIGN KEY("update_by") REFERENCES "users"("id");
ALTER TABLE
    "group_id" ADD CONSTRAINT "group_id_id_foreign" FOREIGN KEY("id") REFERENCES "users"("id");
ALTER TABLE
    "venues" ADD CONSTRAINT "venues_contact_id_foreign" FOREIGN KEY("contact_id") REFERENCES "contacts"("id");
ALTER TABLE
    "talks" ADD CONSTRAINT "talks_speakers_foreign" FOREIGN KEY("speakers") REFERENCES "users"("id");
ALTER TABLE
    "talks" ADD CONSTRAINT "talks_updated_by_foreign" FOREIGN KEY("updated_by") REFERENCES "users"("id");
ALTER TABLE
    "table_15" ADD CONSTRAINT "table_15_partner_id_foreign" FOREIGN KEY("partner_id") REFERENCES "partners"("id");
ALTER TABLE
    "events" ADD CONSTRAINT "events_orga_notes_updated_at_foreign" FOREIGN KEY("orga_notes_updated_at") REFERENCES "users"("id");
ALTER TABLE
    "venues" ADD CONSTRAINT "venues_partner_id_foreign" FOREIGN KEY("partner_id") REFERENCES "partners"("id");
ALTER TABLE
    "partners" ADD CONSTRAINT "partners_created_by_foreign" FOREIGN KEY("created_by") REFERENCES "users"("id");
ALTER TABLE
    "contacts" ADD CONSTRAINT "contacts_update_by_foreign" FOREIGN KEY("update_by") REFERENCES "partners"("social_instagram");
ALTER TABLE
    "talks" ADD CONSTRAINT "talks_created_by_foreign" FOREIGN KEY("created_by") REFERENCES "users"("id");
ALTER TABLE
    "contacts" ADD CONSTRAINT "contacts_created_by_foreign" FOREIGN KEY("created_by") REFERENCES "partners"("logo");
ALTER TABLE
    "comments" ADD CONSTRAINT "comments_event_id_foreign" FOREIGN KEY("event_id") REFERENCES "events"("id");
ALTER TABLE
    "table_15" ADD CONSTRAINT "table_15_group_id_foreign" FOREIGN KEY("group_id") REFERENCES "partners"("social_slack");
ALTER TABLE
    "events" ADD CONSTRAINT "events_group_id_foreign" FOREIGN KEY("group_id") REFERENCES "group_id"("id");
ALTER TABLE
    "proposal_ratings" ADD CONSTRAINT "proposal_ratings_proporsal_id_foreign" FOREIGN KEY("proporsal_id") REFERENCES "propolsals"("id");
ALTER TABLE
    "events" ADD CONSTRAINT "events_created_by_foreign" FOREIGN KEY("created_by") REFERENCES "users"("id");
ALTER TABLE
    "cfps" ADD CONSTRAINT "cfps_group_id_foreign" FOREIGN KEY("group_id") REFERENCES "group_id"("id");