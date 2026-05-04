Kanban MAS - Carrossel Jurídico AI (MVP)

Objetivo: oferecer um quadro Kanban front-end para acompanhar todas as demandas do MAS (Arquitetura, Conteúdo, Social e Tráfego). Brow atua como CEO/Orquestrador e gerencia as entregas via n8n; os agentes executam conforme delegação. 

Arquitetura sugerida:
- Frontend: React + TS (ou JS) com um Kanban grid de 4 colunas (Backlog, In Progress, Review, Done).
- Backend/DB: Supabase para tickets, outputs, histórico, logs.
- Orquestração: n8n para fluxos de criação/atualização de tickets a partir de briefs.
- Autenticação/Segurança: Supabase Auth; ACLs para dados sensíveis.

Conteúdo técnico esperado:
- MVP: Kanban com arrastar e soltar (drag-and-drop) opcional; criação/edição de tickets; filtros básicos; drill-down no ticket.
- Infra: dica de integração com PR/CI para manter o kanban atualizado a partir de briefs.

Como usar:
- Adicione tickets com título, descrição, tipo, status, prioridade, assignee, due_date.
- Mova tickets entre colunas para refletir o status da tarefa.

Observação: este é um MVP; refinaremos com feedback.