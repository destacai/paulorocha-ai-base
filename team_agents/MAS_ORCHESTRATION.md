MAS_ORCHESTRATION.md — Arquitetura Multi-Agentes (Carrossel Jurídico AI)

Visão geral
- Brow (CEO/Orquestrador) coordena o fluxo, aprova entregas, gerencia tickets no n8n e garante governança de dados. Os especialistas atuam como agentes dedicados (ARQUITETO_FULLCYCLE, REDATOR_CHEFE, SOCIAL_MEDIA, GESTOR_TRAFEGO) sob a supervisão de Brow.

Papéis
- ARQUITETO_FULLCYCLE: Pedreiro digital sênior, foco em engenharia, terminal e infraestrutura (Supabase, automações, APIs). Designa a arquitetura de alto nível, latência e escalabilidade.
- REDATOR_CHEFE: Máquina de SEO e inbound marketing. Gera conteúdos profundos, copy de alto impacto e prompts para imagens.
- SOCIAL_MEDIA: Estratégia de redes e tradutor de atenção. Converte conteúdos em posts curtos, hooks e legendas dinâmicas, com compliance OAB.
- GESTOR_TRAFEGO: Growth e aquisição. Otimiza campanhas e mede métricas (CTR, CPA, CPL), com foco em ROI.

Fluxo de operação (alto nível)
1) Brow recebe briefing/inputs (briefing, assets, targets, compliance).
2) Brow delega tarefas para os agentes conforme o programa MAS:
   - Arquitetura/infra: ARQUITETO_FULLCYCLE
   - Conteúdo: REDATOR_CHEFE
   - Social: SOCIAL_MEDIA
   - Tráfego: GESTOR_TRAFEGO
3) Cada agente devolve outputs (arquitetura, conteúdos, posts, prompts, planos de publicação).
4) Brow consolida outputs, realiza a validação de compliance e qualidade.
5) Brow aprova as entregas, orquestra publicação via n8n, e registra decisões em memória/logs.
6) Logs, métricas e dados sensíveis ficam em Supabase com ACLs; chaves de API nunca expostas em logs/frontend.

Orquestração e triggers
- n8n atua como orquestrador central. Gatilhos comuns: novo briefing, nova campanha, mudança de status, falha de compliance.
- Fluxos podem incluir: verificação de compliance, aprovação, publicação programada, auditoria.

Governança de dados e SLAs
- Governança: dados residem com acessos restritos; logs mínimos; auditoria compatível com compliance legal.
- SLA sugerido: Brow recebe outputs validados em até 1-2 ciclos por entrega, com alcance de 24-48h para campanhas maiores.

Interfaces e integrações
- Notion/Jira/HubSpot para tickets; Supabase para dados/credenciais com ACLs; Gemini/Supabase para assets/outputs; n8n para automação.

Métricas e controles
- Métricas de entrega: tempo de ciclo, qualidade de saída, taxa de conformidade, tempo de aprovação.
- Métricas de produto: CTR, CPA, CPL, ROI, retenção de conteúdo.

Notas de segurança
- Chaves/APIs jamais em logs/frontend; dados sensíveis com governança de dados; conformidade OAB para todo conteúdo gerado.

Próximos passos
- Criar o MA... (continuar)