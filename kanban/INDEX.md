# Carrossel Jurídico AI — Kanban de Operação (MAS)

Objetivo
- Fornecer um quadro Kanban abrangente para visualizar, priorizar e acompanhar todas as demandas do Multi-Agentes System (MAS): Arquitetura, Conteúdo, Social e Tráfego. Brow atua como CEO/Orquestrador, aprovando entregas e gerenciando o fluxo via n8n; os agentes executam conforme delegação.

Visão geral da arquitetura de fluxo
- Tickets representam unidades de trabalho com estados que transitam de Backlog → Ready → In Progress → Review → Blocked → Done.
- Integração com Supabase para armazenamento de tickets, outputs, histórico e logs; n8n orquestra automações a partir de briefs e mudanças de status.
- Frontend Kanban (MAS Kanban) para acompanhar o pipeline, com filtros por tipo, assignee, prioridade e epic, e com opções de drill-down em ticket detail.

Estrutura de dados (alto nível)
- Tickets: id, title, description, type, status, priority, assignee, due_date, created_at, updated_at, epic_id, outputs, history, attachments, sla_target_days, dependencies
- History/logs: registro de mudanças (quem, quando, o quê)
- Outputs/attachments: referências para entregas (docs, código, artefatos)

Estrutura do MVP
- MVP 1: Kanban com 4 colunas básicas (Backlog, In Progress, Review, Done) com criação de tickets e drag-and-drop
- MVP 2: Filtros por status, tipo, assignee, epic; histórico de mudanças
- MVP 3: Dashboard de métricas (tempo de ciclo, SLA, throughput)

Governança e segurança
- Dados sensíveis guardados em Supabase com ACLs; logs mínimos; chaves de API não expostas em logs/front-end
- Aro de aprovação centralizado com Brow atuando como gatekeeper de qualidade

Como operar
- Brow cria briefs, aloca tickets para ARQUITETO_FULLCYCLE, REDATOR_CHEFE, SOCIAL_MEDIA e GESTOR_TRAFEGO
- Cada agente devolve outputs; Brow valida compliance/qualidade, consolida e aciona publicação via n8n quando aplicável
- Outputs e decisões ficam registradas para auditoria

Notas de uso
- Use este Kanban como fonte única de status para as entregas do MAS.
- Mantenha tickets atualizados com mudanças de status, outputs e prazos.
"}  )   }  ```)  20316 bytes?  (The system truncated content).