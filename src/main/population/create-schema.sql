
    create table `administrator` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `announcement` (
       `id` integer not null,
        `version` integer not null,
        `moment` datetime(6),
        `more_info` varchar(255),
        `text` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `anonymous` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `authenticated` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `blasco_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `description` varchar(255),
        `moment` datetime(6),
        `user_name` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `cardenal_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `developer` varchar(255),
        `moment` datetime(6),
        `skills` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `challenge` (
       `id` integer not null,
        `version` integer not null,
        `bronze_goal` varchar(255),
        `bronze_reward_amount` double precision,
        `bronze_reward_currency` varchar(255),
        `deadline` datetime(6),
        `description` varchar(255),
        `gold_goal` varchar(255),
        `gold_reward_amount` double precision,
        `gold_reward_currency` varchar(255),
        `silver_goal` varchar(255),
        `silver_reward_amount` double precision,
        `silver_reward_currency` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `commercial_banner` (
       `id` integer not null,
        `version` integer not null,
        `picture` varchar(255),
        `slogan` varchar(255),
        `targeturl` varchar(255),
        `credit_card` varchar(255),
        `sponsor_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `company_record` (
       `id` integer not null,
        `version` integer not null,
        `ceo` varchar(255),
        `company_name` varchar(255),
        `description` varchar(255),
        `email` varchar(255),
        `incorporated` bit not null,
        `phone` varchar(255),
        `sector` varchar(255),
        `stars` integer,
        `url` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `consumer` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `cornac_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `moment` datetime(6),
        `publication` varchar(255),
        `publisher` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `customisation_parameter` (
       `id` integer not null,
        `version` integer not null,
        `spam_threshold` double precision,
        `spam_word_list` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `employer` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `investor_records` (
       `id` integer not null,
        `version` integer not null,
        `investing_statement` varchar(255),
        `investor_name` varchar(255),
        `stars` integer,
        `work_sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `job` (
       `id` integer not null,
        `version` integer not null,
        `deadline` datetime(6),
        `more_info` varchar(255),
        `reference` varchar(255),
        `salary_amount` double precision,
        `salary_currency` varchar(255),
        `status` integer,
        `title` varchar(255),
        `employer_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `non_commercial_banner` (
       `id` integer not null,
        `version` integer not null,
        `picture` varchar(255),
        `slogan` varchar(255),
        `targeturl` varchar(255),
        `jingle` varchar(255),
        `sponsor_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `offer` (
       `id` integer not null,
        `version` integer not null,
        `deadline` datetime(6),
        `description` varchar(255),
        `max_reward_amount` double precision,
        `max_reward_currency` varchar(255),
        `min_reward_amount` double precision,
        `min_reward_currency` varchar(255),
        `moment` datetime(6),
        `ticker` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `pradas_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `information` varchar(255),
        `moment` datetime(6),
        `person` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `provider` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `request` (
       `id` integer not null,
        `version` integer not null,
        `deadline` datetime(6),
        `moment` datetime(6),
        `reward_amount` double precision,
        `reward_currency` varchar(255),
        `text` varchar(255),
        `ticker` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `shout` (
       `id` integer not null,
        `version` integer not null,
        `author` varchar(255),
        `moment` datetime(6),
        `text` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `sola_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `contribution` varchar(255),
        `cybernaut` varchar(255),
        `moment` datetime(6),
        primary key (`id`)
    ) engine=InnoDB;

    create table `sponsor` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `credit_card` varchar(255),
        `organisation_name` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `user_account` (
       `id` integer not null,
        `version` integer not null,
        `enabled` bit not null,
        `identity_email` varchar(255),
        `identity_name` varchar(255),
        `identity_surname` varchar(255),
        `password` varchar(255),
        `username` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `hibernate_sequence` (
       `next_val` bigint
    ) engine=InnoDB;

    insert into `hibernate_sequence` values ( 1 );
create index IDXnhikaa2dj3la6o2o7e9vo01y0 on `announcement` (`moment`);
create index IDXnr284tes3x8hnd3h716tmb3fr on `challenge` (`deadline`);
create index IDX9pkce3d1y6w47wadap5s5xptc on `company_record` (`stars`);
create index IDX2psiob2l625wbcjcq6rac7jxd on `company_record` (`sector`);
create index IDX36h1dt0en369n8juiobgqd99n on `investor_records` (`stars`);
create index IDXio7n08eb64cro3eomn61pxoev on `investor_records` (`work_sector`);

    alter table `job` 
       add constraint UK_7jmfdvs0b0jx7i33qxgv22h7b unique (`reference`);
create index IDXq2o9psuqfuqmq59f0sq57x9uf on `offer` (`deadline`);

    alter table `offer` 
       add constraint UK_iex7e8fs0fh89yxpcnm1orjkm unique (`ticker`);
create index IDXlrvsw21ylkdqa1shrkwg1yssx on `request` (`deadline`);

    alter table `request` 
       add constraint UK_9mxq3powq8tqctclj0fbi2nih unique (`ticker`);

    alter table `user_account` 
       add constraint UK_castjbvpeeus0r8lbpehiu0e4 unique (`username`);

    alter table `administrator` 
       add constraint FK_2a5vcjo3stlfcwadosjfq49l1 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `anonymous` 
       add constraint FK_6lnbc6fo3om54vugoh8icg78m 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `authenticated` 
       add constraint FK_h52w0f3wjoi68b63wv9vwon57 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `commercial_banner` 
       add constraint `FKd0k52g7lcacefcp62kb4p9aor` 
       foreign key (`sponsor_id`) 
       references `sponsor` (`id`);

    alter table `consumer` 
       add constraint FK_6cyha9f1wpj0dpbxrrjddrqed 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `employer` 
       add constraint FK_na4dfobmeuxkwf6p75abmb2tr 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `job` 
       add constraint `FK3rxjf8uh6fh2u990pe8i2at0e` 
       foreign key (`employer_id`) 
       references `employer` (`id`);

    alter table `non_commercial_banner` 
       add constraint `FKpcpr0xb5k7s4rxv5pulstt5v9` 
       foreign key (`sponsor_id`) 
       references `sponsor` (`id`);

    alter table `provider` 
       add constraint FK_b1gwnjqm6ggy9yuiqm0o4rlmd 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `sponsor` 
       add constraint FK_20xk0ev32hlg96kqynl6laie2 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);
