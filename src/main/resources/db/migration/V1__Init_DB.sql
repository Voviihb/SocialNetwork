-- Create sequences
create sequence message_seq start with 1 increment by 50;
create sequence usr_seq start with 2 increment by 50;

-- Create table message
create table message
(
    id       bigint        not null default nextval('message_seq'),
    user_id  bigint,
    filename varchar(255),
    tag      varchar(255),
    text     varchar(2048) not null,
    primary key (id)
);

-- Create table user_role
create table user_role
(
    user_id bigint not null,
    roles   varchar(255) check (roles in ('USER', 'ADMIN'))
);

-- Create table usr
create table usr
(
    active          boolean      not null,
    id              bigint       not null default nextval('usr_seq'),
    activation_code varchar(255),
    email           varchar(255),
    password        varchar(255) not null,
    username        varchar(255) not null,
    primary key (id)
);

-- Add foreign key constraints
alter table message
    add constraint message_user_fk foreign key (user_id) references usr;
alter table user_role
    add constraint user_role_user_fk foreign key (user_id) references usr;
