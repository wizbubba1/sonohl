# SonoHL Website Copy — Redline / Change Instructions

**Target:** Live SonoHL marketing site (`sonohl.html` and all associated pages)
**Prepared:** June 23, 2026
**Purpose:** Apply a claims/compliance pass to website copy for a pre-clearance investigational medical device. Reduce regulatory risk while preserving the already-strong "investigational / development-hypothesis" posture.

---

## 0. How to use this document (read first)

1. **Match on visible text, not markup.** The source you may be diffing against (the "audit export") is a *cleaned representation* — CSS, JS, and decorative markup were stripped and some labels reformatted. Do **not** rely on the export's exact tags. For each operation, locate the **visible copy** that reads like the FIND text, then apply the change while **preserving the live site's existing element types, classes, and attributes**.

2. **Only change what is specified.** Section 5 lists copy that was reviewed and is intentionally left unchanged — do not "improve" it. Section 6 is a guardrail list of language that must **not** be (re)introduced anywhere.

3. **Priority order.** Operations are grouped P0 (highest) → P2. If applying incrementally, complete P0 first; it carries the most regulatory weight.

4. **When a string appears more than once,** apply the rule everywhere it appears unless the operation scopes it to a specific page.

5. **Do not invent specifics.** Do not add channel counts, sensor counts, statistics, performance numbers, sensitivity/specificity, or trial-enrollment status. If any such specifics exist elsewhere in the live site that are not in this document, flag them rather than keeping them.

---

## 1. Global terminology rules (apply site-wide)

**RULE A — "Qualified reviewer" standardization.**
Replace references to *who reviews recordings or acts on them* so they read **"qualified reviewer"** rather than "clinician." Use "clinician" only as a non-exclusive example, never as the fixed reviewer.

- "clinician review" → "review by a qualified reviewer"
- "clinician or other qualified user" → "qualified reviewer"
- "for clinician review" → "for review by a qualified reviewer"

**Exception:** The phrase **"clinician-facing review environment"** may be KEPT where it describes the *interface design* (not who is validated to act). This is a UI descriptor, not a use claim. Do not change it unless it appears as part of a sentence asserting validated clinical use.

**RULE B — Investigational status must be unmissable.**
The investigational status currently appears on some pages but not all. It must be present and consistent on **every** page (see Operation P0-1). Never let a page describe the platform's capabilities without the investigational framing being visible on that same page.

---

## 2. P0 — Highest priority (regulatory)

### P0-1 — Add a persistent investigational footer to EVERY page
**Type:** ADD (global component)
**Where:** A persistent footer (or equivalent always-visible block) on **all** pages — Home, Problem, Proposed Development Uses, Platform Concept, Technology, Proposed Workflow, Evidence Development, Team, Partnerships, and any others.
**Action:** Insert the following text as a site-wide footer. Match the site's existing footer/disclaimer styling if one exists; otherwise add a clearly legible footer block (not hidden, not behind a click).

> **SonoHL is an investigational device.** It has not been cleared or approved by the U.S. Food and Drug Administration, is not available for sale, and is limited by federal law to investigational use. Statements on this site describe development objectives and hypotheses, not demonstrated performance or approved intended uses.

**Rationale:** A public website is treated as labeling/promotional material. For an investigational device, status must be unmistakable and consistent across all pages, not dependent on which page the visitor lands on.

---

### P0-2 — Home: revise hero body copy
**Type:** REPLACE
**Page:** Home

**FIND (visible copy):**
> SonoHL is developing a wearable platform intended to capture heart and lung sounds from multiple predetermined positions and organize those recordings for clinician review. The exact product configuration, intended use, clinical output, and regulatory pathway remain under development. The platform is investigational and is not available for commercial sale.

**REPLACE WITH:**
> SonoHL is developing a wearable platform intended to capture heart sounds — with lung-sound capture under separate evaluation — from multiple predetermined positions, and to organize those recordings for review by a qualified reviewer. The exact product configuration, intended use, clinical output, and regulatory pathway remain under development. The platform is investigational and is not available for commercial sale.

