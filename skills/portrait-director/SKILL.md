---
name: portrait-director
description: Direct and refine portrait image editing with strict identity preservation, natural pose/anatomy, photographic composition, realistic lighting, material detail, and visual QC. Use when a user uploads or references a portrait and asks to improve, retouch, relight, recompose, change or preserve pose, use a pose/lighting/composition reference, create portrait variants, lock the face/identity, remove AI-looking artifacts, or produce polished realistic photographic portraits.
---

# 图像精修 / Portrait Director

Treat portrait work as photography direction plus retouching, not unconstrained regeneration. Preserve identity before aesthetics.

## Workflow
1. Inspect the source portrait and any reference images before editing.
2. Classify the request: Strict Preserve, Directed Edit, or Creative Portrait.
3. Establish a lock list and an edit list. Never let enhancement silently override a locked attribute.
4. Read the relevant references: identity-lock.md, pose-composition.md, lighting.md, retouch-qc.md.
5. When multiple creative directions are useful, generate four clearly differentiated candidates before final refinement. Do not force four variants for a narrow strict-preserve edit unless requested.
6. Prefer image editing over text-to-image regeneration for an existing image. Assign source portrait to identity and other references only to their requested roles.
7. Inspect the result visually. Reject or redo failures in identity, anatomy, lighting consistency, or realism.
8. After selection, perform restrained final refinement rather than redesigning it.

## Priority order
1. Identity and explicitly locked facial traits
2. Explicitly locked pose, expression, camera angle, composition, clothing, and scene
3. Human anatomy and physical plausibility
4. User-requested pose/composition changes
5. Lighting logic and photographic realism
6. Material/detail enhancement
7. Stylization

Never improve a lower-priority item by violating a higher-priority one.

## Identity rules
- Preserve the same person, not merely a similar attractive face.
- Lock face shape, facial proportions, jawline, eye spacing, nose structure, mouth shape, and other identity-bearing geometry unless explicitly requested otherwise.
- Do not beautify by replacing natural facial structure with a generic AI face.
- Preserve expression and mouth state when locked.
- Do not trade identity fidelity for apparent sharpness.

## Pose and anatomy rules
- Describe pose as a connected kinematic chain, not isolated body parts.
- Validate shoulder -> upper arm -> elbow -> forearm -> wrist -> hand continuity.
- Check neck/head connection, clavicles, shoulder height, torso twist, pelvis direction, weight bearing, knee direction, and visible limb lengths.
- Occluded limbs must still imply believable volume and direction under clothing.
- Avoid impossible joints, duplicated fingers/limbs, disconnected hands, melted fabric-body boundaries, or ambiguous arm paths.

## Composition and lighting
- Deliberately decide shot size, camera height/angle, subject placement, headroom, negative space, crop points, depth layers, and focal hierarchy.
- Identify the apparent key-light direction before changing light.
- Keep highlights, cast shadows, facial modeling, hair rim light, clothing highlights, and background illumination physically coherent.
- In Strict Preserve mode, enhance existing light rather than inventing a new source unless requested.

## Retouch
- Preserve skin texture and natural variation; avoid plastic skin.
- Enhance existing hair strands, textile folds, embroidery, metal, jade, pearl, wood, and other present materials without inventing dense new ornament.
- Suppress high-frequency AI noise, dirty microtexture, halos, jagged edges, and oversharpening.
- Prefer local correction over global redesign.

## Four-candidate workflow
- A: conservative, closest to source.
- B: stronger photographic composition.
- C: stronger dimensional lighting while remaining natural.
- D: bolder pose/composition direction within identity constraints.
Keep identity equally strict across all four. After selection, refine only the chosen direction.

## Tool behavior
- If the image to edit is missing, ask the user to upload or identify it.
- Prefer edit/inpainting/reference workflows for source-image modifications.
- Use dedicated retouching only after the generative edit is approved when it reduces identity drift.
- Fix structure first, then detail, then resolution.
- Do not claim pixel-perfect face locking when the active model cannot guarantee it; minimize drift and visually verify.

## Final QC gate
Check: same-person identity; face shape/proportions; expression/mouth state; head/neck alignment; shoulder-elbow-wrist-hand continuity; fingers/occluded limbs; body proportions/weight balance; clothing/body boundaries; perspective/crop; coherent lighting; hair/material detail; skin texture; background artifacts; halos/jaggies/noise/oversharpening/duplicated ornaments.
If a high-priority check fails, revise before presenting the result.
