---
name: RTV Systems
colors:
  surface: '#10131b'
  surface-dim: '#10131b'
  surface-bright: '#363942'
  surface-container-lowest: '#0b0e16'
  surface-container-low: '#181c23'
  surface-container: '#1c2028'
  surface-container-high: '#272a32'
  surface-container-highest: '#31353d'
  on-surface: '#e0e2ed'
  on-surface-variant: '#c1c6d7'
  inverse-surface: '#e0e2ed'
  inverse-on-surface: '#2d3039'
  outline: '#8b90a0'
  outline-variant: '#414755'
  surface-tint: '#adc6ff'
  primary: '#adc6ff'
  on-primary: '#002e69'
  primary-container: '#4b8eff'
  on-primary-container: '#00285c'
  inverse-primary: '#005bc1'
  secondary: '#ffbc7c'
  on-secondary: '#4b2800'
  secondary-container: '#fe9400'
  on-secondary-container: '#633700'
  tertiary: '#ffb595'
  on-tertiary: '#571e00'
  tertiary-container: '#ef6719'
  on-tertiary-container: '#4c1a00'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#d8e2ff'
  primary-fixed-dim: '#adc6ff'
  on-primary-fixed: '#001a41'
  on-primary-fixed-variant: '#004493'
  secondary-fixed: '#ffdcbf'
  secondary-fixed-dim: '#ffb874'
  on-secondary-fixed: '#2d1600'
  on-secondary-fixed-variant: '#6a3b00'
  tertiary-fixed: '#ffdbcc'
  tertiary-fixed-dim: '#ffb595'
  on-tertiary-fixed: '#351000'
  on-tertiary-fixed-variant: '#7c2e00'
  background: '#10131b'
  on-background: '#e0e2ed'
  surface-variant: '#31353d'
typography:
  headline-display:
    fontFamily: Hanken Grotesk
    fontSize: 48px
    fontWeight: '800'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Hanken Grotesk
    fontSize: 32px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-lg-mobile:
    fontFamily: Hanken Grotesk
    fontSize: 24px
    fontWeight: '700'
    lineHeight: '1.2'
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
  technical-code:
    fontFamily: JetBrains Mono
    fontSize: 14px
    fontWeight: '500'
    lineHeight: '1.4'
    letterSpacing: 0.05em
  label-caps:
    fontFamily: JetBrains Mono
    fontSize: 12px
    fontWeight: '700'
    lineHeight: '1'
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  unit: 4px
  gutter: 24px
  margin-desktop: 80px
  margin-mobile: 20px
  container-max: 1440px
---

## Brand & Style

This design system establishes a high-tech, precision-oriented identity for a premium electronics repair service. The aesthetic is rooted in **Modern Glassmorphism** and **Technical Minimalism**, evoking the feeling of a clean-room environment where cutting-edge technology meets expert craftsmanship.

The brand personality is professional, hyper-accurate, and trustworthy. To achieve this, the system utilizes deep, light-absorbing backgrounds contrasted with vibrant accent glows that simulate active circuitry. UI components use semi-transparent backdrops and razor-sharp borders to communicate clarity and transparency in the repair process.

## Colors

The palette is centered on a "Deep Space" foundation to minimize eye strain and highlight technical data. 

- **Primary (Electric Blue):** Used for primary actions, progress indicators, and "Active State" signals. It represents the diagnostic side of the service.
- **Secondary (Neon Orange):** Reserved for alerts, hardware warnings, and "Under Repair" status. It provides a high-visibility contrast against the blue.
- **Neutral (Slate & Charcoal):** Layered shades of grey provide structural depth. Base backgrounds use the darkest charcoal, while elevated glass panels use slate with varying opacities.
- **Functional Glows:** Subtle outer glows are applied to active elements to simulate illuminated hardware components.

## Typography

The typographic scale balances aggressive, bold headers with highly legible, monospaced metadata.

- **Headlines:** Set in Hanken Grotesk for a sharp, contemporary look. Tight letter-spacing and heavy weights convey authority.
- **Body:** Inter is used for all long-form content and descriptions to ensure maximum readability against dark backgrounds.
- **Technical Accents:** JetBrains Mono is utilized for serial numbers, diagnostic codes, status labels, and repair timestamps. This reinforces the "high-tech" nature of the electronics service.

## Layout & Spacing

The design system employs a **12-column Fluid Grid** for desktop and a **4-column grid** for mobile. 

- **Rhythm:** A 4px baseline grid governs all vertical spacing.
- **Density:** High-information density is encouraged for diagnostic dashboards, while marketing pages utilize generous margins (80px+) to focus on the hardware imagery.
- **Adapation:** On mobile devices, glass panels expand to fill the screen width, and typography scales down to maintain hierarchy without sacrificing touch targets.

## Elevation & Depth

This design system uses **Glassmorphism** as its primary method of establishing hierarchy.

1.  **Base Layer:** Solid `#0A0C10` background.
2.  **Intermediate Layer:** Semi-transparent panels with a 12px-20px backdrop blur and a 1px solid border (`border_subtle`).
3.  **Floating Layer:** High-contrast panels with a subtle "inner glow" and a secondary drop shadow tinted with the primary blue color (`glow_blue`) at low opacity (5-10%).

Depth is communicated through the intensity of the backdrop blur—the higher the element, the more blurred the background beneath it becomes.

## Shapes

The shape language is "Soft-Technical." Sharp corners are avoided to maintain a professional, modern feel, but radii are kept tight (4px to 12px) to prevent the UI from looking overly casual or "bubbly."

- **Standard Elements:** 4px (Soft) for buttons and inputs.
- **Large Containers:** 12px (Rounded-xl) for cards and modals.
- **Interactive Triggers:** Subtle 1px borders are always present on clickable shapes to define the interaction zone clearly.

## Components

### Buttons
Primary buttons use a solid Electric Blue fill with a white label. On hover, they emit a subtle blue glow. Secondary buttons are "Ghost" style with a 1px white border and no fill, becoming semi-transparent on hover.

### Technical Cards
Cards feature a 1px "Crisp Border" using `border_subtle`. The top-right corner of cards should often display a JetBrains Mono "Status Label" (e.g., "SYSTEM_OK").

### Status Chips
Chips are used for device repair stages. They feature a low-opacity background of the status color (Blue for "Received", Orange for "Repairing") with high-contrast text and a left-aligned "Pulse" dot.

### Input Fields
Inputs are dark charcoal with a bottom-only border that illuminates to Electric Blue when focused. Technical data entry should always use the monospaced font stack.

### Progress Gauges
Radial or linear progress bars used for repair status. They utilize gradients from Electric Blue to a lighter cyan, creating a "liquid light" effect.