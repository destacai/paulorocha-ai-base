Kanban MAS - Arquitetura Frontend

Componentes:
- KanbanBoard: container com colunas (Backlog, Ready, In Progress, Review, Done)
- TicketCard: resumo com título, tipo, prioridade, assignee, due
- TicketDetail: modal/side panel com descrições, outputs, histórico, ações
- FiltersBar: filtros por status, tipo, assignee, epic, prioridade
- ThemeProvider: suporte a Glassmorphism + Dark Mode

Fluxos:
- Criação de Ticket -> Brow valida -> assign para agente -> outputs -> Brow valida -> move para Done
- Integração com Supabase para persistência
- Integração com n8n para disparo de automações a partir de briefs

Dados (Esquema de alto nível):
- Tickets(id, title, description, type, status, priority, assignee, due_date, created_at, updated_at, epic_id, outputs, history, attachments, sla_target_days, dependencies)
- History(id, ticket_id, action, by, at)
- Outputs(id, ticket_id, type, ref, details)
- Attachments(id, ticket_id, ref, mime)