**Rationale:** (a) Aligns the heart/lung framing with the Technology page, which already treats pulmonary applications as separately evaluated; presenting heart and lung as equivalent capabilities here is inconsistent. (b) Applies Rule A ("clinician review" → "review by a qualified reviewer").

---

### P0-3 — Team: HOLD on named individuals + photos until consent is documented
**Type:** HOLD / FLAG (do not auto-edit copy; requires human decision)
**Page:** Team

**Action:** Do **not** publish named individuals with photos unless written consent from each person is on file, and that consent explicitly covers (i) public display of name/photo and (ii) association with a medical device company. Naming clinicians alongside a medical device can read as implied clinical endorsement.

**Two compliant options — a human must choose one:**

- **Option A (preferred if consents exist):** Keep current names; confirm and retain written consent for each. Keep external institutional affiliations (e.g., university names) **off** the page unless each individual has authorized that specific association. (The current copy already omits affiliations — preserve that.)
- **Option B (publish-now fallback, no names/photos):** Replace named/photo entries with role-only descriptors. Example mapping:
  - "Dr. Nadia Giannetti" → "Cardiology — Co-Founder & CEO"
  - "Matthew Behr, P.Eng" → "Engineering — Co-Founder & CTO"
  - "Mitchel Benovoy PhD" → "AI / Machine Learning — Co-Founder"
  - Remaining entries → function-only labels (e.g., "R&D," "Mechanical Engineering," "Electrical Engineering," "Clinical Trial Coordination"), no photos.

**Rationale:** Consent/endorsement exposure is operational, not editorial. Flag for a human; do not guess.

---

## 3. P1 — Consistency (apply Rule A)

### P1-1 — Proposed Development Uses: reviewer terminology
**Type:** REPLACE
**Page:** Proposed Development Uses → "Point-of-care acoustic assessment support"

**FIND:**
> In a proposed workflow, an intended user would apply the vest, obtain recordings under a defined protocol, confirm recording quality, and make the acoustic information available for clinician review.

**REPLACE WITH:**
> In a proposed workflow, an intended user would apply the vest, obtain recordings under a defined protocol, confirm recording quality, and make the acoustic information available for review by a qualified reviewer.

---

### P1-2 — Platform Concept: "Organized recordings" body
**Type:** REPLACE
**Page:** Platform Concept → "Organized recordings"

**FIND:**
> The proposed software environment would store and organize recordings and associated information for review by an intended clinician or other qualified user.

**REPLACE WITH:**
> The proposed software environment would store and organize recordings and associated information for review by a qualified reviewer.

---

### P1-3 — Platform Concept: core-system body (interface descriptor — keep "clinician-facing")
**Type:** NO CHANGE (documented exception)
**Page:** Platform Concept

**Copy:** "SonoHL is developing a sensor vest, supporting software, and a clinician-facing review environment for acquiring heart and lung sounds from predetermined positions and organizing recordings for human review."

**Action:** **Keep as-is.** "clinician-facing review environment" is a UI descriptor (Rule A exception), and "human review" already avoids over-claiming. Listed here so the agent does not change it under Rule A.

---

### P1-4 — Technology: core-system body (interface descriptor — keep "clinician-facing")
**Type:** NO CHANGE (documented exception)
**Page:** Technology

**Copy:** "The system concept combines wearable acoustic acquisition, supporting software, and a clinician-facing review environment. Final specifications, outputs, and user requirements remain under development."

**Action:** **Keep as-is**, same reasoning as P1-3.

---

## 4. P2 — Header neutralization

### P2-1 — Home: neutralize declarative hero header
**Type:** REPLACE
**Page:** Home

**FIND (header):**
> Multi-Point Heart and Lung Sound Capture

**REPLACE WITH:**
> Toward Multi-Point Heart and Lung Sound Capture

**Rationale:** Headers are the most screenshot-able, most-quoted element and travel without surrounding caveats. The present-tense header asserts an established capability; "Toward" frames it as a development goal, matching the hedged body copy. (Other page headers were reviewed and already use acceptable framing — "concept," "in development," "proposed," "being developed." No other header changes required.)

