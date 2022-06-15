-- region 用户表
create table tbl_user(
    id bigserial,
    username varchar(16) not null,
    password varchar(64) not null,
    name varchar(16) not null,
    gender char(1) default '0',
    email varchar(50),
    phone_number varchar(20),
    salt varchar(36) not null,
    avatar varchar(500),
    status char(1) default '0',
    last_login_ip varchar(39),
    last_login_time timestamp,
    data_version bigint default 0,
    data_permission varchar(200),
    data_status char(1),
    created_by bigint,
    created_time timestamp default now(),
    modified_by bigint,
    modified_time timestamp,
    remark varchar(500)
);
alter table tbl_user add constraint pk_tbl_user primary key (id);
comment on table tbl_user is '用户表';
comment on column tbl_user.id is '自增主键';
comment on column tbl_user.username is '用户名';
comment on column tbl_user.password is '密码（SHA256）';
comment on column tbl_user.name is '名称';
comment on column tbl_user.gender is '性别';
comment on column tbl_user.email is '邮箱';
comment on column tbl_user.phone_number is '手机号';
comment on column tbl_user.salt is '随机盐';
comment on column tbl_user.avatar is '头像';
comment on column tbl_user.status is '用户状态';
comment on column tbl_user.last_login_ip is '最后登录ip';
comment on column tbl_user.last_login_time is '最后登录时间';
comment on column tbl_user.data_version is '数据版本（乐观锁）';
comment on column tbl_user.data_permission is '数据访问权限';
comment on column tbl_user.data_status is '数据状态';
comment on column tbl_user.created_by is '创建者';
comment on column tbl_user.created_time is '创建时间';
comment on column tbl_user.modified_by is '修改者';
comment on column tbl_user.modified_time is '修改时间';
comment on column tbl_user.remark is '备注';
-- endregion

-- region 角色表
create table tbl_role(
    id bigserial,
    code varchar(30) not null,
    name varchar(30) not null,
    status char(1) default '0' not null,
    ui_sort integer,
    data_version bigint default 0,
    data_permission varchar(200),
    data_status char(1),
    created_by bigint,
    created_time timestamp default now(),
    modified_by bigint,
    modified_time timestamp,
    remark varchar(500)
);
alter table tbl_role add constraint pk_tbl_role primary key (id);
comment on column tbl_role.id is '自增主键';
comment on column tbl_role.code is '角色编码';
comment on column tbl_role.name is '角色名称';
comment on column tbl_role.status is '角色状态';
comment on column tbl_role.ui_sort is 'UI排序';
comment on column tbl_role.data_version is '数据版本（乐观锁）';
comment on column tbl_role.data_permission is '数据访问权限';
comment on column tbl_role.data_status is '数据状态';
comment on column tbl_role.created_by is '创建者';
comment on column tbl_role.created_time is '创建时间';
comment on column tbl_role.modified_by is '修改者';
comment on column tbl_role.modified_time is '修改时间';
comment on column tbl_role.remark is '备注';
-- endregion

-- region 组织表
create table tbl_org(
    id bigserial,
    code varchar(30) not null,
    name varchar(30) not null,
    parent_id bigint default 0 not null,
    leader bigint,
    status char(1) default '0' not null,
    ui_sort integer,
    data_version bigint default 0,
    data_permission varchar(200),
    data_status char(1),
    created_by bigint,
    created_time timestamp default now(),
    modified_by bigint,
    modified_time timestamp,
    remark varchar(500)
);
alter table tbl_org add constraint pk_tbl_org primary key (id);
comment on column tbl_org.id is '自增主键';
comment on column tbl_org.code is '组织编码';
comment on column tbl_org.name is '组织名称';
comment on column tbl_org.parent_id is '父组织id';
comment on column tbl_org.leader is '组织领导id';
comment on column tbl_org.status is '组织状态';
comment on column tbl_org.ui_sort is 'UI排序';
comment on column tbl_org.data_version is '数据版本（乐观锁）';
comment on column tbl_org.data_permission is '数据访问权限';
comment on column tbl_org.data_status is '数据状态';
comment on column tbl_org.created_by is '创建者';
comment on column tbl_org.created_time is '创建时间';
comment on column tbl_org.modified_by is '修改者';
comment on column tbl_org.modified_time is '修改时间';
comment on column tbl_org.remark is '备注';
-- endregion