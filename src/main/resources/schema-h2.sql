create table regions
(
    region_id   bigint not null,
    region_name varchar(25),
    primary key (region_id)
);

create table countries
(
    country_id   char(2) not null,
    country_name varchar(60),
    region_id    bigint,
    primary key (country_id)
);

create table locations
(
    location_id    number(4),
    street_address varchar(40),
    postal_code    varchar(12),
    city           varchar(30) not null,
    state_province varchar(25),
    country_id     char(2),
    primary key (location_id)
);

create table departments
(
    department_id   bigint      not null,
    department_name varchar(30) not null,
    manager_id      bigint,
    location_id     number(4),
    primary key (department_id)
);

create table jobs
(
    job_id     varchar(10),
    job_title  varchar(35) not null,
    min_salary decimal,
    max_salary decimal,
    primary key (job_id)
);

create table employees
(
    employee_id    bigint      not null,
    first_name     varchar(20),
    last_name      varchar(25) not null,
    email          varchar(25) not null,
    phone_number   varchar(20),
    hire_date      date        not null,
    job_id         varchar(10) not null,
    salary         decimal(8, 2),
    commission_pct double precision,
    manager_id     bigint,
    department_id  smallint,
    constraint emp_salary_min check (salary > 0),
    primary key (employee_id),
    unique (email)
);

create table job_history
(
    employee_id   bigint      not null,
    start_date    date        not null,
    end_date      date        not null,
    job_id        varchar(10) not null,
    department_id bigint,
    check (end_date > start_date),
    primary key (employee_id, start_date)
);

-- 아래 관계는 데이터를 넣고 하든지 말든지 하자.
-- 데이터 정합성은 맞는다.
-- alter table countries add foreign key (region_id) references regions (region_id);
-- alter table locations add foreign key (country_id) references countries (country_id);
-- alter table departments add foreign key (location_id) references locations (location_id);
-- alter table employees add foreign key (department_id) references departments (department_id);
-- alter table employees add foreign key (job_id) references jobs (job_id);
-- alter table employees add foreign key (manager_id) references employees (employee_id);
-- alter table departments add foreign key (manager_id) references employees (employee_id);
-- alter table job_history add foreign key (employee_id) references employees (employee_id);
-- alter table job_history add foreign key (job_id) references jobs (job_id);
-- alter table job_history add foreign key (department_id) references departments (department_id);

create index emp_name_ix on employees (last_name, first_name);
create index loc_city_ix on locations (city);
create index loc_state_province_ix on locations (state_province);