---

## 5. Reviewed and intentionally UNCHANGED (do not edit)

These were assessed and are compliant. Do **not** modify them.

- **Problem page** — all copy. Claims are general, hedged ("can/may"), and tied to development rationale rather than product capability.
- **Proposed Development Uses disclaimer** — "These proposed workflows are development hypotheses. They are not approved intended uses, cleared indications, commercial claims, or confirmed remote-monitoring services." The phrase "confirmed remote-monitoring services" is doing deliberate work (avoids implying a billable monitoring service exists) — preserve it verbatim.
- **Platform Concept boundary statement** — "SonoHL is not represented as replacing medical judgment, independently diagnosing disease, or establishing treatment decisions. Its first intended use and clinical output have not yet been approved." Preserve verbatim.
- **Technology illustrative-spec disclaimer** — "Illustrative development concept. Final channel count and sensor positions require controlled approval." Preserve; this correctly neutralizes any hard hardware spec.
- **Proposed Workflow** — uses "qualified human review" consistently; this is the model, not a target for change.
- **Evidence Development** — entire section. "No performance threshold or result is stated" and the requirement that claims be linked to controlled specs/protocols/verification/clinical evidence/regulatory authorization is the standard to protect.
- **Partnerships closing line** — "SonoHL is investigational, is not available for commercial sale, and must be described by distinguishing proposed objectives from demonstrated results." Preserve.

---

## 6. Guardrails — do NOT (re)introduce anywhere

Reject or flag any edit (including from other sources or later requests) that would add:

- **Uncited statistics** — e.g., "2.5 million Canadians with undiagnosed cardiopulmonary disease," "40% of cardiac murmurs missed." No epidemiological figures without a primary citation.
- **Hard hardware specs presented as fact** — specific channel counts (e.g., "16 channels"), sensor counts ("10 front / 6 back," "8 sensors"). Keep these as "illustrative / require controlled approval" only.
- **"Real-time analysis" / "automatically detects/analyzes"** as a present-tense capability claim.
- **Diagnostic claims** — "diagnoses," "detects disease/defects," "finds heart and lung defects." Use neutral acquisition/organization language. (Note: a future *screening* or *monitoring* indication is generally lower-risk to pursue than a *diagnostic* one — keep copy aligned to the more conservative framing until a pathway is chosen and cleared.)
- **Trial-status claims** — "CT1 currently enrolling," "trial active," "validation complete," "deployed." Any such claim requires verified registration/protocol/ethics records and approval before publication.
- **Performance claims** — sensitivity, specificity, accuracy, "clinically validated," "proven," "trusted." None pre-clearance.
- **Commercial-availability language** — "available," "buy," "order," "for sale," pricing.

---

## 7. Post-change verification checklist

After edits, confirm:

- [ ] Investigational footer (P0-1) renders on **every** page and is visible without interaction.
- [ ] No page describes platform capabilities without investigational framing visible on that page.
- [ ] "Qualified reviewer" applied per Rule A; documented "clinician-facing" exceptions (P1-3, P1-4) left intact.
- [ ] Home hero body (P0-2) and header (P2-1) updated.
- [ ] Heart/lung framing consistent across Home and Technology (lung = separately evaluated).
- [ ] No item from Section 6 guardrail list present anywhere on the live site.
- [ ] Team page (P0-3) resolved via Option A or B by a human; no unconsented names/photos live.
- [ ] All Section 5 copy unchanged.

---

## 8. Scope note (not part of the edits)

This redline is a **claims/compliance pass**, not legal advice. Before publishing, have FDA regulatory counsel confirm the investigational-promotion posture — the line between "describing a device in development" and pre-clearance promotion (21 CFR 812.7) is fact-specific. Separately, note the deliberate tension with reimbursement goals: reimbursement-readiness eventually requires **more** specificity (precise intended-use statement, target conditions, "FDA-defined medical device" status for remote-monitoring codes, validated performance). That specificity is a **post-clearance layer** — correct to withhold now and add only after clearance and evidence exist. These edits keep the site conservative for today's pre-clearance status.
