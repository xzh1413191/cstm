# MIFB Customer Review Table - 2026-07-06

Public review page:

https://xzh1413191.github.io/cstm/mifb-review-2026-07-06/

Notes:

- `已审核` rows reflect Kevin's manual review feedback.
- `未审核-AI预筛` rows are only AI prescreening to save review time.
- Do not treat unreviewed rows as Kevin's final decision.
- Reviewers should check official websites, product photos, current packaging format, company type, scale and contact route before giving a final tier.
- The page now has browser-local review controls: audit done, manual T0-T6, main-product confirmation, direct-product-fit confirmation, company-scale confirmation, ChatGPT/network checked and review notes.
- The page also has follow-up tracking controls: current stage, channel, latest action date, latest action, next follow-up date, next action, owner and result notes.
- Review and follow-up results are saved in each reviewer's browser localStorage when Supabase is not configured.
- Supabase sync is now scaffolded. Run `supabase-schema.sql` in the target Supabase project, then fill `supabase-config.js` with the project URL and anon/publishable key. After that, reviewers opening this page will load and save shared review/follow-up state through Supabase.
- Current sync model is last-write-wins per `workbench_id`. Use the reviewer name box so each update records `updated_by`.

Pages refresh marker: 2026-07-06 11:57 Asia/Shanghai - filter fix df02ccf.

Supabase sync scaffold added: 2026-07-06 13:05 Asia/Shanghai.
