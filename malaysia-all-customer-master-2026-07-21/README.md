# Malaysia Customer Master 2026-07-21

This folder is the consolidated company-level customer pool for Malaysia market development.

## Outputs

- `index.html`: interactive dashboard for search, tier, business track, action, contact, and route filters.
- `malaysia_all_customer_master_2026-07-21.csv`: canonical 686-company working table.
- `merge_audit_2026-07-21.json`: input, merge, source, tier, track, and coverage counts.
- `field_photo_customer_enrichment_2026-07-21.csv`: structured enrichment for the eight 2026-07-21 field photos.
- `assets/field-photos-2026-07-21/`: public-safe copies of the field evidence shown inside matching company rows.

## Merge Policy

- Merge only confirmed corporate aliases, legal-name variants, and branch records that share one procurement entity.
- Preserve sources, addresses, map links, route notes, product fit, and follow-up state during consolidation.
- Keep different brands separate when purchasing ownership may differ.
- `tier_group` converts mixed labels such as `T0/T1` into a primary T0-T6 filter without deleting the original `final_tier`.
- Contact placeholders such as `Unknown` and `Unverified` are not counted as usable phone or email records.

## Rebuild

```bash
python3 build_master.py
python3 build_dashboard.py
```
