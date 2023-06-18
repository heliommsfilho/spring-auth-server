create table app_user (
    id uuid not null constraint id_pk primary key,
    username varchar(256) not null constraint user_username_uk unique,
    password varchar(256) not null,
    enabled  boolean default true not null
);

create table role (
    id uuid not null constraint role__id_pk primary key,
    name varchar(32)  not null constraint role__name_uk unique,
    description varchar(256) not null
);

create table permission (
    id uuid not null constraint permission__id_pk primary key,
    name varchar(64)  not null constraint permission__name_uk unique,
    description varchar(256) not null
);

create table role_permission (
    id uuid not null constraint role_permission__id_pk primary key,
    role_id uuid not null constraint role_permission__role_fk references role,
    permisison_id uuid not null constraint role_permission__permission_id_fk references permission,
    constraint role_permission_uk unique (role_id, permisison_id)
);

create table user_role (
    id uuid not null constraint user_role__id_pk primary key,
    user_id uuid not null constraint user_role__user_fk references app_user,
    role_id uuid not null constraint user_role__role_fk references role,
    constraint user_role_uk unique (user_id, role_id)
);