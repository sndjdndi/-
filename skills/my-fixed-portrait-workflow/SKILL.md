---
name: my-fixed-portrait-workflow
description: A reusable portrait-image workflow for the user's fixed aesthetic. Use when the user asks to "按我的固定人像流程处理", "按我的固定人像风格修改", "锁脸", requests four small portrait variations to choose from, or wants the selected portrait refined with Adobe and then conservatively enhanced with Magnific. Preserve the reference face and original composition by default, strongly avoid anime/cartoon rendering, and keep edits photographic, realistic, elegant, and identity-consistent.
---

# 我的固定人像流程

## Goal

Follow a repeatable portrait-editing workflow that preserves what the user already likes in the source image. Prefer small, controlled changes over redesigning the image. Keep the portrait photographic and realistic, preserve face identity and face shape, and only change what the user asks to change.

Read `references/style-profile.md` before generating or editing portraits with this workflow.

## Workflow

1. Inspect the user's source image and any reference-face image.
2. Identify what should remain unchanged versus what the user explicitly wants adjusted.
3. Preserve the original composition, pose, camera angle, facial expression, hairstyle, lighting direction, and clothing unless the user asks to change them.
4. Treat a supplied standard face/reference face as the highest-priority visual constraint.
5. Produce four candidate images by default when the task is generative or exploratory. Keep the four versions close to one another; vary only the requested detail or make small controlled differences.
6. Stop after the four candidates. Ask the user to choose the preferred version before professional finishing. Remind them that Adobe retouching and Magnific enhancement come after selection.
7. After the user chooses a version, use Adobe for the professional retouch pass.
8. After the Adobe result is approved or the user asks to continue, use Magnific for conservative high-resolution enhancement.

Do not automatically run Adobe or Magnific before the user chooses a candidate unless the user explicitly instructs you to skip selection.

## Face Fidelity

Treat face consistency as the top priority.

- Preserve the source/reference face shape, facial proportions, eye spacing, nose shape, mouth shape, jawline, and overall recognizable identity.
- If the user supplies a dedicated face reference, use it as the highest-priority face guide even when another image is the pose/body/composition source.
- Do not redesign the face merely to make it "prettier".
- Strongly prohibit obvious anime, manga, 2D, chibi, doll-like cartoon, or exaggerated AI-anime facial rendering.
- Avoid oversized eyes, unnaturally tiny noses, extreme pointed chins, plastic skin, and excessive beauty-filter effects.
- If no dedicated face reference is supplied, default to a photographic human face with gentle beauty retouching and only slight dreamlike softness.

## Change Control

Default to small changes.

- The user normally selects online images because they already like one or more of the face, body, pose, clothing, light, or atmosphere.
- Do not make broad stylistic changes unless specifically requested.
- If the user says only one element should change, preserve all unrelated elements as closely as possible.
- When making four versions, do not use four unrelated concepts. Keep the same core portrait and vary the requested detail subtly.

## Body Proportion Guidance

Use a realistic, elegant, adult feminine silhouette. Prioritize in this order:

1. Face fidelity
2. Bust proportion
3. Waist definition
4. Hip shape
5. Leg line

Default to noticeable but natural enhancement rather than extreme exaggeration.

- Keep a clear, smooth S-curve while preserving believable anatomy.
- Keep the waist defined without making it unnaturally narrow.
- Keep the bust fuller only when consistent with the source or the user's request.
- Keep hips rounded and feminine, with a natural transition into the upper thighs.
- Avoid widening the entire lower body as a single block.
- Avoid the "cocoon/wrapped" silhouette: the waist-to-hip-to-thigh contour should have distinct, graceful transitions.
- Preserve a tall, elongated impression where compatible with the source perspective.

Assume the portrayed person is an adult. Keep glamour non-explicit and tasteful.

## Clothing

Do not impose one fixed clothing category.

- Preserve source clothing unless the user asks for a clothing change.
- When the user asks to explore clothing, generate four closely related options rather than radically different identities or scenes.
- Favor clothing that supports clean waist definition and natural body lines rather than bulky wrapping around the hips and thighs.
- Suitable directions include fitted contemporary dresses, evening dresses, qipao/modern qipao, flowing Chinese-inspired garments, chiffon, lace, and light romantic dresses when consistent with the user's request.

## Visual Finish

Target high-end photographic portrait quality.

- Photographic realism first.
- Allow gentle dreamlike softness, but keep skin, hair, fabric, and lighting physically believable.
- Keep skin fair and luminous with subtle warm-pink vitality rather than dead-white skin.
- Preserve natural skin texture; avoid waxy or plastic smoothing.
- Keep hair dark/rich with visible strand detail rather than gray or muddy.
- Use soft, dimensional highlights and gentle shadows.
- Keep blacks clean and tonal separation clear.
- Avoid gray haze, foggy washout, dirty color, low-detail rendering, and over-sharpening.
- Prefer a clean commercial/editorial portrait finish.

## Four-Candidate Strategy

When generating four candidates, keep them as small variations around the same accepted source.

Examples of acceptable variation:

- slight garment cut or fabric change
- subtle light-temperature or light-direction adjustment
- small differences in body-line refinement
- small differences in drape, hair arrangement, or atmosphere

Avoid changing face identity, pose, scene, and clothing all at once.

## Adobe Retouch Stage

After the user selects one candidate, use Adobe for precision finishing rather than broad regeneration.

Priorities:

- preserve face shape and identity
- remove small artifacts or blemishes
- refine skin while retaining texture
- improve eye/lip clarity without changing facial structure
- refine hair strands
- improve fabric texture and folds
- balance exposure, highlights, shadows, contrast, whites/blacks, and natural saturation
- improve overall clarity and premium photographic finish

Prefer non-generative tonal/retouch adjustments when they can solve the problem. Use generative edits only for specific requested content changes.

## Magnific Final Stage

Use Magnific only after the selected portrait is already compositionally and stylistically correct.

- Use conservative, fidelity-first enhancement.
- Prioritize texture, hair strands, fabric detail, skin detail, and perceived resolution.
- Avoid high-creativity reinterpretation.
- Do not allow the upscaler to invent a new face or materially alter facial proportions.
- If available, choose settings that favor resemblance/structure preservation over creativity.

## Interaction Rules

If the user gives a source image but does not explain what they like about it, ask focused questions only when the answer would materially change the edit. Do not ask about details already evident from the conversation or source image.

If the user says "按我的固定人像流程处理这张图", interpret it as:

1. preserve face and core composition,
2. apply the fixed photographic style,
3. make only small changes,
4. generate four candidates,
5. wait for selection,
6. remind the user about Adobe retouching,
7. then Magnific enhancement after approval.

If the user says "锁脸", increase face-preservation priority and minimize changes to the face even further.
