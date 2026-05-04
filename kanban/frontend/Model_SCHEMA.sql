-- Esquema de tickets e history para Supabase (PostgreSQL)
CREATE TABLE tickets (
  id serial primary key,
  title text not null,
  description text,
  type text not null, -- e.g., ARCHITECTURE, CONTENT, SOCIAL, GROWTH
  status text not null, -- Backlog, Ready, In Progress, Review, Blocked, Done
  priority text not null, -- Low, Medium, High
  assignee text, -- agent_id or name
  due_date timestamptz,
  created_at timestamptz default now(),
  updated_at timestamptz default now(),
  epic_id text,
  outputs jsonb,
  history jsonb,
  attachments jsonb,
  sla_target_days int
);

CREATE TABLE history (
  id serial primary key,
  ticket_id int references tickets(id),
  action text,
  by_user text,
  at timestamptz default now()
);

CREATE TABLE outputs (
  id serial primary key,
  ticket_id int references tickets(id),
  type text,
  ref text,
  details text
);

CREATE TABLE attachments (
  id serial primary key,
  ticket_id int references tickets(id),
  ref text,
  mime text
);
