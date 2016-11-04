create table waypoints (
    waypoint_id serial primary key,
    x bigint not null,
    y bigint not null,
    z bigint not null,
    label text not null,
    description text,
    world text not null,
    entered TIMESTAMPTZ NOT NULL DEFAULT current_timestamp,
    unique (x, y, z, label)
);

grant select, update, delete, insert on waypoints to script;
grant update on sequence waypoints_waypoint_id_seq to script;
