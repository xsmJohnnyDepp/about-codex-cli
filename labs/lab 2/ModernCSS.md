### CSS Animation Start Example

Source: https://modern-css.com/reference/properties/animation-range-start

This example demonstrates how to use animation-range-start to delay the start of an animation until the user has scrolled a specific distance. The animation begins when the user has scrolled 100px down.

```css
.sticky-nav {
  animation: fade both;
  animation-timeline: scroll();
  /* Animation starts when the user has scrolled 100px down */
  animation-range-start: 100px;
}
```

--------------------------------

### Quick Example of grid-row

Source: https://modern-css.com/reference/properties/grid-row

This example demonstrates the basic usage of the grid-row property to set the starting line and span of a grid item.

```css
.hero-image {
  grid-row: 1 / span 2;
} /* starts at row 1 and spans 2 rows down */
```

--------------------------------

### Setting border-block-start-style

Source: https://modern-css.com/reference/properties/border-block-start-style

This example demonstrates how to set the style, width, and color for the block start border of an article element.

```css
article {
  border-block-start-style: dotted;
  border-block-start-width: 2px;
  border-block-start-color: #94a3b8;
}
```

--------------------------------

### Quick Example of border-inline-start-color

Source: https://modern-css.com/reference/properties/border-inline-start-color

Use this snippet to add a colored line to the logical start side of an element. Ensure border-inline-start-style and border-inline-start-width are also set for the border to be visible.

```css
.note-box {
  /* Adds a subtle blue line on the logical starting side */
  border-inline-start-color: #3b82f6;
  border-inline-start-style: solid;
  border-inline-start-width: 4px;
}
```

--------------------------------

### Scroll Snapping Example (6 lines)

Source: https://modern-css.com/playground/css-scroll-snap

A concise example demonstrating scroll snapping properties for a scroller and its slides. This setup ensures elements snap into place during scrolling.

```css
scroll-snap-type: x mandatory;
scroll-snap-align: start;
scroll-snap-stop: always;
scroll-behavior: smooth;
overscroll-behavior: contain;
```

--------------------------------

### CSS border-inline-start Example

Source: https://modern-css.com/reference/properties/border-inline-start

This example demonstrates the usage of border-inline-start as a logical equivalent to border-left, along with padding-inline-start and a background color. It's safe to use without fallbacks.

```css
.callout {
  /* Logical equivalent of border-left */
  border-inline-start: 5px solid #6366f1;
  padding-inline-start: 1.5rem;
  background: #f5f3ff;
}
```

--------------------------------

### Basic text-decoration-skip Example

Source: https://modern-css.com/reference/properties/text-decoration-skip

This example demonstrates how to apply an underline to text and configure it to skip over any empty spaces between words using the `text-decoration-skip` property.

```css
div {
  text-decoration: underline;
  /* Tells the underline to skip over any empty spaces between words */
  text-decoration-skip: spaces;
}
```

--------------------------------

### CSS Transition Delay Example

Source: https://modern-css.com/reference/properties/transition-delay

This example demonstrates how to use `transition-delay` to create a delayed tooltip appearance on hover. The tooltip's opacity transition is set to take 0.3 seconds, but it will only start after a 0.2-second delay.

```css
.tooltip {
  opacity: 0;
  transition: opacity 0.3s;
  /* Waits 0.2 seconds before showing the tooltip on hover */
  transition-delay: 0.2s;
}

.trigger:hover .tooltip {
  opacity: 1;
}
```

--------------------------------

### Quick grid-template-columns example

Source: https://modern-css.com/reference/properties/grid-template-columns

Sets up a grid with one fixed-width column and two flexible columns that share remaining space.

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr 1fr;
} /* one fixed column, two flexible ones */
```

--------------------------------

### Tiled Border Example

Source: https://modern-css.com/reference/properties/border-image-repeat

This example demonstrates how to tile a border image smoothly without cutting any tiles in half using the 'round' value.

```css
.tiled-border {
  border: 15px solid;
  border-image-source: url('dots.png');
  border-image-slice: 10;
  /* Tiles the dots smoothly without cutting any in half */
  border-image-repeat: round;
}
```

--------------------------------

### Quick flex-basis Example

Source: https://modern-css.com/reference/properties/flex-basis

Sets an initial size of 300px for a flex item, allowing it to grow if there's extra space.

```css
.flex-item {
  flex-basis: 300px;
  flex-grow: 1;
} /* starts at 300px, then grows to fill space */
```

--------------------------------

### Set border-inline-start-style

Source: https://modern-css.com/reference/properties/border-inline-start-style

Applies a solid border style to the start of a preformatted text block. This example also sets the width, color, and padding for the inline start edge.

```css
pre {
  border-inline-start-style: solid;
  border-inline-start-width: 4px;
  border-inline-start-color: #cbd5e1;
  padding-inline-start: 1rem;
}
```

--------------------------------

### Basic box-shadow Example

Source: https://modern-css.com/reference/properties/box-shadow

Apply a shadow effect to an element. This example demonstrates a common use case for creating a card-like appearance with a subtle shadow.

```css
.card {
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
  /* x-offset y-offset blur spread color */
}
```

--------------------------------

### Basic ruby-align Usage

Source: https://modern-css.com/reference/properties/ruby-align

Use ruby-align to control how ruby pronunciation guides are distributed over the base character. This example spreads the guide evenly.

```css
ruby {
  /* Spreads out the pronunciation guide evenly over the character */
  ruby-align: space-around;
}
```

--------------------------------

### Basic Grid Container Setup

Source: https://modern-css.com/playground/css-grid

Sets up a basic CSS Grid container with 3 equal-width columns and a 16px gap between them.

```css
.grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 16px; }
```

--------------------------------

### CSS Percentage Usage Example

Source: https://modern-css.com/reference/types/percentage

Demonstrates how to use percentages for width and font-size relative to parent elements.

```css
.child {
  /* Takes up exactly half the width of its parent */
  width: 50%;
  /* Sets the font size relative to the parent's font size */
  font-size: 120%;
}
```

--------------------------------

### Example of corner-shape-values

Source: https://modern-css.com/reference/types/corner-shape-value

Demonstrates the usage of different corner shape keywords in CSS.

```css
/* Example of used corner-shape-values */
.box {
  corner-shape: angle bevel round round;
}
```

--------------------------------

### Quick inset-block Example

Source: https://modern-css.com/reference/properties/inset-block

Use inset-block to stretch an element from the top to the bottom of its container logically. This example positions an overlay absolutely and stretches it vertically.

```css
.full-height-overlay {
  position: absolute;
  /* Stretches from top to bottom logically */
  inset-block: 0;
  inset-inline: 40px;
}
```

--------------------------------

### Fixed Starting Size with Room to Grow

Source: https://modern-css.com/reference/properties/flex-basis

A card starts at 240px. If the container has extra space, the card grows. If there is not enough space, multiple cards in a row can wrap.

```css
.card {
  flex-basis: 240px;
  flex-grow: 1;
}
```

--------------------------------

### CSS grid-row-start Examples

Source: https://modern-css.com/reference/properties/grid-row-start

Use grid-row-start to specify the starting horizontal grid line for a grid item. You can use a numerical line number or a named line.

```css
.item {
  /* Starts the item at the 1st horizontal grid line */
  grid-row-start: 1;
}

.item-named {
  /* Starts at a row line named 'main-top' */
  grid-row-start: main-top;
}
```

--------------------------------

### Basic CSS Nesting Example

Source: https://modern-css.com/reference/selectors/nesting

Demonstrates how to nest CSS rules, including pseudo-classes like :hover, within a parent selector.

```css
.card {
  padding: 1rem;

  /* Native CSS nesting! */
  h2 {
    color: blue;
  }

  &:hover {
    background: #f0f0f0;
  }
}
```

--------------------------------

### CSS font-weight Examples

Source: https://modern-css.com/reference/properties/font-weight

Demonstrates setting font weights using numerical values and keywords. Use numerical values for precise control and keywords for relative boldness.

```css
strong {
  /* Traditional bold weight */
  font-weight: 700;
}

.thin-text {
  /* Uses a light weight if the font supports it */
  font-weight: 300;
}
```

--------------------------------

### Example of P3 Green Color

Source: https://modern-css.com/vivid-colors-beyond-srgb

This example demonstrates defining a P3 green color using the `display-p3` color space, enabling more vibrant greens on compatible displays.

```css
display-p3 0 1 0
```

--------------------------------

### Example of P3 Red Color

Source: https://modern-css.com/vivid-colors-beyond-srgb

This example shows how to define a P3 red color using the `display-p3` color space, which offers a wider range of colors than sRGB.

```css
display-p3 1 0 0
```

--------------------------------

### Offsetting Animation Start with view-timeline-inset

Source: https://modern-css.com/reference/properties/view-timeline-inset

Use view-timeline-inset to start an animation before an element is fully visible. This example starts the animation when the element is 20% into the scroll container.

```css
.reveal-section {
  view-timeline-name: --reveal;
  /* Starts the animation when the element is 20% into the scroll container */
  view-timeline-inset: 20%;
}
```

--------------------------------

### Quick Example of scroll-padding-inline

Source: https://modern-css.com/reference/properties/scroll-padding-inline

Use this snippet to add a 1rem safe zone on both the left and right sides of a scrollable container.

```css
.image-scroller {
  /* Adds a 1rem safe zone on both the left and right sides of the container */
  scroll-padding-inline: 1rem;
}
```

--------------------------------

### Sass Nesting Example

Source: https://modern-css.com/nesting-selectors-without-sass-or-less

This is an example of how nesting was done using Sass. It requires a Sass compiler to process.

```scss
// nav.scss, requires Sass compiler.nav {
  display: flex;
  gap: 8px;
  & a {
    color: blue;
  }
}
```

--------------------------------

### Old Way: Barba.js Router Transitions

Source: https://modern-css.com/category/animation

This example shows a traditional JavaScript approach for handling page transitions using Barba.js and GSAP.

```javascript
import Barba from '@barba/core';
Barba.init({
  transitions: [{
    leave: ({ current }) => gsap.to(current.container, { opacity: 0 }),
    enter: ({ next }) => gsap.from(next.container, { opacity: 0 })
  }]
});
```

--------------------------------

### Sass Color Mixing Example

Source: https://modern-css.com/mixing-colors-without-a-preprocessor

This is an example of how color mixing was traditionally done using Sass.

```scss
// _variables.scss
$blue: #3b82f6;
$pink: #ec4899;
$blend: mix($blue, $pink, 60%);
```

--------------------------------

### Define Grid Item Start Line

Source: https://modern-css.com/reference/properties/grid-column-start

Use grid-column-start to specify the starting vertical grid line for an item. You can use a numerical index or a named line.

```css
.item {
  /* Starts the item at the 2nd vertical grid line */
  grid-column-start: 2;
}

.item-named {
  /* Starts at a line named 'content-start' */
  grid-column-start: content-start;
}
```

--------------------------------

### Native CSS Nesting Example

Source: https://modern-css.com/nesting-selectors-without-sass-or-less

This example demonstrates native CSS nesting, which works directly in the browser without a compiler. It shows nesting for selectors, pseudo-classes, and pseudo-elements.

```css
/* nav.css, plain CSS, no compiler */
.nav   {
  display: flex;
  gap: 8px;
  & a   {
    color: #888;
    text-decoration: none;
    &:hover   {
      color: white;
    }
  }
}
```

--------------------------------

### Quick Example of border-block-start-width

Source: https://modern-css.com/reference/properties/border-block-start-width

Use this snippet to set the logical top border width, style, and color for an element. This is a direct replacement for border-top properties in modern CSS.

```css
header {
  /* Logical top border */
  border-block-start-width: 2px;
  border-block-start-style: solid;
  border-block-start-color: #333;
}
```

--------------------------------

### CSS Dimension Examples

Source: https://modern-css.com/reference/types/dimension

Demonstrates various CSS dimension types including lengths and a non-dimension number.

```css
.box {
  /* Examples of different dimension types */
  width: 100px;  /* length */
  font-size: 1.2rem; /* length */
  opacity: 0.5; /* number (not a dimension) */
}
```

--------------------------------

### CSS Integer Usage Example

Source: https://modern-css.com/reference/types/integer

Demonstrates the use of integers for z-index to control stacking order and flex-grow to define item growth ratio.

```css
.overlay {
  /* Uses an integer to set stack order */
  z-index: 10;
}

.item {
  /* Uses an integer to define growth ratio */
  flex-grow: 2;
}
```

--------------------------------

### HTML Example with Tailwind CSS Utilities

Source: https://modern-css.com/auto-growing-textarea-without-javascript

Demonstrates the use of Tailwind CSS utility classes for `field-sizing: content` on both textarea and input elements.

```html
<!-- Tailwind v4 — field-sizing-content utility --><textarea  class="field-sizing-content min-h-[3lh]"></textarea><!-- Works on inputs too --><input class="field-sizing-content" />
```

--------------------------------

### Using an external image for mask-border-source

Source: https://modern-css.com/reference/properties/mask-border-source

This example demonstrates how to use an external image file as the source for a mask border. Ensure the image path is correct.

```css
.masked-element {
  /* Uses an external image as the source for the mask border */
  mask-border-source: url('border-mask.png');
}
```

--------------------------------

### Basic :hover Example

Source: https://modern-css.com/reference/selectors/hover

Applies an underline and changes the text color when the cursor hovers over an anchor tag.

```css
a:hover {
  /* Adds an underline and changes color on hover */
  text-decoration: underline;
  color: #3b82f6;
}
```

--------------------------------

### Float Layout Example

Source: https://modern-css.com/playground/css-grid

Demonstrates a Float-based layout requiring manual width calculations for items and gaps. Includes a clearfix for the container.

```css
.container { overflow: hidden } /* clearfix */ .item { float: left; width: 30%; margin: 0 1.5% 6px } .item.wide { width: 63% } /* manual: 2×30% + 3×1.5% gap */
```

--------------------------------

### CSS position-area Quick Example

Source: https://modern-css.com/reference/properties/position-area

Use position-area to automatically place an element relative to its anchor. This example positions a floating menu at the bottom-center of its anchor.

```css
.floating-menu {
  position: absolute;
  position-anchor: --menu-trigger;
  /* Automatically places the menu at the bottom-center of the anchor */
  position-area: bottom center;
}
```

--------------------------------

### CSS Animation Delay Example

Source: https://modern-css.com/reference/properties/animation-delay

Use `animation-delay` to specify a duration to wait before an animation begins. A positive value creates a delay, while a negative value can make an animation start as if it were already in progress.

```css
.fade-in {
  animation: fade 1s forwards;
  /* Waits 0.5s before fading in */
  animation-delay: 0.5s;
}
```

--------------------------------

### CSS border-bottom-style Example

Source: https://modern-css.com/reference/properties/border-bottom-style

This example demonstrates how to set a custom double-styled bottom border for an HR element, replacing the default appearance.

```css
hr.fancy {
  border: none;
  /* Replaces the default HR with a custom bottom border */
  border-bottom-style: double;
  border-bottom-width: 3px;
  border-bottom-color: #64748b;
}
```

--------------------------------

### CSS <mod> Function Example

Source: https://modern-css.com/reference/types/mod

Use the <mod> function to create offsets that wrap around a specific value. This example calculates an offset that repeats every 20px.

```css
.pattern-offset {
  /* Calculates an offset that wraps around every 20px */
  left: mod(var(--current-pos), 20px);
}
```

--------------------------------

### CSS Border Image Outset Example

Source: https://modern-css.com/reference/properties/border-image-outset

This example demonstrates how to use border-image-outset to extend a border image 5 pixels beyond the element's box. Ensure the border-color is set to transparent for the image to be visible.

```css
.fancy-container {
  border: 10px solid transparent;
  border-image-source: url('frame.png');
  border-image-slice: 30;
  /* Extends the image 5px beyond the box */
  border-image-outset: 5px;
}
```

--------------------------------

### Set Inline Padding with padding-inline

Source: https://modern-css.com/reference/properties/padding-inline

Use padding-inline to apply consistent padding to the start and end of an element's content area, respecting the writing mode. This example adds 1.5rem of padding to both sides.

```css
.button {
  /* Adds 1.5rem padding to both sides logically */
  padding-inline: 1.5rem;
}
```

--------------------------------

### Basic padding-right Example

Source: https://modern-css.com/reference/properties/padding-right

Use padding-right to add space on the right side of an element's content, for example, to make room for an icon.

```css
.input-field {
  /* Adds space on the right, perhaps to make room for an icon */
  padding-right: 40px;
}
```

--------------------------------

### text-transform: uppercase Example

Source: https://modern-css.com/reference/properties/text-transform

Use text-transform: uppercase to enforce all-caps for impact. This example also includes letter-spacing for additional styling.

```css
.heading {
  text-transform: uppercase;
  letter-spacing: 0.05em;
  /* enforces all-caps for impact */
}
```

--------------------------------

### Vendor Prefixed CSS Transitions

Source: https://modern-css.com/history-of-css

Initial support for CSS transitions often required vendor prefixes. This example demonstrates the WebKit prefix for transitions.

```css
-webkit-transition
```

--------------------------------

### CSS border-right Shorthand Example

Source: https://modern-css.com/reference/properties/border-right

Use the border-right shorthand to define the width, style, and color of the right border. This example also includes padding-right for spacing.

```css
.card-divider {
  /* physical shorthand: width | style | color */
  border-right: 2px solid #333;
  padding-right: 1.5rem;
}
```

--------------------------------

### Basic Float Example

Source: https://modern-css.com/reference/properties/float

Use this to push an image to the right, allowing text to wrap around its left side. Ensure appropriate margins are set for spacing.

```css
img {
  /* Pushes image to the right and lets text wrap around left side */
  float: right;
  margin-left: 15px;
}
```

--------------------------------

### linear() Easing with Optional Position Hints

Source: https://modern-css.com/custom-easing-without-cubic-bezier-guessing

This example illustrates how to use optional percentage hints within the linear() function to control the timing of keyframes. This allows for precise placement of overshoots and other effects.

```css
linear(0, 0.06, 0.25, 0.56, 1 36%, 0.88, 0.81, 0.88, 1 73%, 0.95, 1)
```

--------------------------------

### Quick example of text-emphasis

Source: https://modern-css.com/reference/properties/text-emphasis

Sets both the style (filled circles) and color for emphasis at once. This is frequently used in East Asian languages to highlight important words.

```css
strong {
  /* Sets both the style (filled circles) and color for emphasis at once */
  text-emphasis: filled circle #ff3300;
}
```

--------------------------------

### Basic :xr-overlay Styling

Source: https://modern-css.com/reference/selectors/xr-overlay

Use this pseudo-class to apply styles to UI elements when they are overlaid on a 3D scene in an immersive environment. This example ensures readability by setting a semi-transparent background and white text.

```css
:xr-overlay {
  /* ensures the UI is readable when overlaid on top of a 3D scene */
  background-color: rgba(0, 0, 0, 0.7);
  color: white;
}
```

--------------------------------

### Zero-JS Live Display with CSS Custom Property

Source: https://modern-css.com/live-form-output-without-javascript-dom-writes

This example demonstrates a truly zero-JavaScript approach for live display by combining the `<output>` element with an inline `oninput` event that updates a CSS custom property. This keeps JavaScript inline and minimal.

```html
<input oninput="this.form.display.value=this.value">
```

--------------------------------

### CSS Border Shorthand Example

Source: https://modern-css.com/reference/properties/border

Use the border shorthand to set the width, style, and color of an element's border. This example sets a 2-pixel solid border using a CSS variable for color.

```css
.btn {
  border: 2px solid var(--accent);
  /* width | style | color */
}
```

--------------------------------

### Tailwind CSS :focus-visible Example

Source: https://modern-css.com/focus-styles-without-annoying-mouse-users

An example using Tailwind CSS classes to apply focus rings specifically for keyboard navigation, while disabling default focus outlines for mouse interactions.

```html
<button  class="focus:outline-none focus-visible:ring-2 focus-visible:ring-blue-500">Click me</button>
```

--------------------------------

### HTML Example of Sticky Header

Source: https://modern-css.com/sticky-headers-without-javascript-scroll-listeners

Example of an HTML header element using Tailwind CSS classes for sticky positioning at the top. The 'z-10' ensures it stays above other content.

```html
<!-- sticky top-0: sticks to the top edge on scroll -->
<header class="sticky top-0 z-10 bg-white">
  Navigation
</header>
<!-- Also works for sidebars: sticky top-4 -->
```

--------------------------------

### Entry Animations with @starting-style

Source: https://modern-css.com/whats-new-in-css-2026

Enable entry animations for elements like dialogs from a display: none state using @starting-style, avoiding JavaScript timing hacks.

```css
dialog[open] {
  opacity: 1;
  transform: scale(1);
  transition: opacity 0.3s, transform 0.3s;
}

@starting-style {
  dialog[open] {
    opacity: 0;
    transform: scale(0.95);
  }
}
```

--------------------------------

### Set Logical Start Border Width

Source: https://modern-css.com/reference/properties/border-inline-start-width

Use this snippet to define the thickness, style, and color of the logical start border. This is the modern way to set a left border that automatically adjusts for right-to-left languages.

```css
.side-accent {
  /* Logical left border thickness */
  border-inline-start-width: 8px;
  border-inline-start-style: solid;
  border-inline-start-color: #ec4899;
}
```

--------------------------------

### Basic Usage of background-repeat-x

Source: https://modern-css.com/reference/properties/background-repeat-x

This example demonstrates how to use the background-repeat-x property to explicitly force horizontal repetition of a background image. It is primarily for legacy compatibility.

```css
body {
  background-repeat-x: repeat;
  /* explicitly forces horizontal repeat only (mostly for legacy compatibility) */
}
```

--------------------------------

### CSS Entry Animations with @starting-style

Source: https://modern-css.com/

Implement entry animations for elements by defining their initial state within `@starting-style`, allowing transitions to run automatically on element appearance.

```css
.card   {  opacity: 0;  transform: translateY(10px);}.card.visible   {  opacity: 1;  transform: none;}// JS: must run after paint or transition won't run requestAnimationFrame(() => {   requestAnimationFrame(() => {     el.classList.add('visible');   });});
```

```css
.card   {  transition: opacity .3s, transform .3s;  @starting-style   {    opacity: 0;    transform: translateY(10px);  }}
```

--------------------------------

### Set Hyphenation Limits

Source: https://modern-css.com/reference/properties/hyphenate-limit-chars

Use hyphenate-limit-chars to specify the minimum word length and the minimum number of characters to remain on each side of a hyphen. This example hyphenates words longer than 6 characters, ensuring at least 3 characters remain on both the start and end of the line.

```css
article {
  /* Only hyphenate words longer than 6 chars, with 3 chars on each side */
  hyphenate-limit-chars: 6 3 3;
}
```

--------------------------------

### Using <length-percentage> in CSS

Source: https://modern-css.com/reference/types/length-percentage

Demonstrates the use of <length-percentage> values in CSS properties like 'width' and 'padding'. This example shows a calculation involving a percentage and a fixed length, as well as a direct percentage value.

```css
.box {
  /* Uses a length-percentage for width */
  width: calc(100% - 40px);
  padding: 5%;
}
```

--------------------------------

### Flex Container with Items Pushed to Edges

Source: https://modern-css.com/reference/properties/justify-content

This example demonstrates pushing items to the edges of a flex container, often used for headers or navigation.

```css
.header {
  display: flex;
  justify-content: space-between;
}
```

--------------------------------

### CSS Entry Animations with @starting-style

Source: https://modern-css.com/category/css

Define initial states for transitions using `@starting-style`, ensuring smooth entry animations without requiring JavaScript to trigger them after the initial paint.

```css
.card   {
  opacity: 0;
  transform: translateY(10px);
}
.card.visible   {
  opacity: 1;
  transform: none;
}
/* JS: must run after paint or transition won't run */
requestAnimationFrame(() => {
  requestAnimationFrame(() => {
    el.classList.add('visible');
  });
});
```

```css
.card   {
  transition: opacity .3s, transform .3s;
  @starting-style   {
    opacity: 0;
    transform: translateY(10px);
  }
}
```

--------------------------------

### CSS Margin Examples

Source: https://modern-css.com/reference/properties/margin

Use margin: 0 auto; to center a fixed-width block element. Use margin-bottom to push following elements down.

```css
.centered-content {
  margin: 0 auto;
  /* centers a fixed-width block element */
}

.spacer {
  margin-bottom: 24px;
  /* pushes following elements down */
}
```

--------------------------------

### Explicit Start and End Lines with grid-row

Source: https://modern-css.com/reference/properties/grid-row

Define the exact start and end row lines for an item to control its precise placement and span within the grid.

```css
.hero {
  grid-row: 1 / 3;
}
```

--------------------------------

### HTML with CSS aspect-ratio Classes

Source: https://modern-css.com/aspect-ratios-without-the-padding-hack

Example of using predefined and custom aspect ratio classes directly in HTML. Use classes like 'aspect-video' for 16:9, 'aspect-square' for 1:1, or define custom ratios.

```html
<!-- aspect-video = 16/9, aspect-square = 1/1 --><div class="aspect-video">Video embed</div><div class="aspect-square">Profile photo</div><div class="aspect-[4/3]">Custom ratio</div>
```

--------------------------------

### CSS <length> Units Example

Source: https://modern-css.com/reference/types/length

Demonstrates the usage of various CSS length units including 'rem', 'px', and 'vw' for properties like font-size and margin.

```css
h1 {
  /* Uses various length units */
  font-size: 2.5rem;
  margin-top: 20px;
  width: 50vw;
}
```

--------------------------------

### Set ruby annotation position to under

Source: https://modern-css.com/reference/properties/ruby-position

Places the pronunciation guide below the character instead of above it. This is useful for specific typographic layouts.

```css
ruby {
  /* Places the pronunciation guide below the character instead of above it */
  ruby-position: under;
}
```

--------------------------------

### CSS quotes property example

Source: https://modern-css.com/reference/properties/quotes

This example demonstrates how to use the quotes property to set traditional French angle quotes for blockquotes and specifies the content to be an opening quote.

```css
blockquote {
  /* Uses traditional French angle quotes instead of standard double quotes */
  quotes: '«' '»' '‹' '›';
}

blockquote::before {
  content: open-quote;
}
```

--------------------------------

### Building a Palette with OKLCH

Source: https://modern-css.com/playground/oklch-color-picker

Demonstrates how to build a color palette by locking hue and chroma while varying lightness. This results in a consistent visual brightness across the palette.

```css
L 0.2
L 0.35
L 0.5
L 0.65
L 0.8
```

--------------------------------

### CSS object-position Example

Source: https://modern-css.com/reference/properties/object-position

Use object-position to align the content of a replaced element. This example positions the image crop towards the top 20% of the container, focusing on the upper portion.

```css
img.profile-shot {
  width: 100%;
  height: 200px;
  object-fit: cover;
  object-position: center 20%;
  /* focuses the crop on the subject's face (top portion of the image) */
}
```

--------------------------------

### Basic text-indent Example

Source: https://modern-css.com/reference/properties/text-indent

Applies a 20-pixel indent to the first line of every paragraph. This is a common use case for improving text readability in blocks.

```css
p {
  /* Indents the first line of every paragraph by 20 pixels */
  text-indent: 20px;
}
```

--------------------------------

### CSS border-left Shorthand Example

Source: https://modern-css.com/reference/properties/border-left

Use the border-left shorthand to define the width, style, and color of an element's left border in a single declaration. This example adds a 5px solid purple border and some left padding to a blockquote.

```css
blockquote {
  /* physical shorthand: width | style | color */
  border-left: 5px solid #7c3aed;
  padding-left: 1rem;
}
```

--------------------------------

### CSS border-bottom-left-radius Example

Source: https://modern-css.com/reference/properties/border-bottom-left-radius

This example demonstrates how to use border-bottom-left-radius along with other border-radius properties to create a speech bubble shape. It sets the bottom-left radius to 0 while rounding the other three corners.

```css
.speech-bubble {
  border-bottom-left-radius: 0;
  border-top-left-radius: 20px;
  border-top-right-radius: 20px;
  border-bottom-right-radius: 20px;
}
```

--------------------------------

### Define and Use Container Queries

Source: https://modern-css.com/reference/at-rules/container

First, define a container with `container-type`. Then, use the `@container` rule with a condition (e.g., `min-width`) to apply styles.

```css
/* 1. Define the container */
.card-layout {
  container-type: inline-size;
}

/* 2. Use the container query */
@container (min-width: 700px) {
  .card {
    display: grid;
    grid-template-columns: 2fr 1fr;
  }
}
```

--------------------------------

### Example Usage of CSS @function for Fluid Typography

Source: https://modern-css.com/reusable-css-logic-without-sass-mixins

Demonstrates how to call a CSS @function to set fluid font sizes, leveraging runtime computation.

```css
font-size: --fluid(1.2rem, 2.4rem)
```

--------------------------------

### Tailwind CSS: grid-cols-subgrid Example

Source: https://modern-css.com/aligning-nested-grids-without-duplicating-tracks

An example using Tailwind CSS v3.4+ demonstrating `grid-cols-subgrid`. The nested grid inherits column definitions from its parent, ensuring alignment.

```html
<!-- Tailwind v3.4+ — grid-cols-subgrid inherits parent columns --><div class="grid grid-cols-3 gap-4">  <div class="col-span-3 grid grid-cols-subgrid">    <div>A</div>    <div>B</div>    <div>C</div>  </div></div>
```

--------------------------------

### Style Card with Image using :has()

Source: https://modern-css.com/reference/selectors/has

This example demonstrates how to style a card element by checking if it contains an image. If an image is present, the card's padding is removed and a border is applied.

```css
/* Style a card only if it contains an image */
.card:has(img) {
  padding: 0;
  border: 2px solid var(--accent);
}
```

--------------------------------

### Basic clear: both Example

Source: https://modern-css.com/reference/properties/clear

Use 'clear: both;' to force an element to appear below all preceding floated elements, effectively breaking out of a float layout.

```css
.footer {
  clear: both;
  /* forces the footer to sit below all floated sidebars or images */
}
```

--------------------------------

### Apply Transform on Hover

Source: https://modern-css.com/reference/properties/transform

This example demonstrates lifting and slightly enlarging a card element when a user hovers over it using the `transform` property.

```css
.card:hover {
  transform: translateY(-10px) scale(1.05);
  /* lifts and slightly enlarges the card on hover */
}
```

--------------------------------

### Old Way: Barba.js Transitions

Source: https://modern-css.com/page-transitions-without-a-framework

This example shows the older method of handling page transitions using Barba.js, which requires custom leave and enter animations.

```javascript
// barba.js or custom router transitionsimport Barba from '@barba/core';Barba.init({
  transitions: [{
    leave: ({ current }) => gsap.to(current.container, { opacity: 0 }),
    enter: ({ next }) => gsap.from(next.container, { opacity: 0 })
  }]
});
```

--------------------------------

### Apply triangle emphasis style

Source: https://modern-css.com/reference/properties/text-emphasis-style

Adds small triangles above the letters for emphasis. This is a basic usage example.

```css
cite {
  /* Adds small triangles above the letters for emphasis */
  text-emphasis-style: triangle;
}
```

--------------------------------

### Example: Using Container Queries with Tailwind Classes

Source: https://modern-css.com/responsive-components-without-media-queries

This HTML demonstrates how to apply container queries using Tailwind CSS classes. The `@container` directive allows for conditional styling based on the container's size.

```html
<!-- @container marks the parent as a container --><div class="@container">  <!-- @[400px]: fires when container > 400px -->  <div class="grid-cols-1 @[400px]:grid-cols-[auto_1fr]">    Card  </div></div>
```

--------------------------------

### Flexbox and Grid Gap Example

Source: https://modern-css.com/reference/properties/gap

Use `gap` to set equal spacing between all flex items or define distinct row and column gaps for grid items.

```css
.flex-container {
  display: flex;
  gap: 1.5rem;
  /* sets equal gap between all flex items */
}

.grid-container {
  display: grid;
  gap: 20px 40px;
  /* row-gap: 20px, column-gap: 40px */
}
```

--------------------------------

### Basic Animation Example

Source: https://modern-css.com/reference/properties/animation

Applies a 'spin' animation to an element, making it rotate continuously. Requires a corresponding @keyframes rule to define the animation's steps.

```css
.loader {
  animation: spin 1s linear infinite;
}

@keyframes spin {
  from { transform: rotate(0deg); }
  to { transform: rotate(360deg); }
}
```

--------------------------------

### Set Initial Motion Path Position

Source: https://modern-css.com/reference/properties/offset-position

Use offset-position to specify where the motion path begins. Setting it to '0 0' anchors the start to the top-left corner of the container.

```css
.moving-object {
  /* Starts the motion path from the top-left corner of the container */
  offset-position: 0 0;
}
```

--------------------------------

### Custom List Marker with String

Source: https://modern-css.com/reference/properties/list-style-type

Use a custom string as the list item marker. This example uses a checkmark symbol followed by a space.

```css
ul.checkmark-list {
  list-style-type: '✓ ';
  /* uses a custom string as the list bullet */
}
```

--------------------------------

### Responsive Components with CSS Container Queries

Source: https://modern-css.com/category/css

Create responsive components that adapt to their container's size using container queries, offering more granular control than traditional media queries.

```css
.card   {
  display: grid;
  grid-template-columns: 1fr;
}@media (min-width: 768px)   {
  .card   {
    grid-template-columns: auto 1fr;
  }
}
```

```css
.wrapper   {
  container-type: inline-size;
}.card   {
  grid-template-columns: 1fr;
}@container (width > 400px)   {
  .card   {
    grid-template-columns: auto 1fr;
  }
}
```

--------------------------------

### HTML Example with Tailwind CSS inset Classes

Source: https://modern-css.com/positioning-shorthand-without-four-properties

Demonstrates the use of Tailwind CSS classes for applying the inset shorthand property to create full-bleed overlays and inset sides.

```html
<!-- inset-0 = top/right/bottom/left: 0 --><div class="absolute inset-0">Full-bleed overlay</div><!-- inset-x-* / inset-y-* for horizontal or vertical only --><div class="absolute inset-x-4 top-0 bottom-0">Inset sides</div>
```

--------------------------------

### Layered Mask with Subtraction

Source: https://modern-css.com/reference/properties/mask-composite

This example demonstrates how to use multiple mask images and subtract the second mask from the first. Ensure mask images are correctly referenced.

```css
.layered-mask {
  mask-image: url(mask1.png), url(mask2.png);
  /* Subtracts the second mask from the first */
  mask-composite: subtract;
}
```

--------------------------------

### Basic Usage of border-block-start

Source: https://modern-css.com/reference/properties/border-block-start

Use this snippet to set the width, style, and color of the block-start border. It is the logical equivalent of border-top.

```css
main {
  /* Logical equivalent of border-top */
  border-block-start: 2px solid #000;
}
```

--------------------------------

### Basic text-shadow Example

Source: https://modern-css.com/reference/properties/text-shadow

Applies a subtle shadow to text, shifted slightly right and down with a blur effect. This is useful for adding depth or a glowing effect.

```css
.glowing-text {
  /* Creates a subtle 2px shadow shifted slightly right and down */
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
}
```

--------------------------------

### Set margin-block-start

Source: https://modern-css.com/reference/properties/margin-block-start

Use margin-block-start to add space at the start of the block axis. This property is well-established and safe to use without fallbacks.

```css
article {
  /* Adds space at the top in a logical way */
  margin-block-start: 3rem;
}
```

--------------------------------

### Equal Columns with flex-basis: 0

Source: https://modern-css.com/reference/properties/flex-basis

Starts every item at size 0, then lets flex-grow distribute space equally. This ensures all columns end up the same width regardless of their content.

```css
.columns > * {
  flex-basis: 0;
  flex-grow: 1;
}
```

--------------------------------

### Style Open Dialog Element

Source: https://modern-css.com/reference/selectors/open-pseudo

Use the :open pseudo-class to apply styles to a dialog element when it is in an open state. This example adds a border and box-shadow.

```css
dialog:open {
  /* Styles the dialog when it is visible and open */
  border: 5px solid var(--accent);
  box-shadow: 0 10px 30px rgba(0,0,0,0.5);
}
```

--------------------------------

### CSS border-top-width Example

Source: https://modern-css.com/reference/properties/border-top-width

Use this snippet to add a thick top border to an element. Ensure `border-top-style` and `border-top-color` are also defined for the border to be visible.

```css
.top-bar {
  /* Adds a thick top bar */
  border-top-width: 8px;
  border-top-style: solid;
  border-top-color: #ec4899;
}
```

--------------------------------

### CSS scroll-margin-bottom Example

Source: https://modern-css.com/reference/properties/scroll-margin-bottom

Use scroll-margin-bottom to leave room for a bottom navigation bar when snapping to the footer.

```css
.footer-section {
  /* Leave room for a bottom navigation bar when snapping to the footer */
  scroll-margin-bottom: 60px;
  scroll-snap-align: end;
}
```

--------------------------------

### CSS inset Property Quick Example

Source: https://modern-css.com/reference/properties/inset

Use inset: 0; to stretch an element to fill its entire parent container. This is commonly used for full-screen overlays.

```css
.full-screen-overlay {
  position: fixed;
  inset: 0;
  /* stretches the element to fill the entire screen */
}
```

--------------------------------

### Basic :class Selector Example

Source: https://modern-css.com/reference/selectors/class

Use the class selector (.) to target any element with a specific class attribute. This is a fundamental CSS technique for styling.

```css
.highlight {
  /* Targets any element with class="highlight" */
  background-color: yellow;
  font-weight: bold;
}
```

--------------------------------

### Define exact start and end columns

Source: https://modern-css.com/reference/properties/grid-column

Specify precise column lines for an item's start and end. Note that line numbers count edges, and a range like '2 / 5' spans three columns (lines 2, 3, 4, and 5).

```css
.sidebar {
  grid-column: 1 / 2;
}

.main {
  grid-column: 2 / 5;
}
```

--------------------------------

### CSS Transition Duration Example

Source: https://modern-css.com/reference/properties/transition-duration

Applies a transition duration of 0.2 seconds to the transform property for an icon, affecting its hover state.

```css
.icon {
  /* Fine-tuning the speed of the hover effect */
  transition-duration: 0.2s;
  transition-property: transform;
}

.icon:hover {
  transform: scale(1.2);
}
```

--------------------------------

### Quick example of CSS order

Source: https://modern-css.com/reference/properties/order

Use order: 999 to move an element to the end of a flex container. This is useful for elements that should visually appear last.

```css
.sticky-nav {
  order: 999;
} /* moves the nav to the end of the flex container */
```

--------------------------------

### Basic zoom usage

Source: https://modern-css.com/reference/properties/zoom

Use zoom to scale an entire widget to a larger size. This example scales the widget to 150% of its original size.

```css
.legacy-widget {
  /* scales the entire widget to 150% of its original size */
  zoom: 1.5;
}
```

--------------------------------

### Sass lighten() function example

Source: https://modern-css.com/color-variants-without-sass-functions

This is the older method using Sass's lighten function, which runs at compile time.

```css
/* Sass: @use 'sass:color'; *//* Sass: color.adjust($brand, $lightness: 20%) */.btn   {  background: lighten(var(--brand), 20%);}
```

--------------------------------

### Quick Example of border-inline-end

Source: https://modern-css.com/reference/properties/border-inline-end

Use this snippet to apply a border to the end of an element in the inline dimension. It is the logical equivalent of border-right and can be combined with padding-inline-end.

```css
blockquote {
  /* Logical equivalent of border-right */
  border-inline-end: 4px solid #7c3aed;
  padding-inline-end: 1rem;
}
```

--------------------------------

### Basic Flex Shorthand

Source: https://modern-css.com/reference/types/flex

Use the flex shorthand to define how a flex item grows or shrinks to fit the available space in its container. This example sets flex-grow to 1, flex-shrink to 1, and flex-basis to 300px.

```css
.item {
  flex: 1 1 300px;
  /* shorthand for flex-grow, flex-shrink, and flex-basis */
}
```

--------------------------------

### Responsive layout: Stack on mobile, row on desktop

Source: https://modern-css.com/reference/properties/flex-direction

Demonstrates a common responsive design pattern where items stack vertically on small screens and switch to a horizontal layout on larger screens. This is achieved using media queries.

```css
.card {
  display: flex;
  flex-direction: column;
}

@media (min-width: 640px) {
  .card {
    flex-direction: row;
  }
}
```

--------------------------------

### Quick Example of border-inline-end-color

Source: https://modern-css.com/reference/properties/border-inline-end-color

Use this snippet to apply a solid, gray border to the end of an element. Ensure the style and width are also defined for the border to be visible.

```css
.next-step {
  /* Adds a subtle gray line on the right side */
  border-inline-end-color: #cbd5e1;
  border-inline-end-style: solid;
  border-inline-end-width: 1px;
}
```

--------------------------------

### Modern HTML Attributes for Keyboard Control

Source: https://modern-css.com/mobile-keyboard-hints-without-javascript

These examples show the modern HTML approach using inputmode and enterkeyhint attributes for better mobile keyboard control. They provide semantic correctness and direct browser instruction without JavaScript.

```html
<!-- Numeric pad, no type=tel hack --><input type="text" inputmode="numeric" />
```

```html
<!-- Search keyboard with Search return key --><input type="search" inputmode="search" enterkeyhint="search" />
```

--------------------------------

### Set margin-top in CSS

Source: https://modern-css.com/reference/properties/margin-top

Use `margin-top` to add space above an element. This example adds 4rem of space to a section.

```css
section {
  /* Adds space at the top of a new section */
  margin-top: 4rem;
}
```

--------------------------------

### CSS View Transitions API (No Framework)

Source: https://modern-css.com/category/animation

Use `document.startViewTransition` for smooth DOM updates. Ensure the element has a `view-transition-name` property.

```javascript
document.startViewTransition(() => {
  document.body.innerHTML = newContent;
});
```

```css
.hero {
  view-transition-name: hero;
}
```

--------------------------------

### CSS transform-origin Example

Source: https://modern-css.com/reference/properties/transform-origin

Sets the 'hinge' point to the left side of an element so it opens correctly when rotated. This is useful for simulating door-like animations.

```css
.door {
  /* Fixes the 'hinge' point to the left side so the door opens correctly when rotated */
  transform-origin: left center;
  transition: transform 0.5s;
}

.door:hover {
  transform: perspective(600px) rotateY(-45deg);
}
```

--------------------------------

### @supports Selector Detection

Source: https://modern-css.com/css-feature-detection-without-javascript

This example shows how to use @supports to detect support for specific CSS selectors, such as the :has() pseudo-class. This is crucial for adopting newer selector features safely.

```css
@supports selector(:has()) {
  /* Styles */
}
```

--------------------------------

### Responsive Components with Container Queries

Source: https://modern-css.com/cheatsheet

Implement responsive designs based on container size rather than viewport size using container queries.

```css
@container (min-width: 400px)
```

--------------------------------

### Tailwind CSS for Frosted Glass Effect

Source: https://modern-css.com/frosted-glass-effect-without-opacity-hacks

This example shows how to apply the frosted glass effect using Tailwind CSS utility classes. It combines `backdrop-blur-md`, `backdrop-saturate-150`, and `bg-white/10` for a concise implementation.

```html
<div class="backdrop-blur-md backdrop-saturate-150 bg-white/10">  Glass card</div>
```

--------------------------------

### Basic @supports Rule for Grid Layout

Source: https://modern-css.com/css-feature-detection-without-javascript

This is a fundamental example of the @supports rule. It applies `display: grid` to elements with the class `.layout` only if the browser supports the `display: grid` declaration. This allows for progressive enhancement without JavaScript.

```css
@supports (display: grid) {
  .layout {
    display: grid;
  }
}
```

--------------------------------

### Basic @starting-style Usage

Source: https://modern-css.com/reference/at-rules/starting-style

Use @starting-style to define the initial state of an element before its transition begins. This is useful for entry animations.

```css
div {
  transition: opacity 0.5s, transform 0.5s;
  opacity: 1;
  transform: scale(1);

  /* Styles applied the moment the element is created/displayed */
  @starting-style {
    opacity: 0;
    transform: scale(0.9);
  }
}
```

--------------------------------

### Style read-only inputs

Source: https://modern-css.com/reference/selectors/read-only

Apply styles to elements that are in a read-only state. This example dims the input and changes the cursor to indicate it cannot be edited.

```css
input:read-only {
  /* Dims the input and changes the cursor to show it can't be edited */
  background-color: #eee;
  cursor: not-allowed;
  opacity: 0.6;
}
```

--------------------------------

### Using color-adjust for Printing

Source: https://modern-css.com/reference/properties/color-adjust

This example shows how to use the deprecated color-adjust property along with its -webkit- prefixed version to ensure exact color rendering when printing. Use print-color-adjust instead for modern applications.

```css
/* Deprecated: use print-color-adjust instead */
.print-header {
  color-adjust: exact;
  -webkit-print-color-adjust: exact;
}
```

--------------------------------

### CSS font-stretch Example

Source: https://modern-css.com/reference/properties/font-stretch

Use font-stretch to apply a condensed version of a font. This property is well-established and safe to use without fallbacks.

```css
h1 {
  /* Uses a condensed version of the font */
  font-stretch: 75%;
}
```

--------------------------------

### CSS border-end-start-radius Example

Source: https://modern-css.com/reference/properties/border-end-start-radius

Use this property to round the logical bottom-left corner of an element. It is a logical property and adapts to text direction.

```css
aside {
  /* Rounds the logical bottom-left corner */
  border-end-start-radius: 12px;
  padding: 1rem;
  background: #f8fafc;
}
```

--------------------------------

### Basic Element Rotation with rotate

Source: https://modern-css.com/reference/properties/rotate

Use the `rotate` property to tilt an element by a specified degree. This example rotates an icon by 45 degrees.

```css
.icon-rotated {
  rotate: 45deg;
  /* tilts the icon by 45 degrees */
}
```

--------------------------------

### Set border-block-start-color

Source: https://modern-css.com/reference/properties/border-block-start-color

Use this snippet to set the color, style, and width for the starting block border of an element. This is useful for creating consistent borders in flexible layout systems.

```css
.sticky-header {
  border-block-start-color: #f8fafc;
  border-block-start-style: solid;
  border-block-start-width: 1px;
}
```

--------------------------------

### Basic flex-grow Usage

Source: https://modern-css.com/reference/properties/flex-grow

Demonstrates how to use flex-grow to control item sizing. The sidebar remains fixed, while the main content expands to fill remaining space.

```css
.sidebar { flex-grow: 0; } /* stays fixed width */
.main-content { flex-grow: 1; } /* grows to fill all remaining space */
```

--------------------------------

### Flexbox Layout Example

Source: https://modern-css.com/playground/css-grid

Illustrates a Flexbox layout where items attempt to span columns using flex-basis, but may drift on resize. Gaps are handled by the flex container.

```css
.container { display: flex; flex-wrap: wrap; gap: 6px } .item { flex: 1 1 28% } .item.wide { flex-basis: 62% } /* not a real span */
```

--------------------------------

### Use CSS <image> type for background

Source: https://modern-css.com/reference/types/image

Any valid image type can be used for the background-image property. This example shows a fallback image and a color.

```css
.background {
  /* Any valid image type can be used here */
  background-image: image('fallback.png', blue);
}
```

--------------------------------

### CSS border-start-start-radius Example

Source: https://modern-css.com/reference/properties/border-start-start-radius

Use border-start-start-radius to round the logical top-left corner of an element. This property is well-established and safe to use without fallbacks.

```css
.modern-box {
  /* Rounds the logical top-left corner */
  border-start-start-radius: 15px;
  padding: 1.5rem;
  border: 2px solid #333;
}
```

--------------------------------

### Basic offset-distance Usage

Source: https://modern-css.com/reference/properties/offset-distance

This example demonstrates how to use offset-distance to position an element along a motion path. The offset-path property defines the path, and offset-distance sets the position along that path.

```css
.moving-dot {
  offset-path: path('M 0 0 L 100 100');
  /* Places the dot halfway along the line */
  offset-distance: 50%;
}
```

--------------------------------

### Set border-block-width

Source: https://modern-css.com/reference/properties/border-block-width

Use this snippet to set the border-block-width property. This example sets a 2px solid border with a dark gray color.

```css
.divider {
  border-block-style: solid;
  /* sets 2px thickness for both top and bottom edges */
  border-block-width: 2px;
  border-block-color: #333;
}
```

--------------------------------

### Set Underline Thickness

Source: https://modern-css.com/reference/properties/text-decoration-thickness

Use text-decoration-thickness to make underlines thicker than the default 1px. This example sets the underline thickness to 3px.

```css
a.bold-link {
  text-decoration: underline;
  /* Makes the underline 3px thick instead of the default 1px */
  text-decoration-thickness: 3px;
}
```

--------------------------------

### Vendor Prefixed CSS Keyframes

Source: https://modern-css.com/history-of-css

Before standardization, CSS animations required vendor prefixes for keyframes. This example shows the WebKit prefix.

```css
@-webkit-keyframes
```

```css
@-moz-keyframes
```

--------------------------------

### Animate Background Color with transition-property

Source: https://modern-css.com/reference/properties/transition-property

This example demonstrates how to animate only the background-color property of an element during a transition, while keeping other changes instant. Use this to optimize performance by avoiding animation of properties that might impact it.

```css
.box {
  background-color: white;
  border: 1px solid grey;
  /* Only animate the background, keep the border change instant */
  transition-property: background-color;
  transition-duration: 0.5s;
}
```

--------------------------------

### Style Video Subtitles with ::cue

Source: https://modern-css.com/reference/selectors/cue

Apply styles to VTT cues, such as subtitles or captions, within a media element. This example sets the background color, text color, and font family for the cues.

```css
::cue {
  /* Styles the subtitles in a video player */
  background-color: rgba(0, 0, 0, 0.8);
  color: #fff;
  font-family: inherit;
}
```

--------------------------------

### Define Entry Animations with `@starting-style`

Source: https://modern-css.com/history-of-css

Use `@starting-style` to define the initial styles for elements transitioning into the DOM. This enables entry animations without requiring JavaScript to manage initial states.

```css
@starting-style {
  opacity: 0;
}
```

--------------------------------

### Using font-variant-position for Subscript

Source: https://modern-css.com/reference/properties/font-variant-position

This example demonstrates how to apply the `sub` value to use real subscript characters provided by the font. Ensure the font you are using supports these characters.

```css
sub {
  /* Uses real subscript characters from the font */
  font-variant-position: sub;
}
```

--------------------------------

### Using a Custom Dashed Function in CSS

Source: https://modern-css.com/reference/types/dashed-function

This example shows the future syntax for using a custom dashed function within CSS. It is experimental and not yet supported in production.

```css
/* Future CSS: Using a custom dashed-function */
.element {
  --custom-anim: --my-logic(500ms);
}
```

--------------------------------

### CSS text-emphasis-position Example

Source: https://modern-css.com/reference/properties/text-emphasis-position

Use this snippet to place emphasis dots below the text instead of the default above. This is useful for specific design requirements.

```css
span.emphasis {
  text-emphasis: dot;
  /* Places the emphasis dots below the text instead of above it */
  text-emphasis-position: under left;
}
```

--------------------------------

### Placeholder for Production Type Scale

Source: https://modern-css.com/automatic-type-scale-without-manual-sizes

This comment indicates where to integrate your production-ready type scale, typically using design system tokens, as the experimental approach is not yet production-ready.

```css
/* No Tailwind equivalent yet. Use theme fontSize scale tokens for your production ladder. */
```

--------------------------------

### Set margin-left to 2rem

Source: https://modern-css.com/reference/properties/margin-left

Use margin-left to push an element to the right by adding space to its left. This example sets the margin to 2rem.

```css
.pushed-right {
  /* Pushes the element to the right by adding space to its left */
  margin-left: 2rem;
}
```

--------------------------------

### Outline-Driven Type Scale with pow()

Source: https://modern-css.com/changelog

Create experimental type scales using :heading(), sibling-index(), and pow() with a safe fallback ladder. This approach is experimental.

```css
:root {
  --base-size: 1rem;
  --scale-ratio: 1.2;
}

h1 {
  font-size: calc(var(--base-size) * pow(var(--scale-ratio), 4));
}

h2 {
  font-size: calc(var(--base-size) * pow(var(--scale-ratio), 3));
}

/* ... and so on for other heading levels */

/* Fallback ladder */
@media (min-width: 600px) {
  h1 {
    font-size: calc(var(--base-size) * 1.8);
  }
  h2 {
    font-size: calc(var(--base-size) * 1.5);
  }
}
```

--------------------------------

### Example with object-cover and object-center

Source: https://modern-css.com/responsive-images-without-background-image-hack

Illustrates using Tailwind CSS classes object-cover and object-center on an img tag for cropped and centered responsive images. This leverages object-fit and object-position CSS properties.

```html
<!-- object-cover = object-fit: cover, object-center = object-position: center --><img  src="photo.jpg" alt="..." loading="lazy"  class="object-cover object-center w-full h-48"/>
```

--------------------------------

### Basic grid-column usage

Source: https://modern-css.com/reference/properties/grid-column

Defines an item's start and end column lines. Use '1 / -1' to span the full width of the grid, which is useful for flexible layouts.

```css
.feature-box {
  grid-column: 1 / 3;
}

.full-width {
  grid-column: 1 / -1;
} /* spans across all columns */
```

```css
.hero {
  grid-column: 1 / -1;
}
```

--------------------------------

### Define a Triangle with shape()

Source: https://modern-css.com/reference/types/shape-function

Use the shape() function to create a clip-path that defines a triangular shape. This example demonstrates basic line commands to form the triangle.

```css
.custom-bg {
  /* Defines a triangle using the shape() function */
  clip-path: shape(from 0 0, line to 100% 0, line to 50% 100%, close);
}
```

--------------------------------

### Basic :host() Styling

Source: https://modern-css.com/reference/selectors/host

Use :host to set the default display, border, and padding for the custom element. This ensures a consistent look across different contexts.

```css
:host {
  /* Sets the default look of the custom element */
  display: block;
  border: 1px solid #ccc;
  padding: 1rem;
}
```

--------------------------------

### Linear Gradient Background

Source: https://modern-css.com/reference/types/gradient

Apply a linear gradient to an element's background. This example creates a diagonal gradient from a blue to a teal color.

```css
.hero-bg {
  /* A beautiful diagonal linear gradient */
  background: linear-gradient(135deg, #3b82f6 0%, #2dd4bf 100%);
}
```

--------------------------------

### Using light-dark() with CSS Variables

Source: https://modern-css.com/dark-mode-colors-without-duplicating-values

Demonstrates how to use the `light-dark()` function with existing CSS variables for a design token setup. The first variable is used for light mode, and the second for dark mode.

```css
light-dark(var(--text-light), var(--text-dark))
```

--------------------------------

### Enable Transitions for Discrete Properties with transition-behavior

Source: https://modern-css.com/reference/properties/transition-behavior

Use `transition-behavior: allow-discrete;` to enable smooth transitions for properties like `display`. This allows for entry and exit animations when elements are added or removed from the DOM.

```css
dialog {
  transition: display 0.5s, overlay 0.5s, opacity 0.5s;
  /* Enables smooth transitions for the 'display' property */
  transition-behavior: allow-discrete;
}
```

--------------------------------

### CSS border-bottom Shorthand Example

Source: https://modern-css.com/reference/properties/border-bottom

Use this shorthand to define the width, style, and color for the bottom border of an element. This is useful for creating underlines or dividers.

```css
h2 {
  /* border-bottom-width | border-bottom-style | border-bottom-color */
  border-bottom: 2px solid #e2e8f0;
  padding-bottom: 0.5rem;
  margin-bottom: 1rem;
}
```

--------------------------------

### CSS Padding Examples

Source: https://modern-css.com/reference/properties/padding

Use padding to create space around an element's content. Apply equal padding to all sides or specify vertical and horizontal values separately.

```css
.box {
  padding: 20px;
  /* equal padding on all sides */
}
```

```css
.card {
  padding: 1rem 2rem;
  /* vertical | horizontal */
}
```

--------------------------------

### Apply Styles to Fullscreen Video

Source: https://modern-css.com/reference/selectors/fullscreen

Use the :fullscreen pseudo-class to apply styles to an element when it enters full-screen mode. This example sets the background to black and removes the border for a video element during full-screen playback.

```css
video:fullscreen {
  /* Keeps the background black during full-screen video playback */
  background-color: black;
  border: none;
}
```

--------------------------------

### Object-fit: cover Example

Source: https://modern-css.com/reference/properties/object-fit

Use object-fit: cover to make an image fill its container while maintaining its aspect ratio. This prevents the image from being squashed or stretched.

```css
.profile-image {
  width: 200px;
  height: 200px;
  object-fit: cover;
  /* ensures the image fills the 200x200 square without distortion */
}
```

--------------------------------

### Basic outline-offset Usage

Source: https://modern-css.com/reference/properties/outline-offset

Use outline-offset to create a gap between an element's text and its outline. This example shows how to apply it to a focused link.

```css
a:focus {
  outline: 2px solid blue;
  /* Adds a 4px gap between the link text and the outline */
  outline-offset: 4px;
}
```

--------------------------------

### Quick Example of border-right-color

Source: https://modern-css.com/reference/properties/border-right-color

This snippet demonstrates how to set the physical right border color using `border-right-color`, along with its style and width. It's useful for styling specific sides of an element.

```css
.right-accent {
  /* Physical right border color */
  border-right-color: #ef4444;
  border-right-style: solid;
  border-right-width: 4px;
}
```

--------------------------------

### Define Grid Rows and Columns with grid-template

Source: https://modern-css.com/reference/properties/grid-template

Use grid-template to define explicit row and column tracks for a grid container. This example sets three row heights and two column widths.

```css
.page-layout {
  display: grid;
  /* rows / columns */
  grid-template: 100px 1fr 50px / 250px 1fr;
}
```

--------------------------------

### Modern Way: Entry Animation with @starting-style

Source: https://modern-css.com/entry-animations-without-javascript-timing

This modern CSS approach uses @starting-style to define the initial state of an element, allowing CSS transitions to animate the entry without any JavaScript timing. It simplifies the code and makes animations more declarative.

```css
.card   {  transition: opacity .3s, transform .3s;  @starting-style   {    opacity: 0;    transform: translateY(10px);  }}
```

--------------------------------

### Custom Underline with text-decoration

Source: https://modern-css.com/reference/properties/text-decoration

Use text-decoration to create a custom colored underline with a specific thickness and offset. This example applies a colored underline to links.

```css
a.modern-link {
  text-decoration: underline var(--accent) 2px;
  text-underline-offset: 4px;
  /* creates a custom colored underline with custom thickness and offset */
}
```

--------------------------------

### Basic color-mix() Usage

Source: https://modern-css.com/playground/css-color-mix

Demonstrates the basic syntax for blending two colors using color-mix(). The 'in oklch' specifies the color space for the interpolation.

```css
background: color-mix( in oklch, #8cb4ff 50%, #f472b6 );
```

--------------------------------

### CSS Resize Examples

Source: https://modern-css.com/reference/properties/resize

Demonstrates how to apply the `resize` property to control user resizing of elements. The `vertical` value allows resizing only downwards, while `both` permits resizing in all directions when `overflow` is set to `auto`.

```css
textarea.standard-input {
  resize: vertical;
  /* allows users to expand the box downwards only */
}

.resizable-panel {
  overflow: auto;
  resize: both;
  /* user can resize the panel in both directions */
}
```

--------------------------------

### Set margin-inline-start in CSS

Source: https://modern-css.com/reference/properties/margin-inline-start

Use margin-inline-start to logically indent elements from the start of the line. This property is well-established and works across many devices and browser versions.

```css
blockquote {
  /* Indents the blockquote from the start of the line logically */
  margin-inline-start: 40px;
}
```

--------------------------------

### CSS mask-image Gradient Example

Source: https://modern-css.com/reference/properties/mask-image

Applies a linear gradient mask to fade out the bottom half of an element. This is useful for creating fade effects.

```css
.fade-out {
  mask-image: linear-gradient(to bottom, black 50%, transparent 100%);
  /* fades out the bottom half of the element */
}
```

--------------------------------

### Quick text-box Example

Source: https://modern-css.com/reference/properties/text-box

Use this snippet to trim both sides of a text box using capital letters and the baseline as bounds. This property applies to block containers and inline boxes.

```css
h2 {
  /* Trims both sides of the text box using capital letters and the baseline as bounds */
  text-box: trim-both cap alphabetic;
}
```

--------------------------------

### Old Way: JavaScript Library Autocomplete

Source: https://modern-css.com/native-autocomplete-without-javascript

This snippet shows the traditional approach to implementing autocomplete using a JavaScript library like Awesomplete. It requires importing the library and configuring it with an input element and a list of suggestions. Custom CSS may also be needed for the dropdown appearance.

```javascript
/* Add autocomplete library (Awesomplete, Typeahead, etc.) */
import Awesomplete from 'awesomplete';
new Awesomplete(document.querySelector('#country'),  {
  list: ['Afghanistan', 'Albania', 'Algeria', ...]});
/* Plus custom CSS for the dropdown */
```

--------------------------------

### Stacking Context with isolation: isolate

Source: https://modern-css.com/cheatsheet

Create a new stacking context and prevent visual corruption with `isolation: isolate`, a cleaner alternative to opacity hacks.

```css
isolation: isolate
```

--------------------------------

### CSS Animation Timing Function Example

Source: https://modern-css.com/reference/properties/animation-timing-function

Applies a smooth, accelerating and decelerating animation to an element. This timing function makes the animation feel natural.

```css
.smooth-move {
  animation: slide 1s infinite;
  /* Starts slow, speeds up in the middle, then slows down at the end */
  animation-timing-function: ease-in-out;
}
```

--------------------------------

### Basic @scope Usage

Source: https://modern-css.com/reference/at-rules/scope

Apply styles to elements only when they are descendants of a specified selector. This example limits styles to images and paragraphs within an element matching '.article-body'.

```css
@scope (.article-body) {
  img {
    border-radius: 8px;
  }
  p {
    font-size: 1.1rem;
  }
}
```

--------------------------------

### Minimal JS for output Element Update

Source: https://modern-css.com/live-form-output-without-javascript-dom-writes

While the `<output>` element provides semantics, a small JavaScript listener is still needed to update its value when the associated input changes. This example shows the minimal JS required.

```javascript
const input = document.getElementById('volume');
const display = document.getElementById('display');
input.addEventListener('input', () =>  {
  display.textContent = input.value;
});
```

--------------------------------

### CSS Grid Shorthand Example

Source: https://modern-css.com/reference/properties/grid

Use the `grid` shorthand to define row and column tracks. The first value set before the slash defines the rows, and the value after the slash defines the columns.

```css
.container {
  display: grid;
  grid: 100px 1fr / 1fr 200px;
  /* rows / columns */
}
```

--------------------------------

### Set padding-block-start in CSS

Source: https://modern-css.com/reference/properties/padding-block-start

Use padding-block-start to add space at the start of an element's block axis. This is useful for maintaining consistent spacing regardless of writing mode.

```css
.article-header {
  /* Adds space at the top of the header logically */
  padding-block-start: 3rem;
}
```

--------------------------------

### CSS Container Queries for Responsive Components

Source: https://modern-css.com/category/layout

Use container queries with 'container-type' and '@container' rules to create responsive components based on container size, not just viewport size.

```css
.card   {  display: grid;  grid-template-columns: 1fr;}@media (min-width: 768px)   {  .card   {    grid-template-columns: auto 1fr;  }}
```

```css
.wrapper   {  container-type: inline-size;}.card   {  grid-template-columns: 1fr;}@container (width > 400px)   {  .card   {    grid-template-columns: auto 1fr;  }}
```

--------------------------------

### Vendor Prefixed CSS Transforms

Source: https://modern-css.com/history-of-css

CSS transforms, like rotation, were initially implemented with vendor prefixes. This example shows the WebKit prefix for transforms.

```css
-webkit-transform: rotate(45deg)
```

--------------------------------

### CSS Position Examples: Sticky and Absolute

Source: https://modern-css.com/reference/types/position

Demonstrates the use of 'sticky' positioning for headers and 'absolute' positioning for overlays. Sticky positioning keeps an element in view when scrolling, while absolute positioning removes it from the normal document flow.

```css
.sticky-header {
  position: sticky;
  top: 0;
  z-index: 100;
}

.overlay {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
```

--------------------------------

### Basic Rotation with Angle

Source: https://modern-css.com/reference/types/angle

Use the angle type to define rotation values in CSS transforms. This example shows a spinner rotating by half a turn.

```css
.spinner {
  transform: rotate(0.5turn); /* Equivalent to 180deg */
}
```

--------------------------------

### JS Animation Library for Bounce/Spring Easing

Source: https://modern-css.com/custom-easing-without-cubic-bezier-guessing

This example shows how to achieve bounce or spring easing using a JavaScript animation library. It's a common approach for complex easing effects before the advent of CSS linear().

```javascript
// JS animation library for bounce/spring easing
anime({
  targets: el,
  translateX: 300,
  easing: 'spring(1, 80, 10, 0)'
});
```

--------------------------------

### CSS border-start-end-radius Example

Source: https://modern-css.com/reference/properties/border-start-end-radius

Use `border-start-end-radius` to round the logical top-right corner of an element. This property adapts to different writing modes.

```css
.logical-card {
  /* Rounds the logical top-right corner */
  border-start-end-radius: 20px;
  background: #fff;
}
```

--------------------------------

### CSS scroll-margin-top Example

Source: https://modern-css.com/reference/properties/scroll-margin

Use scroll-margin-top to create an offset for sections, preventing fixed headers from overlapping content when navigating via ID links.

```css
section {
  scroll-margin-top: 100px;
  /* prevents a fixed header from overlapping the section when navigating via ID links */
}
```

--------------------------------

### Tailwind CSS Logical Utilities Example

Source: https://modern-css.com/direction-aware-layouts-without-left-and-right

This HTML snippet demonstrates Tailwind CSS v3.3+ logical utilities. The `dir="rtl"` attribute automatically flips the layout as needed.

```html
<!-- Tailwind v3.3+ logical utilities, flip with dir="rtl" --><!-- ms/me = margin-inline-start/end, ps/pe = padding-inline-start/end --><div class="ms-4 pe-4 border-s-2">  Works in LTR and RTL without extra rules</div>
```

--------------------------------

### Old Way: JS Library for Select Styling

Source: https://modern-css.com/customizable-selects-without-a-javascript-library

This example shows the traditional method of styling selects using a JavaScript library like Choices.js, which replaces the native element. It requires significant custom CSS.

```javascript
/* JS: replace native select with custom DOM */import Choices from 'choices.js';new Choices('#my-select',   {  searchEnabled: false,});/* Plus ~30 lines of custom CSS for   .choices__inner, .choices__list, etc. */
```

--------------------------------

### CSS Animations with Keyframes

Source: https://modern-css.com/history-of-css

CSS Animations allow for complex, multi-step animations without JavaScript. This example shows the use of @keyframes and animation properties.

```css
@keyframes
```

```css
animation-duration
```

```css
animation-timing-function
```

```css
animation-iteration-count
```

--------------------------------

### CSS Aspect Ratio Example

Source: https://modern-css.com/reference/types/ratio

Use the <ratio> data type with the `aspect-ratio` property to maintain a consistent shape for elements like video containers. It can also be used in media queries to apply styles based on screen aspect ratio.

```css
.video-container {
  /* Keeps the element at a consistent 16:9 widescreen shape */
  aspect-ratio: 16 / 9;
}

@media (aspect-ratio: 1/1) {
  /* Custom styles for square screens */
}
```

--------------------------------

### Format Nested List Items with counters()

Source: https://modern-css.com/reference/types/counters

Use the `counters()` function to format nested list items with a separator. This example formats list items as '1', '1.1', '1.1.1', etc.

```css
li::before {
  /* Formats nested list items as 1, 1.1, 1.1.1, etc. */
  content: counters(list-item, ".") " ";
}
```

--------------------------------

### Create Multi-Column Layout

Source: https://modern-css.com/reference/properties/columns

Use the columns property to set up to 3 columns, each with a minimum width of 200px, and define the gap between them. This is useful for text-heavy content where readability can be improved by breaking it into columns.

```css
.multi-column-text {
  columns: 3 200px;
  /* sets up to 3 columns, each at least 200px wide */
  column-gap: 2rem;
}
```

--------------------------------

### CSS line-clamp Example

Source: https://modern-css.com/reference/properties/line-clamp

Use this CSS to limit text to a specific number of lines and add an ellipsis. Ensure the element has `display: -webkit-box`, `-webkit-box-orient: vertical`, and `overflow: hidden` for proper functionality.

```css
.card-excerpt {
  display: -webkit-box;
  -webkit-box-orient: vertical;
  /* Standard property (supported in modern browsers) */
  line-clamp: 3;
  overflow: hidden;
}
```

--------------------------------

### CSS break-before: always

Source: https://modern-css.com/reference/properties/break-before

Ensures that an element, such as a chapter title, always starts at the top of a new page. This is a common use case for controlling document flow.

```css
.chapter-title {
  /* Ensures every chapter starts at the top of a new page */
  break-before: always;
}
```

--------------------------------

### Style and Animate Tooltip Entry

Source: https://modern-css.com/articles/build-a-tooltip-system

Style the tooltip using standard CSS properties and implement entry animations using `transition` and `@starting-style`. `transition-behavior: allow-discrete` ensures smooth animations from the hidden state.

```css
#tooltip {
  background: #1a1a22;
  color: #e4e4e7;
  padding: 8px 14px;
  border-radius: 8px;
  font-size: 0.85rem;
  box-shadow: 0 4px 16px rgba(0,0,0,.2);

  /* Entry animation */
  transition: opacity 0.2s, translate 0.2s;
  transition-behavior: allow-discrete;

  @starting-style {
    opacity: 0;
    translate: -50% 16px;
  }
}
```

--------------------------------

### Style Scrollbar Down Button

Source: https://modern-css.com/reference/selectors/scroll-button

Use ::scroll-button(down) to target and style the down arrow button on a scrollbar. This example applies a brand background and a circular border.

```css
.chat-window::scroll-button(down) {
  /* Styles the down arrow button on the scrollbar */
  background: var(--brand);
  border-radius: 50%;
}
```

--------------------------------

### Apply Frosted Glass Effect with backdrop-filter

Source: https://modern-css.com/reference/properties/backdrop-filter

Use backdrop-filter to create a frosted glass effect on an element. This example applies a blur and brightness adjustment to the background.

```css
.glass-panel {
  background: rgba(255, 255, 255, 0.2);
  backdrop-filter: blur(10px) brightness(1.2);
  /* creates a modern frosted glass/translucent surface */
}
```

--------------------------------

### CSS Transition Duration with <time>

Source: https://modern-css.com/reference/types/time

Use the <time> data type to define transition durations in seconds or milliseconds. This example sets a transition to last for 500 milliseconds.

```css
.fade-in {
  /* A 500ms (half second) transition time */
  transition-duration: 0.5s;
  /* Also valid: 500ms */
}
```

--------------------------------

### linear() Easing with Overshoot

Source: https://modern-css.com/custom-easing-without-cubic-bezier-guessing

This example shows a linear() easing curve that includes an overshoot value (1.2) at a specific point (60% of the duration), creating a bounce-like effect.

```css
linear(0, 1.2 60%, 1)
```

--------------------------------

### Vendor Prefixed Rounded Corners

Source: https://modern-css.com/history-of-css

Early implementation of rounded corners in browsers required vendor prefixes. This example shows the WebKit prefix for border-radius.

```css
-webkit-border-radius
```

--------------------------------

### Basic SVG Path Fill

Source: https://modern-css.com/reference/properties/fill

Use the fill property to set a solid color for an SVG shape. This example paints an SVG path with a tomato color.

```css
svg path {
  fill: #ff6347;
  /* paints the SVG shape with a Tomato color */
}
```

--------------------------------

### Basic scroll-margin-block-end Usage

Source: https://modern-css.com/reference/properties/scroll-margin-block-end

Use scroll-margin-block-end to create a buffer at the end of an element when it snaps into view. This example sets a 30px margin and aligns the element to the end.

```css
.card {
  /* Keeps a 30px 'buffer' at the end of the element when it snaps into view */
  scroll-margin-block-end: 30px;
  scroll-snap-align: end;
}
```

--------------------------------

### CSS Custom Highlight API for Text Styling

Source: https://modern-css.com/whats-new-in-css-2026

Style custom text highlights using the Highlight API. This example shows JavaScript to create a range and CSS to style a 'search' highlight.

```javascript
/* JavaScript: create ranges */
const range = new Range();
range.setStart(node, 0);
range.setEnd(node, 5);
CSS.highlights.set('search', new Highlight(range));
```

```css
/* CSS: style the highlight */
::highlight(search) {
  background: oklch(85% 0.15 90);
  color: black;
}
```

--------------------------------

### Basic Masking with Linear Gradient

Source: https://modern-css.com/reference/properties/mask

Use a linear gradient to fade an element's content from opaque to transparent. This example fades an image out from top to bottom.

```css
.masked-image {
  mask: linear-gradient(black, transparent);
  /* fades the image out from top to bottom */
}
```

--------------------------------

### Set SVG Border Thickness

Source: https://modern-css.com/reference/properties/stroke-width

Use stroke-width to define the thickness of the border for an SVG circle. This example sets a 4-pixel thick border.

```css
circle.outer-ring {
  /* Sets a 4px thick border for the SVG circle */
  stroke-width: 4px;
}
```

--------------------------------

### Specify Reading Order with reading-order

Source: https://modern-css.com/reference/properties/reading-order

Use the reading-order property to assign a numerical value to elements. Lower numbers are navigated first. This example shows how item-b will be navigated before item-a.

```css
.item-a { reading-order: 2; }
.item-b { reading-order: 1; }
/* Navigation will hit item-b first, then item-a */
```

--------------------------------

### CSS Entry Animations with @starting-style

Source: https://modern-css.com/category/animation

Defines initial styles for elements entering the document, allowing animations to run smoothly on page load. The modern `@starting-style` rule sets these initial states directly in CSS, eliminating the need for JavaScript workarounds to trigger transitions.

```css
.card {
  opacity: 0;
  transform: translateY(10px);
}
.card.visible {
  opacity: 1;
  transform: none;
}
```

```javascript
// JS: must run after paint or transition won't run
requestAnimationFrame(() => {
  requestAnimationFrame(() => {
    el.classList.add('visible');
  });
});
```

```css
.card {
  transition: opacity .3s, transform .3s;
  @starting-style {
    opacity: 0;
    transform: translateY(10px);
  }
}
```

--------------------------------

### Example Usage of overscroll-behavior: contain

Source: https://modern-css.com/preventing-scroll-chaining-without-javascript

This HTML demonstrates a scrollable div with `overflow-y: auto` and `overscroll-contain` classes, showing how scroll chaining to the page is prevented.

```html
<!-- overscroll-contain stops scroll chaining to the page --><div class="overflow-y-auto overscroll-contain h-64">  Scrollable modal content</div><!-- overscroll-none also disables pull-to-refresh on Android -->
```

--------------------------------

### color-mix() Color Space Comparison

Source: https://modern-css.com/playground/css-color-mix

Illustrates how the same input colors and mix percentage yield different results when using different color spaces (oklch, srgb, hsl) with color-mix().

```css
color-mix

```

```css
color-mix

```

```css
color-mix

```

--------------------------------

### Basic :nth-child() Selector Example

Source: https://modern-css.com/playground/nth-child-visualizer

This CSS selector targets the first child element within its parent. It's equivalent to using :nth-child(1).

```css
.item:first-child { background: var(--blue); }
```

--------------------------------

### Basic border-inline Usage

Source: https://modern-css.com/reference/properties/border-inline

Use border-inline to set the width, style, and color for both the start and end borders in the inline dimension. This is the logical equivalent of setting both left and right borders.

```css
.button-alt {
  /* Logical equivalent of setting both left and right borders */
  border-inline: 4px solid #000;
  padding: 0.5rem 1rem;
}
```

--------------------------------

### Setting mask-border-outset

Source: https://modern-css.com/reference/properties/mask-border-outset

Use this property to extend the mask border outwards from the element's edges. This example extends the mask by 10 pixels.

```css
.masked-element {
  /* Extends the mask 10px beyond the element edges */
  mask-border-outset: 10px;
}
```

--------------------------------

### Add Decorative Content with ::before

Source: https://modern-css.com/reference/selectors/before

Use the ::before pseudo-element to insert content like quotes or icons. Ensure the 'content' property is set, and style it as needed.

```css
blockquote::before {
  content: '“';
  font-size: 2rem;
  color: #ccc;
}
```

--------------------------------

### Old Hack: Background Image for Cropped Images

Source: https://modern-css.com/responsive-images-without-background-image-hack

Demonstrates the traditional method of using background-image and background-size: cover on a div to achieve cropped images. This approach lacks semantic HTML and native lazy loading.

```html
<!-- div instead of img: no alt, not semantic --><div class="card-image"></div>.card-image   {  background-image: url(photo.jpg);  background-size: cover;  background-position: center;}
```

--------------------------------

### SVG Text Baseline Shift Example

Source: https://modern-css.com/reference/properties/baseline-shift

Use baseline-shift with 'super' to shift text upward, commonly for mathematical powers. Adjust font-size for relative scaling.

```css
text.exponent {
  /* Shifts the text upward for mathematical powers */
  baseline-shift: super;
  font-size: 0.7em;
}
```

--------------------------------

### Enable automatic view transitions for multi-page navigation

Source: https://modern-css.com/reference/at-rules/view-transition

Opt the entire document into automatic view transitions for multi-page navigations. This is a global setting.

```css
@view-transition {
  /* Opts the entire document into automatic view transitions for multi-page navigations */
  navigation: auto;
}
```

--------------------------------

### Tailwind CSS with Forced-Colors Utility Classes

Source: https://modern-css.com/high-contrast-support-without-broken-ui

This example shows how to apply forced-colors styling using Tailwind CSS utility classes. These classes map directly to system colors, ensuring accessibility in high contrast modes.

```html
<button class="bg-indigo-500 text-white border border-transparent forced-colors:bg-[ButtonFace] forced-colors:text-[ButtonText] forced-colors:border-[ButtonText]">Subscribe</button>
```

--------------------------------

### CSS View Transitions API (No Framework)

Source: https://modern-css.com/category/css

Implement smooth page transitions without a framework. The `document.startViewTransition` function wraps DOM updates, allowing CSS to animate the changes.

```javascript
document.startViewTransition(() => {
  document.body.innerHTML = newContent;
});
.hero {
  view-transition-name: hero;
}
/* Optional: ::view-transition-old/new(hero) */
```

--------------------------------

### CSS font-size Examples

Source: https://modern-css.com/reference/properties/font-size

Use 'rem' units for scalable font sizes. '3rem' is three times the base font size, suitable for headings. '0.875rem' is useful for smaller utility text.

```css
h1 {
  font-size: 3rem;
  /* 3x the base font size */
}

.small-print {
  font-size: 0.875rem;
  /* standard for smaller utility text */
}
```

--------------------------------

### Set Maximum Inline Size with max-inline-size

Source: https://modern-css.com/reference/properties/max-inline-size

Use max-inline-size to cap the width of text for improved readability. This example sets a maximum width of 60 characters.

```css
.readable-text {
  /* Caps the width of text to 60ch for better readability logically */
  max-inline-size: 60ch;
}
```

--------------------------------

### JavaScript Feature Detection Example

Source: https://modern-css.com/css-feature-detection-without-javascript

This JavaScript code demonstrates the older method of detecting CSS feature support by checking `CSS.supports()` and adding a class to the root element if the feature is supported. This approach requires JavaScript to run before styles can be applied conditionally.

```javascript
// JS: detect support, add class
if (CSS.supports('container-type', 'inline-size')) {
  document.documentElement.classList.add('has-container-queries');
}
```

--------------------------------

### Old CSS Corner Shape Hack using clip-path

Source: https://modern-css.com/corner-shapes-beyond-rounded-borders

This example shows the older, more complex method of creating custom corner shapes using `clip-path` with numerous polygon points. It requires significantly more code than the modern `corner-shape` property.

```css
.card   {  clip-path: polygon(    0% 10%,    2% 4%,    4% 2%,    10% 0%,    /* ...16 more points */  );}
```

--------------------------------

### Animate New Element State in View Transition

Source: https://modern-css.com/reference/selectors/view-transition-new

Use ::view-transition-new to apply animations to an element's state after a view transition. This example makes the new header slide in from the top.

```css
::view-transition-new(main-header) {
  /* Makes the new header slide in from the top instead of just fading in */
  animation: slide-down 0.5s ease-out;
}
```

--------------------------------

### Basic @media Rule

Source: https://modern-css.com/reference/at-rules/media

Applies styles when the screen width is 600 pixels or less. This is commonly used for responsive design.

```css
@media only screen and (max-width: 600px) {
  body {
    background-color: lightblue;
  }
}
```

--------------------------------

### Apply condensed font width

Source: https://modern-css.com/reference/properties/font-width

Use font-width with a percentage value to squeeze the font width. This example sets the font width to 75% of its normal width.

```css
.condensed-text {
  /* Squeezes the font width to 75% */
  font-width: 75%;
}
```

--------------------------------

### Scroll-Driven Animations with View Timeline

Source: https://modern-css.com/whats-new-in-css-2026

Implement scroll-driven animations using animation-timeline: scroll() and view(). This example uses view() to create a fade-in animation based on element visibility.

```css
.reveal {
  animation: fade-in linear;
  animation-timeline: view();
  animation-range: entry 0% entry 100%;
}

@keyframes fade-in {
  from { opacity: 0; transform: translateY(20px); }
  to { opacity: 1; transform: translateY(0); }
}
```

--------------------------------

### Dynamic Theming with Custom Properties

Source: https://modern-css.com/mixing-colors-without-a-preprocessor

Combine color-mix() with CSS custom properties for dynamic theming at runtime, without recompilation.

```css
color-mix(in oklch, var(--brand) 80%, white)
```

--------------------------------

### HTML with Tailwind CSS for Wide-Gamut Colors

Source: https://modern-css.com/vivid-colors-beyond-srgb

This HTML example demonstrates using Tailwind CSS classes with custom values for oklch and display-p3 colors to achieve vivid wide-gamut effects. Tailwind v4 natively supports oklch.

```html
<!-- Arbitrary values accept oklch and display-p3 --><h1 class="text-[oklch(0.7_0.25_29)]">Vivid wide-gamut</h1><!-- Tailwind v4 uses oklch natively for its color palette --><div class="bg-[color(display-p3_1_0.2_0.1)]">P3 red</div>
```

--------------------------------

### Set mask-origin to padding-box

Source: https://modern-css.com/reference/properties/mask-origin

Use this snippet to base the mask position on the padding box of the element. This ensures the mask starts within the padding area.

```css
.masked-element {
  /* Bases the mask position on the padding box */
  mask-origin: padding-box;
}
```

--------------------------------

### Responsive Clip Paths

Source: https://modern-css.com/cheatsheet

Create responsive clip-path shapes directly in CSS using `clip-path: polygon()`.

```css
clip-path: polygon(0 0, 100% 0, ...);
```

--------------------------------

### Round to nearest multiple of 10px

Source: https://modern-css.com/reference/types/round

Use round() to ensure a width always rounds to the nearest 10 pixels. For example, 15.7px rounds to 20px.

```css
.box {
  /* Rounds 15.7px to the nearest multiple of 10px (which is 20px) */
  width: round(15.7px, 10px);
}
```

--------------------------------

### Style List Item Markers with ::marker

Source: https://modern-css.com/reference/selectors/marker

Use the ::marker pseudo-element to target and style the bullet points or numbers of list items. This example demonstrates changing the color and font-weight of the markers.

```css
li::marker {
  color: #ff6347;
  font-weight: bold;
  /* makes the list bullets bold and tomato red */
}
```

--------------------------------

### Basic text-wrap Usage

Source: https://modern-css.com/reference/properties/text-wrap

Use 'balance' for a shorthand that applies both nowrap and balanced styles. This is useful for achieving visually appealing text wrapping.

```css
h1 {
  /* Short for nowrap and balanced styles */
  text-wrap: balance;
}
```

--------------------------------

### Style custom element by state

Source: https://modern-css.com/reference/selectors/state

Use this to style a custom element when it is in a specific internal state. For example, styling a 'my-map' element when it is in a 'collapsed' state.

```css
/* Styles a custom map element when it's in a specific internal 'collapsed' state */
my-map:state(collapsed) {
  height: 100px;
  overflow: hidden;
}
```

--------------------------------

### Displaying a Counter Value with counter()

Source: https://modern-css.com/reference/types/counter

Use the counter() function within the 'content' property to display the current value of a named counter. This example shows how to prefix 'Section ' before the counter value.

```css
h2::before {
  /* Displays the 'section-count' counter value */
  content: "Section " counter(section-count) ": ";
}
```

--------------------------------

### Set Inline Start Padding

Source: https://modern-css.com/reference/properties/padding-inline-start

Use padding-inline-start to add space on the left side for left-to-right text or the right side for right-to-left text. This property is well-established and safe to use without fallbacks.

```css
.navigation-item {
  /* Adds space on the left (for LTR) or right (for RTL) logically */
  padding-inline-start: 1rem;
}
```

--------------------------------

### Old CSS approach for headline balancing

Source: https://modern-css.com/balanced-headlines-without-manual-line-breaks

Demonstrates the traditional method using manual `<br>` tags or a JavaScript library for balancing headlines. Requires manual HTML adjustments or external scripts.

```css
/* HTML: manual <br> or wrapper for JS */h1   {  text-align: center;  max-width: 40ch;  /* Balance-Text.js: script + init */  /* or insert <br> in CMS/HTML */}
```

--------------------------------

### Basic scroll-padding-inline-start Usage

Source: https://modern-css.com/reference/properties/scroll-padding-inline-start

Use scroll-padding-inline-start to keep snapped items a specific distance from the left edge of the scroller.

```css
.product-slider {
  /* Keeps products 40px away from the left edge of the scroller when they snap */
  scroll-padding-inline-start: 40px;
}
```

--------------------------------

### Define CSS Animation with @keyframes

Source: https://modern-css.com/reference/at-rules/keyframes

Use @keyframes to define animation steps and apply it to an element using the 'animation' property. The example shows a fade-in effect.

```css
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(10px); }
  to { opacity: 1; transform: translateY(0); }
}

.fade-in-element {
  animation: fadeIn 0.5s ease-out forwards;
}
```

--------------------------------

### CSS: Position element with inset-inline-start

Source: https://modern-css.com/reference/properties/inset-inline-start

Use inset-inline-start to position an element relative to the start of the line. This property is ideal for creating floating labels or other UI elements that need to adapt to different text directions.

```css
.floating-label {
  position: absolute;
  /* Positions at the start of the line (left in English, right in Hebrew) */
  inset-inline-start: 1rem;
  inset-block-start: -0.5rem;
}
```

--------------------------------

### Define Scroll Timeline Axis

Source: https://modern-css.com/reference/properties/scroll-timeline-axis

Use scroll-timeline-axis to specify the scrollbar that will drive the animation. This example sets the vertical scrollbar to control the animation progress.

```css
.scroller {
  /* The animation will progress as you scroll vertically */
  scroll-timeline-axis: block;
  scroll-timeline-name: --main-timeline;
}
```

--------------------------------

### Set SVG circle radius with CSS

Source: https://modern-css.com/reference/properties/r

Use the 'r' property to define the radius of an SVG circle. This example shows setting a base radius and animating it on hover.

```css
circle.dot {
  fill: var(--accent);
  /* Sets the radius to 10 pixels */
  r: 10px;
  transition: r 0.3s ease;
}

circle.dot:hover {
  r: 15px;
}
```

--------------------------------

### Quick Example of scroll-margin-block

Source: https://modern-css.com/reference/properties/scroll-margin-block

Use scroll-margin-block to add a buffer on both the top and bottom when an element snaps into view during scrolling. This is useful for ensuring content is not obscured by fixed headers or footers.

```css
h2 {
  /* Adds a 2rem buffer on both the top and bottom when snapping to this header */
  scroll-margin-block: 2rem;
}
```

--------------------------------

### Basic <rem> Usage in CSS

Source: https://modern-css.com/reference/types/rem

Demonstrates setting a root font size and then using 'rem' units for element sizing. This ensures consistent scaling across nested elements.

```css
html {
  font-size: 16px;
}

.my-text {
  /* This will be exactly 32 pixels regardless of where it's nested */
  font-size: 2rem;
}
```

--------------------------------

### Create Dashed Lines with stroke-dasharray

Source: https://modern-css.com/reference/properties/stroke-dasharray

Use stroke-dasharray to define a pattern of dashes and spaces for SVG paths. This example creates a 10px dash followed by a 5px space.

```css
line.dashed-path {
  /* Creates a pattern of 10px dashes and 5px spaces */
  stroke-dasharray: 10 5;
}
```

--------------------------------

### Set Horizontal Radius with rx

Source: https://modern-css.com/reference/properties/rx

Use the `rx` property to round the horizontal corners of an SVG rectangle. This example demonstrates setting a 15px radius.

```css
rect.card {
  /* Rounds the horizontal corners of the SVG rectangle */
  rx: 15px;
}
```

--------------------------------

### Apply French Styles with :lang()

Source: https://modern-css.com/reference/selectors/lang

Use the :lang() pseudo-class to apply specific styles, like custom quotes, to elements written in a particular language. This example targets French text.

```css
p:lang(fr) {
  /* Applies specific styles for French text */
  quotes: '« ' ' »';
}
```

--------------------------------

### CSS place-self Example

Source: https://modern-css.com/reference/properties/place-self

Use place-self to align a specific grid item to the bottom-right of its cell. This property overrides the default alignment for that individual item.

```css
.special-item {
  /* this specific grid item will align itself to the bottom-right of its cell */
  place-self: end end;
}
```

--------------------------------

### Select the Last Paragraph

Source: https://modern-css.com/reference/selectors/nth-last-of-type

This example targets only the very last paragraph element within its parent container. Use this when you need to apply specific styles to the final instance of an element type.

```css
p:nth-last-of-type(1) {
  /* Targets only the very last paragraph of an article */
  margin-bottom: 0;
}
```

--------------------------------

### Modern Way: Opening Dialog with commandfor and command

Source: https://modern-css.com/modal-controls-without-onclick-handlers

This snippet illustrates the modern, declarative way to open a dialog using the commandfor and command attributes. It links a button to a dialog element, specifying the 'show-modal' command without any JavaScript.

```html
<button commandfor="dlg" command="show-modal">  Open Dialog</button><dialog id="dlg">...</dialog>
```

--------------------------------

### CSS border-top Shorthand

Source: https://modern-css.com/reference/properties/border-top

Use the border-top property to set the width, style, and color of the top border in a single declaration. This example sets a 1px solid border with a light gray color.

```css
header {
  /* physical shorthand: width | style | color */
  border-top: 1px solid #e5e7eb;
  margin-top: 2rem;
}
```

--------------------------------

### Responsive Image Width with min()

Source: https://modern-css.com/reference/types/min

Use min() to set a responsive width that takes up 80% of the viewport but is capped at 600px. This ensures the image shrinks with the screen but doesn't exceed a maximum size.

```css
.responsive-image {
  /* Takes up 80% of the screen but never exceeds 600px */
  width: min(80vw, 600px);
}
```

--------------------------------

### CSS border-block-end Quick Example

Source: https://modern-css.com/reference/properties/border-block-end

Use this snippet to apply a border to the end of the block dimension, which is equivalent to the bottom border. This is useful for consistent styling across different writing modes.

```css
section {
  /* Logical equivalent of border-bottom */
  border-block-end: 1px solid #e2e8f0;
}
```

--------------------------------

### Apply Rounded Top-Right Corner

Source: https://modern-css.com/reference/properties/border-top-right-radius

Use this snippet to apply a rounded curve to the top-right corner of an element. This example uses a pixel value for the radius.

```css
.pill-tab {
  /* Rounds the top-right corner */
  border-top-right-radius: 12px;
  background: #f8fafc;
  border: 1px solid #e2e8f0;
}
```

--------------------------------

### Using calc-size() for Auto Height Animation

Source: https://modern-css.com/reference/types/calc-size

Use calc-size(auto, size) to allow mathematical operations on 'auto' heights, enabling smooth animations from a height of 0 to auto. This feature is experimental and requires fallbacks for production.

```css
.accordion-content {
  /* Experimental: allows math on 'auto' height */
  height: calc-size(auto, size);
  transition: height 0.3s ease;
}
```

--------------------------------

### Apply styles to an active button

Source: https://modern-css.com/reference/selectors/active

Use the :active pseudo-class to apply styles when a button is being clicked or tapped. This example adds a subtle press-down effect and changes the background color.

```css
button:active {
  transform: translateY(2px);
  background-color: #6d28d9;
}
```

--------------------------------

### Using a CSS Gradient for Border Image

Source: https://modern-css.com/reference/properties/border-image-source

This example demonstrates how to use a linear gradient as the source for an element's border. Ensure the border-image-slice property is set to 1 to ensure the gradient is used for the entire border.

```css
.gradient-border {
  border: 5px solid;
  /* Uses a linear gradient as the border instead of a flat color */
  border-image-source: linear-gradient(to right, #7c3aed, #ec4899);
  border-image-slice: 1;
}
```

--------------------------------

### Apply Styles to Enabled Inputs

Source: https://modern-css.com/reference/selectors/enabled

Use the :enabled pseudo-class to apply styles to form elements like inputs only when they are enabled. This example adds a background color and border to enabled inputs.

```css
input:enabled {
  /* Adds a subtle hover effect to clickable inputs only */
  background-color: #fff;
  border: 1px solid #3b82f6;
}
```

--------------------------------

### Page Transitions with View Transitions API

Source: https://modern-css.com/cheatsheet

Create smooth page transitions using the View Transitions API with `@view-transition` and `view-transition-name`.

```css
view-transition-name + @view-transition;
```

--------------------------------

### Set block-size in CSS

Source: https://modern-css.com/reference/properties/block-size

Use block-size to define the height of an element, which will automatically adjust to the writing mode. This example sets a fixed height for a container.

```css
.modern-container {
  /* Respects writing-mode: usually height in English */
  block-size: 300px;
  background: #f1f5f9;
}
```

--------------------------------

### Using clamp() with Tailwind CSS

Source: https://modern-css.com/fluid-typography-without-media-queries

Demonstrates applying fluid typography using clamp() within Tailwind CSS utility classes. This approach works for text sizes, spacing, and other CSS properties.

```html
<!-- Arbitrary value: clamp() works in any sizing utility -->
<h1 class="text-[clamp(1rem,2.5vw,2rem)]">Fluid heading</h1>
<!-- Also works for spacing -->
<section class="px-[clamp(1rem,5vw,4rem)]">Fluid padding</section>
```

--------------------------------

### Tailwind CSS with Arbitrary Variants for Validation

Source: https://modern-css.com/form-validation-styles-without-javascript

Example of using Tailwind CSS with arbitrary variants to apply validation styles. This method achieves the same :user-invalid and :user-valid behavior without custom CSS.

```html
<input  class="[&:user-invalid]:border-red-500 [&:user-valid]:border-green-500"  required/><!-- Fires only after user interaction, not on page load -->
```

--------------------------------

### Apply Styles for High-Density Displays with @media resolution

Source: https://modern-css.com/reference/types/resolution

Use this media query to apply styles, such as higher-resolution background images, only to screens that support high pixel densities. This ensures that users with standard displays do not load unnecessarily large image assets.

```css
@media (min-resolution: 2dppx) {
  /* Styles applied only to high-density/Retina displays */
  .icon {
    background-image: url('icon-2x.png');
  }
}
```

--------------------------------

### Set Animation Duration

Source: https://modern-css.com/reference/properties/animation-duration

Use this snippet to set the duration for an animation. The example sets the animation to complete one rotation every 0.8 seconds.

```css
.spinner {
  animation-name: spin;
  /* Completes one rotation every 0.8 seconds */
  animation-duration: 0.8s;
  animation-iteration-count: infinite;
}
```

--------------------------------

### Table with Collapsed Borders

Source: https://modern-css.com/reference/properties/border-collapse

Use 'collapse' to create single-line borders between table cells for a clean layout. This example sets up basic table styling with collapsed borders and padding.

```css
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  border: 1px solid #ddd;
  padding: 12px;
  /* creates a clean, modern data table layout */
}
```

--------------------------------

### Animate Old Sidebar Shrinking

Source: https://modern-css.com/reference/selectors/view-transition-old

Use ::view-transition-old to apply an animation to an element's state before a view transition. This example makes the old sidebar shrink away as it disappears.

```css
::view-transition-old(sidebar) {
  /* Makes the old sidebar shrink away as it disappears */
  animation: shrink-out 0.4s ease-in;
}
```

--------------------------------

### Set background-origin to content-box

Source: https://modern-css.com/reference/properties/background-origin

Use this to position the background image starting at the edge of the content area, ignoring padding and border. This is useful when you want the background to fill only the content area.

```css
.box {
  border: 10px dashed #ccc;
  padding: 20px;
  background-image: url('logo.png');
  background-repeat: no-repeat;
  /* Image starts at the edge of the content, ignoring the padding */
  background-origin: content-box;
}
```

--------------------------------

### Basic @import Usage

Source: https://modern-css.com/reference/at-rules/import

Import style rules from other stylesheets. Place @import at the very top of your CSS file.

```css
@import url('variables.css');
@import url('components/buttons.css');
@import url('layout.css') screen and (min-width: 768px);
/* imports styles conditionally based on screen size */
```

--------------------------------

### Basic inset-inline-end Usage

Source: https://modern-css.com/reference/properties/inset-inline-end

Use inset-inline-end to position an element at the end of the line, which corresponds to 'right' in left-to-right text and 'left' in right-to-left text. This example positions a badge absolutely.

```css
.badge {
  position: absolute;
  /* Positions at the end of the line (right in English, left in Arabic) */
  inset-inline-end: 1rem;
  inset-block-start: 1rem;
}
```

--------------------------------

### Example of using arbitrary values for typed attr()

Source: https://modern-css.com/attr-driven-layouts-without-js-charts

This comment indicates that specific Tailwind utility classes for typed attr() are not yet available. It suggests using arbitrary values or inline style bindings for experimental demos.

```css
/* No Tailwind utility yet. Use arbitrary values or inline style bindings for experimental typed attr() demos. */
```

--------------------------------

### Basic offset shorthand usage

Source: https://modern-css.com/reference/properties/offset

Use the offset property as a shorthand to define the motion path, distance, and rotation of an element in one line. This example sets a path and positions the element 50% along it with default rotation.

```css
.animated-item {
  /* Short for: path, distance, and rotation 'auto' */
  offset: path('M 0 0 L 100 0') 50% auto;
}
```

--------------------------------

### Applying Multiple CSS Filter Functions

Source: https://modern-css.com/reference/types/filter-function

Combine multiple filter functions within the 'filter' property to achieve complex visual effects. This example applies contrast, brightness, and blur.

```css
.special-effect {
  /* Multiple filter functions combined */
  filter: contrast(150%) brightness(80%) blur(2px);
}
```

--------------------------------

### Apply letter-spacing to uppercase headings

Source: https://modern-css.com/reference/properties/letter-spacing

Use letter-spacing to add breathing room for capitalized headers, improving readability. This example applies uppercase transformation and a 0.1em letter spacing.

```css
.uppercase-heading {
  text-transform: uppercase;
  letter-spacing: 0.1em;
  /* adds breathing room for capitalized headers */
}
```

--------------------------------

### Span multiple columns with grid-column

Source: https://modern-css.com/reference/properties/grid-column

Use the 'span' keyword to make an item occupy a specified number of columns without needing to define the start line. This is useful for auto-placed items.

```css
.feature-card {
  grid-column: span 2;
}
```

--------------------------------

### Basic animation-name Usage

Source: https://modern-css.com/reference/properties/animation-name

Applies a CSS animation named 'slide-box' to an element with a duration of 2 seconds. This is a fundamental way to start using CSS animations.

```css
.element {
  animation-name: slide-box;
  animation-duration: 2s;
}
```

--------------------------------

### Apply Dashed Line Style to Border

Source: https://modern-css.com/reference/types/line-style

Use the 'dashed' line-style to create a dashed border. This example applies a dashed bottom border to a divider element.

```css
.divider {
  /* Uses the 'dashed' line-style */
  border-bottom: 2px dashed #cbd5e1;
}
```

--------------------------------

### Perceptually Uniform Colors

Source: https://modern-css.com/cheatsheet

Use `oklch()` for colors that have perceptually uniform steps, avoiding visual artifacts.

```css
oklch(0.55 0.2 264);
```

--------------------------------

### JavaScript IntersectionObserver for Lazy Rendering

Source: https://modern-css.com/lazy-rendering-without-intersection-observer

The traditional JavaScript approach to lazy rendering using IntersectionObserver. Requires setup, callbacks, and cleanup to detect element visibility and trigger rendering.

```javascript
// JavaScript
const observer = new IntersectionObserver(
  (entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        renderContent(entry.target);
      }
    });
  }
);
```

--------------------------------

### Style Paragraphs After H2 with Subsequent-Sibling

Source: https://modern-css.com/reference/selectors/subsequent-sibling

This example demonstrates how to select all paragraph elements that appear after an h2 element, as long as they share the same parent. It applies specific text color and font size to these paragraphs.

```css
h2 ~ p {
  /* Styles all paragraphs that come after a level-2 heading, as long as they share the same parent */
  color: #666;
  font-size: 0.9em;
}
```

--------------------------------

### Sass/LESS Variables (Compile-time)

Source: https://modern-css.com/theme-variables-without-a-preprocessor

Demonstrates how Sass or LESS variables are compiled to static values. These variables are only available during the build process and are not dynamic at runtime.

```css
// Sass/LESS: compile-time only
$primary: #7c3aed;
$spacing: 16px;

.btn {
  background: $primary;
  padding: $spacing);
}
```

--------------------------------

### Define and Use Custom Font Feature Values

Source: https://modern-css.com/reference/at-rules/font-feature-values

Define custom aliases for font features within @font-feature-values and then apply them using font-variant properties. This example shows how to alias a styleset.

```css
@font-feature-values "MyFont" {
  @styleset {
    fancy: 1;
  }
}

.element {
  font-variant-alternates: styleset(fancy);
}
```

--------------------------------

### Theme-Friendly accent-color with CSS Variable (CSS)

Source: https://modern-css.com/styling-form-controls-without-rebuilding-them

This example demonstrates how to use a CSS variable with accent-color, making form controls automatically update their color when the variable changes, which is useful for dark mode or theme switching.

```css
accent-color: var(--accent);
```

--------------------------------

### Set stop-opacity for a gradient color stop

Source: https://modern-css.com/reference/properties/stop-opacity

Use stop-opacity to make a specific point in an SVG gradient partially transparent. This example sets the opacity to 50%.

```css
stop.fade-out {
  /* Makes this specific point in the SVG gradient 50% transparent */
  stop-opacity: 0.5;
}
```

--------------------------------

### Use env() for Safe Area Padding

Source: https://modern-css.com/reference/types/env

Use this to add padding to avoid the 'notch' on mobile devices. This feature is well-established and works across many devices and browser versions.

```css
.container {
  /* Adds padding to avoid the 'notch' on mobile devices */
  padding-top: env(safe-area-inset-top);
}
```

--------------------------------

### Basic shape-margin Usage

Source: https://modern-css.com/reference/properties/shape-margin

Use shape-margin to push text away from the curve of a shape defined by shape-outside. This example applies a 20px margin to a circular shape.

```css
.circle-wrap {
  float: left;
  shape-outside: circle(50%);
  /* Pushes the text 20px away from the curve of the circle */
  shape-margin: 20px;
}
```

--------------------------------

### Apply styles to scroll markers after the viewport

Source: https://modern-css.com/reference/selectors/target-after

Use this pseudo-class to style elements that are scroll markers and appear after the current viewport. This example fades out markers for items the user hasn't seen yet.

```css
.carousel::scroll-marker:target-after {
  /* Adds an indicator or fades out markers for items the user hasn't seen yet */
  opacity: 0.2;
}
```

--------------------------------

### Set scroll-initial-target to nearest

Source: https://modern-css.com/reference/properties/scroll-initial-target

Use this property to keep a specific section centered in view when its container loads. This example sets the target to the nearest scrollable ancestor.

```css
.important-section {
  /* Keeps this section centered in view when the container loads */
  scroll-initial-target: nearest;
}
```

--------------------------------

### Popover API for Tooltips and Menus

Source: https://modern-css.com/cheatsheet

Use the `popover` API for hover tooltips and dropdown menus, simplifying implementation compared to JavaScript event listeners.

```html
popover=hint + interestfor
```

--------------------------------

### Set padding-bottom in CSS

Source: https://modern-css.com/reference/properties/padding-bottom

Use the `padding-bottom` property to add space at the bottom of an element. This example demonstrates adding 40 pixels of padding to a footer element.

```css
.footer {
  /* Adds space at the bottom of the footer */
  padding-bottom: 40px;
}
```

--------------------------------

### Equal Columns with flex-grow and flex-basis

Source: https://modern-css.com/reference/properties/flex-grow

Creates equally sized columns by setting flex-grow to 1 and flex-basis to 0. This ensures that distribution is based solely on the grow factor, ignoring initial content size.

```css
.column {
  flex-grow: 1;
  flex-basis: 0;
}
```

--------------------------------

### Basic ::after Usage

Source: https://modern-css.com/reference/selectors/after

Use this to add decorative content like icons or text after an element. Ensure the `content` property is set. Transitions can be applied for animations.

```css
a::after {
  content: ' →';
  color: #7c3aed;
  transition: margin-left 0.2s;
}

a:hover::after {
  margin-left: 5px;
}
```

--------------------------------

### Set border-block-end-width

Source: https://modern-css.com/reference/properties/border-block-end-width

Use border-block-end-width along with border-block-end-style and border-block-end-color to define the appearance of the logical end border. This example adds a thick solid accent border to the bottom of a card element.

```css
.card {
  /* Adds a thick 5px accent border to the bottom */
  border-block-end-width: 5px;
  border-block-end-style: solid;
  border-block-end-color: #7c3aed;
}
```

--------------------------------

### Basic scroll-margin-top Usage

Source: https://modern-css.com/reference/properties/scroll-margin-top

Use scroll-margin-top to ensure that when a user clicks a link to an anchor, the content is not hidden behind a sticky navigation bar. This example sets a margin of 100 pixels.

```css
[id] {
  /* Ensures that when you link to a header, it doesn't get hidden behind a sticky navbar */
  scroll-margin-top: 100px;
}
```

--------------------------------

### Apply Conditional Padding with <if>

Source: https://modern-css.com/reference/types/if

Use the <if> function to dynamically change CSS property values based on conditions like variable states. This example adjusts button padding based on a --is-wide variable.

```css
button {
  /* Experimental: change padding based on a wide screen variable */
  padding: if(var(--is-wide): 1rem 2rem; else: 0.5rem 1rem);
}
```

--------------------------------

### Using pow() for CSS Scales

Source: https://modern-css.com/reference/types/pow

Demonstrates how to use the pow() function to create a scaling factor for CSS properties. The result of pow() can be used within calc() for dynamic sizing.

```css
:root {
  /* Calculates 2 to the power of 3 (which is 8) */
  --scale-factor: pow(2, 3);
  --size: calc(var(--scale-factor) * 1rem);
}
```

--------------------------------

### HTML Structure for Modern Floating Labels with Tailwind

Source: https://modern-css.com/floating-labels-without-javascript

This HTML demonstrates the structure for implementing floating labels using Tailwind CSS and the `:placeholder-shown` pseudo-class. The `peer` class on the input is essential for the `peer-*` variants on the label to work. A `placeholder=" "` is required on the input for the `:placeholder-shown` pseudo-class to correctly track the empty state.

```html
<div class="relative">
  <input placeholder=" " class="peer w-full ..."/>
  <label class="absolute left-3 top-3 transition peer-focus:-translate-y-5 peer-focus:text-xs peer-[:not(:placeholder-shown)]:-translate-y-5 peer-[:not(:placeholder-shown)]:text-xs">Email</label>
</div><!-- placeholder=" " is required for :placeholder-shown to track empty state -->
```

--------------------------------

### Responsive cards without media queries

Source: https://modern-css.com/reference/properties/grid-template-columns

Creates a responsive grid layout for cards. Cards will be at least 240px wide and will automatically adjust to fit as many columns as possible per row, wrapping when space is insufficient. This approach avoids the need for media queries.

```css
.cards {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
  gap: 1rem;
}
```

--------------------------------

### Tailwind CSS for Multiline Text Truncation

Source: https://modern-css.com/multiline-text-truncation-without-javascript

These examples show how to use Tailwind CSS utility classes for multiline text truncation. `line-clamp-*` classes are built-in since Tailwind v3.3, allowing for predefined line limits or custom arbitrary values.

```html
<!-- line-clamp-* built in since Tailwind v3.3 --><p class="line-clamp-3">Long text that gets truncated after three lines...</p><!-- line-clamp-1 through line-clamp-6, or arbitrary --><p class="line-clamp-[2]">Custom line count</p>
```

--------------------------------

### Basic scroll-margin-inline-end Usage

Source: https://modern-css.com/reference/properties/scroll-margin-inline-end

This example demonstrates how to use scroll-margin-inline-end to create a 20px gap on the right side of an element when it snaps to the end of a scroll container. This is commonly used in horizontal scrolling carousels or sliders.

```css
.snap-card {
  /* Adds a 20px gap to the right when snapping in a horizontal slider */
  scroll-margin-inline-end: 20px;
  scroll-snap-align: end;
}
```

--------------------------------

### Apply Gradient Background to Text

Source: https://modern-css.com/reference/properties/-webkit-text-fill-color

Use -webkit-text-fill-color with background-clip: text and a linear gradient to color the inside of text characters. This example sets a gradient background on an h1 element and makes the text transparent to reveal the gradient.

```css
h1 {
  background: linear-gradient(to right, #7c3aed, #ec4899);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  font-size: 3rem;
}
```

--------------------------------

### Hypothetical <type> Usage in Custom Functions

Source: https://modern-css.com/reference/types/type

This is a hypothetical example demonstrating how the <type> keyword might be used in custom CSS functions to enforce a specific data type for an argument. It requires an argument that matches the <color> type.

```css
/* (Hypothetical usage in custom functions) */
@function --my-color(--clr <color>) {
  /* Requires an argument that matches the <color> type */
}
```

--------------------------------

### @supports with Logical Operators (AND)

Source: https://modern-css.com/css-feature-detection-without-javascript

Demonstrates combining multiple conditions using the 'and' operator within an @supports rule. Styles will only be applied if both conditions are met by the browser.

```css
@supports (a) and (b) {
  /* Styles */
}
```

--------------------------------

### Old Way: JavaScript IntersectionObserver for Lazy Loading

Source: https://modern-css.com/lazy-load-images-without-javascript

This JavaScript code demonstrates the older method of lazy loading images using `IntersectionObserver`. It requires manual setup to swap `data-src` to `src` when an image enters the viewport.

```html
<!-- HTML: data-src instead of src -->
<img data-src="photo.jpg" class="lazy" />
```

```javascript
const observer = new IntersectionObserver(([entry]) =>  {
  if (entry.isIntersecting)  {
    entry.target.src = entry.target.dataset.src;
    observer.unobserve(entry.target);
  }
});
document.querySelectorAll('.lazy').forEach(img => observer.observe(img));
```

--------------------------------

### Modern Way: CSS Cascade Layers

Source: https://modern-css.com/controlling-specificity-without-important

Shows how to define and use CSS cascade layers to manage style precedence. Styles defined in later layers override those in earlier layers when specificity is equal.

```css
@layer base, components, utilities;
@layer utilities   {
  .mt-4   {
    margin-top: 1rem;
  }
}
```

--------------------------------

### Set animation-range-end for Scroll-Driven Animation

Source: https://modern-css.com/reference/properties/animation-range-end

Use animation-range-end to control when a scroll-driven animation finishes. This example stops the animation when the element is 20% past its exit point.

```css
.header {
  animation: shrink both;
  animation-timeline: view();
  /* Animation finishes when the element is 20% past its exit point */
  animation-range-end: exit 20%;
}
```

--------------------------------

### Using Variable Fonts with Named and Arbitrary Weights

Source: https://modern-css.com/multiple-font-weights-without-multiple-files

Shows how to apply font weights using Tailwind CSS utilities or arbitrary values, including intermediate weights only possible with variable fonts.

```html
<!-- Configure the variable font in @font-face or tailwind.config.js --><!-- Then use any weight — named utilities or arbitrary values --><p class="font-medium">500 weight</p><p class="font-bold">700 weight</p><!-- Intermediate weights only possible with variable fonts --><p class="font-[350]">Custom 350 weight</p>
```

--------------------------------

### Tailwind CSS with Arbitrary Value for 'stretch'

Source: https://modern-css.com/filling-available-space-without-calc-workarounds

This example shows how to apply the 'stretch' functionality in Tailwind CSS using an arbitrary value. Note that 'stretch' is not a built-in Tailwind keyword. It contrasts with 'w-full', which does not respect margins in the same way.

```html
<div class="w-[stretch] mx-4">Fills container with margins</div><div class="w-full">Full width, may overflow with margins</div>
```

--------------------------------

### Set sticky header with inset-block-start

Source: https://modern-css.com/reference/properties/inset-block-start

Use inset-block-start to make an element stick to the top of its container in a logical way. This property is safe to use without fallbacks.

```css
.sticky-header {
  position: sticky;
  /* Sticks to the top of the container in a logical way */
  inset-block-start: 0;
}
```

--------------------------------

### Old Way: Repeating Selectors

Source: https://modern-css.com/grouping-selectors-without-repetition

Demonstrates the verbose method of repeating the same prefix for multiple selectors. This approach requires more lines of code and is harder to maintain.

```css
.card h1, .card h2, .card h3, .card h4   {  margin-bottom: 0.5em;}// Same prefix repeated for every selector
```

--------------------------------

### Tailwind CSS Dark Mode Integration

Source: https://modern-css.com/dark-mode-defaults-without-extra-css

This example shows how to combine Tailwind CSS's dark mode variants with the `color-scheme` property. Tailwind's `dark:` prefix is used for custom colors, while `color-scheme` handles the browser's native UI elements.

```html
<!-- Tailwind uses dark: variant, not color-scheme --><!-- color-scheme: light dark can still be set via arbitrary --><html class="[color-scheme:light_dark]"><!-- Then use dark: for your own colors --><div class="bg-white dark:bg-gray-900 text-black dark:text-white"></div>
```

--------------------------------

### Setting stroke-miterlimit for Sharp Corners

Source: https://modern-css.com/reference/properties/stroke-miterlimit

Use stroke-miterlimit with stroke-linejoin: miter to control the rendering of sharp corners. This example prevents extremely long, 'stabby' corners on very sharp angles by setting the limit to 10.

```css
path.sharp-corner {
  stroke-linejoin: miter;
  /* Prevents extremely long, 'stabby' corners from appearing on very sharp angles */
  stroke-miterlimit: 10;
}
```

--------------------------------

### Exclude Elements with :not()

Source: https://modern-css.com/reference/selectors/not

Use the :not() pseudo-class to apply styles to all elements of a certain type, except for those that match the selectors within the parentheses. This example styles all buttons that do not have the class 'primary'.

```css
button:not(.primary) {
  /* Styles all buttons EXCEPT ones with the .primary class */
  background-color: gray;
  color: white;
}
```

--------------------------------

### Styling Video State with Media Pseudo-classes

Source: https://modern-css.com/changelog

Style video player states like playing, paused, buffering, muted, and seeking using CSS media pseudo-classes without JavaScript event listeners. Limited support in Safari and Firefox.

```css
video:playing {
  /* Styles for playing state */
}
video:paused {
  /* Styles for paused state */
}
video:buffering {
  /* Styles for buffering state */
}
video:muted {
  /* Styles for muted state */
}
video:seeking {
  /* Styles for seeking state */
}
```

--------------------------------

### Set SVG Circle Vertical Position

Source: https://modern-css.com/reference/properties/y

Use the 'y' property to position an SVG circle. This example moves the circle 50 pixels down from the top edge of the SVG canvas.

```css
circle {
  /* moves the circle 50 pixels down from the top edge of the SVG canvas */
  y: 50px;
}
```

--------------------------------

### CSS Logical Properties for RTL Layouts

Source: https://modern-css.com/category/layout

Use logical properties like 'margin-inline-start' and 'padding-inline-end' for direction-agnostic layouts, simplifying RTL support.

```css
.box   {  margin-left: 1rem;  padding-right: 1rem;}[dir="rtl"] .box   {  margin-left: 0;  margin-right: 1rem;}
```

```css
.box   {  margin-inline-start: 1rem;  padding-inline-end: 1rem;  border-block-start: 1px solid;}
```

--------------------------------

### Old Way: CSS with JavaScript for display: none animation

Source: https://modern-css.com/animating-display-none-without-workarounds

This approach uses CSS for opacity transitions and JavaScript to set `display: none` after the transition ends. It also requires `visibility: hidden` to manage layout during the transition.

```css
.panel  {  transition: opacity .2s;}.panel.hidden  {  opacity: 0;  visibility: hidden;}// JS: after transition, set display:none and pointer-eventsel.addEventListener('transitionend', () => {   el.style.display = 'none'; });
```

--------------------------------

### Set SVG Stroke Color

Source: https://modern-css.com/reference/properties/stroke-color

Use stroke-color to define the border color for SVG shapes. This example sets the stroke color of an SVG shape to a CSS variable.

```css
.map-boundary {
  /* Sets the border (stroke) color of an SVG shape */
  stroke-color: var(--brand-primary);
}
```

--------------------------------

### CSS Custom Properties (Runtime)

Source: https://modern-css.com/theme-variables-without-a-preprocessor

Shows how to define and use CSS Custom Properties for theme variables. These properties can be updated at runtime in the browser, offering dynamic theming capabilities without a build step.

```css
:root {
  --primary: #7c3aed;
  --spacing: 16px;
}

.btn {
  background: var(--primary);
}
```

--------------------------------

### HTML for Exclusive Accordion Group with Name Attribute

Source: https://modern-css.com/exclusive-accordions-without-javascript

This example demonstrates how to group `<details>` elements for exclusive behavior using the `name` attribute. The browser enforces that only one element with the same `name` can be open at a time.

```html
<details name="demo-acc">
  — browser enforces exclusivity
```

--------------------------------

### Set SVG Gradient Stop Color

Source: https://modern-css.com/reference/properties/stop-color

Use stop-color to define the color at a specific point within an SVG gradient. This example sets the color to a pinkish hue.

```css
stop.mid-point {
  /* Sets the color of a specific point in an SVG gradient */
  stop-color: #ff00ea;
}
```

--------------------------------

### Modern Way: Declarative Tooltip with popover=hint

Source: https://modern-css.com/hover-tooltips-without-javascript-events

This snippet demonstrates the modern, declarative approach to creating tooltips using HTML attributes. The `interestfor` attribute links the trigger element to the tooltip's ID, and `popover=hint` enables browser-managed hover and focus interactions.

```html
<button interestfor="tip">
  Hover me</button><div id="tip" popover=hint>
  Tooltip text</div>
```

--------------------------------

### Set Row Gap in CSS Grid

Source: https://modern-css.com/reference/properties/row-gap

Use row-gap to define the space between rows in a grid container. This example shows how to set a 20px gap between grid rows.

```css
.grid-container {
  display: grid;
  grid-template-columns: 1fr 1fr;
  /* only adds space BETWEEN the rows, not columns */
  row-gap: 20px;
}
```

--------------------------------

### Basic background-repeat Usage

Source: https://modern-css.com/reference/properties/background-repeat

This snippet demonstrates the basic usage of the background-repeat property to tile an image across the entire background.

```css
.texture {
  background-image: url('tile.png');
  background-repeat: repeat;
  /* tiles the image across the entire background */
}
```

--------------------------------

### Create Ephemeral Hint Popovers with interestfor

Source: https://modern-css.com/whats-new-in-css-2025

Use `popover="hint"` for ephemeral popovers that do not close other popovers. The `interestfor` attribute declaratively triggers these hints on hover or focus, ideal for tooltips.

```html
<button interestfor="my-tip">
  Hover me
</button>

<div id="my-tip" popover="hint">
  This is a tooltip!
</div>
```

--------------------------------

### Logical Properties for Layout

Source: https://modern-css.com/cheatsheet

Adopt logical properties like `margin-inline-start` and `padding-block` for direction-agnostic layouts.

```css
margin-inline-start, padding-block
```

--------------------------------

### Set column gap in a grid layout

Source: https://modern-css.com/reference/properties/column-gap

Use column-gap to define the space between columns in a grid container. This example sets a 24px gap between three equal columns.

```css
.grid-container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  column-gap: 24px;
  /* adds 24px of clear space between the columns */
}
```

--------------------------------

### Tailwind CSS Flexbox with Gap

Source: https://modern-css.com/spacing-elements-without-margin-hacks

An example using Tailwind CSS utility classes to apply the `gap` property for spacing elements in a flex container. `gap-4` corresponds to 16px, and `gap-x-*` or `gap-y-*` can be used for independent row/column spacing.

```html
<!-- gap-4 = 16px, gap-x-* / gap-y-* for row/col independently --><div class="flex gap-4">  <div>Item</div>  <div>Item</div>  <div>Item</div></div>
```

--------------------------------

### Lazy Rendering with Content Visibility

Source: https://modern-css.com/cheatsheet

Improve performance by deferring rendering of off-screen content using `content-visibility: auto`.

```css
content-visibility: auto;
```

--------------------------------

### Apply Styles to Printed Pages with @page

Source: https://modern-css.com/reference/at-rules/page

Use the @page at-rule to set global styles like margins and orientation for printed output. Specialized selectors like :first can target specific pages, such as the first page of a document.

```css
@page {
  /* Sets a 1-inch margin for all pages when printing */
  margin: 1in;
  size: portrait;
}

@page :first {
  /* Specialized margins for only the first page */
  margin-top: 2in;
}
```

--------------------------------

### HTML Button with Modern CSS for Text Centering

Source: https://modern-css.com/centering-button-text-without-line-height-tweaks

An example of an HTML button utilizing Tailwind CSS classes that incorporate `text-box-trim` and `text-box-edge` for precise text centering.

```html
<button class="px-5 py-3 rounded-lg [text-box-trim:trim-both] [text-box-edge:cap_alphabetic]">Subscribe</button>
```

--------------------------------

### Define and Use Custom CSS Properties

Source: https://modern-css.com/reference/properties/custom-property

Define a custom property in a selector, such as ':root', and then use it with the 'var()' function in other properties. This is useful for maintaining consistent theming.

```css
:root {
  --brand-color: #3b82f6;
}

.button {
  background-color: var(--brand-color);
}
```

--------------------------------

### Prevent Ruby Annotation Overlap

Source: https://modern-css.com/reference/properties/ruby-overhang

Use `ruby-overhang: none;` to prevent ruby annotation text from overlapping nearby characters. This is useful for ensuring readability of pronunciation guides.

```css
ruby {
  /* Prevents the tiny guide text from overlapping nearby characters */
  ruby-overhang: none;
}
```

--------------------------------

### Drop Caps with ::first-letter and initial-letter

Source: https://modern-css.com/cheatsheet

Create drop caps easily using the `::first-letter` pseudo-element combined with the `initial-letter` property.

```css
::first-letter { initial-letter: 3 }
```

--------------------------------

### Animate display: none in CSS

Source: https://modern-css.com/

Animate elements transitioning to `display: none` using `transition-behavior: allow-discrete` and `overlay` for smoother entry and exit animations without JavaScript intervention.

```css
.panel  {  transition: opacity .2s;}.panel.hidden  {  opacity: 0;  visibility: hidden;}// JS: after transition, set display:none and pointer-eventsel.addEventListener('transitionend', () => {   el.style.display = 'none'; });
```

```css
.panel   {  transition: opacity .2s, overlay .2s allow-discrete;  transition-behavior: allow-discrete;}.panel.hidden   {  opacity: 0;  display: none;}
```

--------------------------------

### Use contrast-color() for Dynamic Text Color

Source: https://modern-css.com/reference/types/contrast-color

Apply this function to set the text color dynamically based on the background color. Ensure a fallback is provided as this is an experimental feature.

```css
.dynamic-badge {
  background-color: var(--bg-variable);
  /* Color is automatically chosen for best contrast */
  color: contrast-color(var(--bg-variable));
}
```

--------------------------------

### Styling Accordion Open State with CSS

Source: https://modern-css.com/accordion-without-javascript

Demonstrates how to style the expanded state of a details element using the `open` attribute in CSS. This allows for visual feedback when the accordion is open.

```css
details[open] summary {
  /* styles for the open summary */
}
```

--------------------------------

### Masonry Layout with CSS Grid

Source: https://modern-css.com/whats-new-in-css-2026

Create Pinterest-style layouts natively using display: masonry or grid-template-rows: masonry. Items automatically fill vertical gaps based on content height.

```css
.gallery {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  grid-template-rows: masonry;
  gap: 16px;
}
```

--------------------------------

### Setting scroll-margin-right

Source: https://modern-css.com/reference/properties/scroll-margin-right

Use scroll-margin-right to specify the empty space on the right side of an element when it snaps into place. This example keeps the widget 20px away from the right edge when snapping.

```css
.sidebar-widget {
  /* Keeps the widget 20px away from the right edge when snapping */
  scroll-margin-right: 20px;
  scroll-snap-align: end;
}
```

--------------------------------

### Set cursor to pointer and wait

Source: https://modern-css.com/reference/properties/cursor

Use `cursor: pointer;` to indicate an element is clickable, like a link. Use `cursor: wait;` to show that the user should wait, typically during loading states.

```css
.clickable-area {
  cursor: pointer;
  /* indicates the area can be clicked */
}

.loading-overlay {
  cursor: wait;
  /* indicates the user should wait */
}
```

--------------------------------

### Use max() for Responsive Width

Source: https://modern-css.com/reference/types/max

Use max() to set a width that stays at a minimum of 300px unless the screen is very small, in which case it uses 50vw. This ensures the element is never smaller than 300px but can grow responsively.

```css
.flexible-box {
  /* Stays at 300px unless the screen is very small, then it uses 50vw */
  width: max(50vw, 300px);
}
```

--------------------------------

### Popover API for Dropdowns

Source: https://modern-css.com/cheatsheet

Implement dropdown menus using the `popover` API, simplifying the management of open/closed states and accessibility compared to manual JavaScript toggles.

```html
popover API
```

--------------------------------

### Set Maximum Width for Readability

Source: https://modern-css.com/reference/properties/max-width

Use max-width to keep text lines at a readable length on large screens. This example sets the maximum width to 800px and centers the element.

```css
.article-content {
  width: 100%;
  max-width: 800px;
  margin: 0 auto;
  /* keeps text lines at a readable length on large screens */
}
```

--------------------------------

### Centering with Grid

Source: https://modern-css.com/cheatsheet

Use `display: grid` and `place-items: center` for simple and effective centering of elements.

```css
display: grid;
place-items: center;
```

--------------------------------

### Set Tooltip Dismissal Delay

Source: https://modern-css.com/reference/properties/interest-delay-end

Use `interest-delay-end` to specify how long a tooltip remains visible after the mouse pointer leaves the trigger element. This example sets a 500ms delay.

```css
.tooltip-trigger {
  /* Keeps the tooltip visible for 500ms after the mouse leaves */
  interest-delay-end: 0.5s;
}
```

--------------------------------

### Style Open Details Element

Source: https://modern-css.com/reference/selectors/open

Applies a top border to the content box of a details element only when it is in the open state. Ensure the element is supported before using.

```css
details:open {
  /* Adds a top border to the content box only when the details are open */
  border-top: 2px solid #3b82f6;
}
```

--------------------------------

### Apply Bouncy Transition Timing

Source: https://modern-css.com/reference/properties/transition-timing-function

Use this to give a bouncy, natural feel to a sliding animation. Ensure transition-duration is also set.

```css
.drawer {
  /* Gives a bouncy, natural feel to the sliding animation */
  transition-timing-function: cubic-bezier(0.175, 0.885, 0.32, 1.275);
  transition-duration: 0.6s;
}
```

--------------------------------

### Set SVG Flood Color

Source: https://modern-css.com/reference/properties/flood-color

Use flood-color within an SVG feFlood element to define the color of the flood area. This example sets a semi-transparent blue flood color.

```css
feFlood {
  /* Sets the flood color to a semi-transparent blue */
  flood-color: rgba(59, 130, 246, 0.5);
}
```

--------------------------------

### Set perspective-origin to Top Left

Source: https://modern-css.com/reference/properties/perspective-origin

Use this snippet to set the scene to feel like the viewer is looking from the top-left corner of the 3D space. Ensure `perspective` is also set.

```css
.scene {
  /* Sets the scene to feel like we are looking from the top-left */
  perspective: 1000px;
  perspective-origin: top left;
}
```

--------------------------------

### Define and Use CSS Layers

Source: https://modern-css.com/reference/at-rules/layer

Define multiple CSS layers and assign styles to them. Styles within layers defined later in the cascade have higher precedence.

```css
@layer reset, base, theme;

@layer theme {
  /* These styles have higher priority because 'theme' is defined last */
  button { background: blue; }
}

@layer reset {
  button { background: gray; }
}
```

--------------------------------

### Modern Way: View Transitions API

Source: https://modern-css.com/page-transitions-without-a-framework

This is the modern approach using the View Transitions API. Wrap DOM updates in `document.startViewTransition()` for animated transitions. Use `view-transition-name` CSS property for shared element transitions.

```javascript
// JS: wrap DOM updatedocument.startViewTransition(() => {
  document.body.innerHTML = newContent;
});
```

```css
.hero {
  view-transition-name: hero;
}
/* Optional: ::view-transition-old/new(hero) */
```

--------------------------------

### Set Interest Delay in CSS

Source: https://modern-css.com/reference/properties/interest-delay

Use this property to control the delay before an element appears and the duration it stays visible after interaction. The values represent start delay and end delay respectively.

```css
.help-icon {
  /* starts after 200ms, stays for 400ms after leaving */
  interest-delay: 0.2s 0.4s;
}
```

--------------------------------

### CSS Sticky Positioning for Headers

Source: https://modern-css.com/category/layout

Implement sticky headers with 'position: sticky' and 'top: 0', simplifying fixed header behavior without JavaScript.

```javascript
// JavaScript: scroll listenerwindow.addEventListener('scroll', () => {  const rect = header.getBoundingClientRect();  if (rect.top <= 0)    header.classList.add('fixed');  else    header.classList.remove('fixed');});.header.fixed {  position: fixed;  top: 0;}
```

```css
.header   {  position: sticky;  top: 0;}
```

--------------------------------

### Generated CSS for Scroller and Slide

Source: https://modern-css.com/playground/css-scroll-snap

This CSS applies scroll snapping to a container (`.scroller`) and its child elements (`.slide`). It sets the snap type to horizontal mandatory and aligns slides to the start.

```css
.scroller { scroll-snap-type: x mandatory; } .slide { scroll-snap-align: start; /* scroll-snap-stop: normal (default) */ }
```

--------------------------------

### HTML Structure for Grid Centering

Source: https://modern-css.com/centering-elements-without-the-transform-hack

This HTML demonstrates the structure for using CSS Grid's `place-items: center`. Apply the `grid` and `place-items-center` classes to the parent container.

```html
<div class="grid place-items-center">  <div>Content</div></div>
```

--------------------------------

### Tailwind CSS :has() Variant Example

Source: https://modern-css.com/selecting-parent-elements-without-javascript

Demonstrates Tailwind CSS v3.4+ usage of the has-[] variant to conditionally apply styles to parent elements based on their children's states or presence.

```html
<!-- Tailwind v3.4+ has-[] variant -->
<div class="has-[input:invalid]:border-red-500 has-[input:invalid]:bg-red-50">
  <input required />
</div>
<!-- Card changes layout when it contains an image -->
<div class="has-[img]:grid has-[img]:grid-rows-[auto_1fr]"></div>
```

--------------------------------

### Change theme based on parent's --theme variable

Source: https://modern-css.com/reference/at-rules/style-function

Use the style() at-rule to apply styles when a parent container's --theme custom property is set to 'dark'. This is useful for theme switching.

```css
@container style(--theme: dark) {
  .card {
    background: #222;
    color: #fff;
  }
}
```

--------------------------------

### Modern Custom Select with appearance: base-select

Source: https://modern-css.com/cheatsheet

Style custom select elements using `appearance: base-select`, offering a more standardized approach than third-party libraries.

```css
appearance: base-select
```

--------------------------------

### OKLCH vs HSL Lightness Comparison

Source: https://modern-css.com/playground/oklch-color-picker

Illustrates the difference in perceptual uniformity between OKLCH and HSL. OKLCH maintains the hue when lightness changes, while HSL's hue can drift.

```css
oklch()
```

```css
hsl()
```

--------------------------------

### Apply styles while seeking in a video

Source: https://modern-css.com/reference/selectors/seeking

Use the :seeking pseudo-class to apply styles, such as a blur or overlay, to a video element while the user is scrubbing through it. This provides visual feedback during the seeking process.

```css
video:seeking {
  /* Adds a subtle blur or overlay while the user is scrubbing through the video */
  filter: grayscale(0.5);
  opacity: 0.8;
}
```

--------------------------------

### Define and Use a Custom Media Query

Source: https://modern-css.com/reference/at-rules/custom-media

Define a reusable media query with @custom-media and then use it in a @media rule. This is useful for abstracting common viewport conditions.

```css
/* Experimental: Define a reusable media query */
@custom-media --small-viewport (max-width: 480px);

@media (--small-viewport) {
  .container { padding: 10px; }
}
```

--------------------------------

### Style Paused Media Elements

Source: https://modern-css.com/reference/selectors/paused

Use the :paused selector to apply styles to video or audio elements when they are paused. This example adds a grayscale filter and a white outline to a paused video.

```css
video:paused {
  /* Adds a subtle blur to the video when it's paused */
  filter: grayscale(0.5);
  outline: 2px solid white;
}
```

--------------------------------

### Modern Way: Responsive shape()

Source: https://modern-css.com/path-shapes-without-svg-clip-paths

This modern approach uses the `shape()` function with percentage-based coordinates, making the clip-path responsive to element resizing. It supports commands like `from`, `line to`, `curve to`, and `close`.

```css
.hero   {  clip-path: shape(     from 0% 0%,    line to 100% 0%,    line to 100% 80%,    curve to 0% 80% via 50% 105%,    close   );}
```

--------------------------------

### CSS Accordion with details and summary

Source: https://modern-css.com/category/html

Create accessible accordions using the native HTML `<details>` and `<summary>` elements, which provide built-in expand/collapse functionality without requiring JavaScript.

```html
<!-- HTML: custom markup --><button aria-expanded="false" aria-controls="panel">  What is CSS?</button><div id="panel" hidden>  <p>CSS is a stylesheet language.</p></div>
```

```html
<!-- No JS, no aria wiring --><details>  <summary>What is CSS?</summary>  <p>CSS is a stylesheet language.</p></details>
```

--------------------------------

### Basic CSS Transition

Source: https://modern-css.com/reference/properties/transition

Use this snippet to apply a smooth transition to the background color of an element when it is hovered over. The transition will take 0.3 seconds with an ease-in-out timing function.

```css
.btn {
  transition: background-color 0.3s ease-in-out;
}

.btn:hover {
  background-color: var(--accent);
}
```

--------------------------------

### Apply Multiple Transform Functions

Source: https://modern-css.com/reference/types/transform-function

Demonstrates how to apply multiple transform functions simultaneously to an element. This is useful for creating complex visual effects.

```css
.box {
  /* Uses multiple transform functions at once */
  transform: rotate(10deg) scale(1.1);
}
```

--------------------------------

### Position Mask Image

Source: https://modern-css.com/reference/properties/mask-position

Use mask-position to specify the exact placement of a mask image. This example positions the mask 20 pixels from the left and 50 pixels from the top edge of the element.

```css
.pushed-mask {
  /* Positions the mask 20px from the left and 50px from the top */
  mask-position: 20px 50px;
}
```

--------------------------------

### CSS grid-row-end Examples

Source: https://modern-css.com/reference/properties/grid-row-end

Use grid-row-end to specify the ending horizontal grid line for an item. You can set it to a specific line number or use 'span' to define how many rows it should span.

```css
.stretched-row {
  /* Tells the item to end at the 3rd horizontal line */
  grid-row-end: 3;
}

.span-rows {
  /* Tells the item to end after spanning 3 rows */
  grid-row-end: span 3;
}
```

--------------------------------

### Modern Way: Larger Touch Targets with Pseudo-elements

Source: https://modern-css.com/category/accessibility

This modern approach uses a pseudo-element to expand the touch target area without changing the element's visual size or layout. It's effective for coarse pointers like touchscreens.

```css
.button   {  position: relative;}@media (pointer: coarse)   {  .button::after   {    content: '';    position: absolute;    inset: -8px;  }}
```

--------------------------------

### Control Reading Flow for Flex and Grid

Source: https://modern-css.com/whats-new-in-css-2026

Manage keyboard tab and screen reader navigation order for flex and grid children using reading-flow. Avoids manual tabindex reordering.

```css
.flex-nav {
  display: flex;
  flex-direction: row-reverse;
  reading-flow: flex-visual;
}

.grid-layout {
  display: grid;
  reading-flow: grid-rows;
}
```

--------------------------------

### Highlighting the source element

Source: https://modern-css.com/reference/selectors/interest-source

Use :interest-source to apply styles to the element that is currently showing its associated UI, like a tooltip. This selector is experimental and requires a fallback for broader compatibility.

```css
button:interest-source {
  /* Highlights the button that is currently showing its tooltip */
  outline: 2px solid var(--primary);
}
```

--------------------------------

### Old Way: Viewport-based Responsive Card

Source: https://modern-css.com/responsive-components-without-media-queries

This CSS demonstrates the traditional method of making a card responsive using media queries that target the viewport width. It's less flexible for components placed in different contexts.

```css
.card   {  display: grid;  grid-template-columns: 1fr;}@media (min-width: 768px)   {  .card   {    grid-template-columns: auto 1fr;  }}
```

--------------------------------

### Old Way: Rebuilding Form Controls (CSS)

Source: https://modern-css.com/styling-form-controls-without-rebuilding-them

This CSS demonstrates the older method of styling form controls by setting appearance: none and then manually defining properties like width, height, border, and background. It requires many lines of code and manual handling of states and accessibility.

```css
input[type="checkbox"]   {  appearance: none;  width: 1.25rem;  height: 1.25rem;  border: 2px solid ...;  background: ...;  border-radius: ...;} 
```

--------------------------------

### Use Wide-Gamut Color Spaces with `oklch()`

Source: https://modern-css.com/history-of-css

Leverage perceptually uniform color spaces like `oklch()` for more consistent color manipulation. Adjusting lightness, chroma, and hue axes provides visually predictable results.

```css
oklch(L C H)
```

```css
display-p3
```

```css
lab()
```

```css
lch()
```

--------------------------------

### CSS Skew with <tan>

Source: https://modern-css.com/reference/types/tan

Use the <tan> function within a CSS transform to calculate a precise skew angle. This example demonstrates applying a skew based on a custom property `--angle`.

```css
.skewed-box {
  /* Uses tangent to calculate a precise skew based on a custom property angle */
  transform: matrix(1, 0, tan(var(--angle)), 1, 0, 0);
}
```

--------------------------------

### Apply CSS Blend Mode

Source: https://modern-css.com/reference/types/blend-mode

Use the `mix-blend-mode` property to blend an element's color with the background. This example applies the 'color-burn' blend mode to text, affecting how it mixes with the image behind it.

```css
.overlay-text {
  /* Blends the text color with the image behind it */
  mix-blend-mode: color-burn;
}
```

--------------------------------

### Apply Base Styles with :universal Selector

Source: https://modern-css.com/reference/selectors/universal

Use the :universal selector to apply common styles like box-sizing, margin, and padding resets to every element on the page. This is a standard practice in CSS resets.

```css
* {
  /* Applies this to every single element on the page */
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}
```

--------------------------------

### Enable Keyword Transitions for Size

Source: https://modern-css.com/reference/properties/interpolate-size

Use 'interpolate-size: allow-keywords;' to enable smooth transitions for properties like 'height' to 'auto'. This requires setting an initial height, overflow hidden, and a transition property.

```css
section {
  /* Enables smooth transitions to 'height: auto' */
  interpolate-size: allow-keywords;
  transition: height 0.3s ease;
  height: 0;
  overflow: hidden;
}

section.open {
  height: auto;
}
```

--------------------------------

### Apply styles when video is buffering

Source: https://modern-css.com/reference/selectors/buffering

Use the :buffering pseudo-class to apply styles, such as an outline or opacity change, to media elements when they are actively buffering data. This provides a visual cue to the user that the media is loading.

```css
video:buffering {
  /* Adds a subtle visual cue that the video is loading */
  outline: 2px solid rgba(255, 255, 255, 0.5);
  opacity: 0.8;
}
```

--------------------------------

### Cross-Document View Transitions

Source: https://modern-css.com/whats-new-in-css-2026

Enable animations for full page navigations (MPA) using @view-transition with navigation: auto. Animates transitions between pages served by the same origin.

```css
@view-transition {
  navigation: auto;
}

::view-transition-old(root) {
  animation: fade-out 0.3s;
}
::view-transition-new(root) {
  animation: fade-in 0.3s;
}
```

--------------------------------

### Set emphasis mark color

Source: https://modern-css.com/reference/properties/text-emphasis-color

Use text-emphasis-color to set the color of emphasis marks. This example sets the color of emphasis circles to a CSS variable representing the brand's primary color.

```css
em {
  text-emphasis: circle;
  /* Sets the color of the emphasis circles to our primary brand color */
  text-emphasis-color: var(--brand-primary);
}
```

--------------------------------

### Set shape-image-threshold for floats

Source: https://modern-css.com/reference/properties/shape-image-threshold

Use this property with floats to define the alpha limit for shape-outside. Pixels with opacity exceeding the threshold will form the shape boundary. This example uses a threshold of 0.8 (80%).

```css
.image-wrap {
  float: left;
  shape-outside: url('star.png');
  /* Only pixels with 80% opacity or more will be used for the wrap boundary */
  shape-image-threshold: 0.8;
}
```

--------------------------------

### Style Elements with Container Queries

Source: https://modern-css.com/history-of-css

Style elements based on the size of their container rather than the viewport using Container Queries. This allows components to adapt their layout responsively within different contexts.

```css
/* Example usage: Style a card component based on its container width */
.card {
  container-type: inline-size;
}

@container (min-width: 400px) {
  .card {
    /* Styles for wider containers */
  }
}
```

--------------------------------

### Responsive Typography with clamp()

Source: https://modern-css.com/under-the-hood

Applies responsive font sizes to headings using `clamp()`. This function sets a minimum, preferred, and maximum font size, allowing text to scale fluidly with the viewport without media queries.

```css
.hero h1 {
  font-size: clamp(2.4rem, 5.5vw, 3.5rem);
  /* min: 2.4rem, preferred: 5.5vw, max: 3.5rem */
}
```

--------------------------------

### Style All Headings with :heading

Source: https://modern-css.com/reference/selectors/heading

Use the :heading pseudo-class to apply common styles like accent color and font family to all heading elements on a page. This is useful for maintaining a consistent visual hierarchy.

```css
:heading {
  /* Applies a consistent accent color to all headings */
  color: var(--primary-accent);
  font-family: 'Outfit', sans-serif;
}
```

--------------------------------

### Set background with shorthand

Source: https://modern-css.com/reference/properties/background

Use the background shorthand to define an image, its repeat, position, size, and color in one line. This is the most common and efficient method for styling backgrounds.

```css
.hero {
  /* image | repeat | position / size | color */
  background: url('hero-bg.jpg') no-repeat center / cover #333;
}
```

--------------------------------

### Automatic CSS Type Scale with pow() and sibling-index()

Source: https://modern-css.com/category/typography

Implement an automatic type scale using `pow()` and `sibling-index()` for dynamic font-size adjustments. A fallback is provided for browsers that do not support these experimental features.

```css
h1   {  font-size: 2.5rem;}h2   {  font-size: 2rem;}h3   {  font-size: 1.5rem;}h4   {  font-size: 1.25rem;}h5   {  font-size: 1.1rem;}h6   {  font-size: 1rem;}
```

```css
/* Experimental: requires :heading(), sibling-index(), and pow() support */:heading   {  font-weight: 600;  font-size:    calc(1rem * pow(1.2, 5 - sibling-index()));}/* Fallback: keep a simple manual ladder for all other browsers */h1   {  font-size: 2.5rem;}h2   {  font-size: 2rem;}h3   {  font-size: 1.5rem;}
```

--------------------------------

### Modern Way: Using the output Element

Source: https://modern-css.com/live-form-output-without-javascript-dom-writes

This modern approach uses the semantic `<output>` element, which is directly linked to form inputs via the 'for' attribute. It significantly reduces the amount of code needed for live output.

```html
<input type="range" id="volume" name="volume" /><output for="volume">50</output>
```

--------------------------------

### Use exp() in CSS calc()

Source: https://modern-css.com/reference/types/exp

Demonstrates using the exp() function within a CSS calc() property for layout calculations. Ensure browser compatibility or provide fallbacks for older browsers.

```css
.box {
  /* Uses exponent function for layout calculations */
  width: calc(10px * exp(2));
}
```

--------------------------------

### Old Way: Larger Touch Targets with Padding

Source: https://modern-css.com/category/accessibility

This method uses padding to increase the touch target size, which can disrupt surrounding layouts. Use when compatibility with older methods is required.

```css
.button   {  min-width: 44px;  min-height: 44px;  padding: 12px 20px;}// Padding forces the visual size to grow, disrupting surrounding layout.
```

--------------------------------

### Create the Popover Hint Element

Source: https://modern-css.com/articles/build-a-tooltip-system

Use the `popover=hint` attribute to define an ephemeral tooltip layer. This renders in the top layer, preventing clipping by ancestor elements.

```html
<button id="trigger">Hover me</button>

<div id="tooltip" popover=hint>
  Helpful tooltip text
</div>
```

--------------------------------

### @supports with Logical Operators (NOT)

Source: https://modern-css.com/css-feature-detection-without-javascript

Shows how to use the 'not' operator to apply styles when a specific CSS feature is *not* supported. This is valuable for providing fallbacks or alternative implementations.

```css
@supports not () {
  /* Styles */
}
```

--------------------------------

### Basic border-image Usage

Source: https://modern-css.com/reference/properties/border-image

Applies a linear gradient as a border image with specified slice and repeat values. Ensure border-width and border-style are also set for the border-image to be visible.

```css
.premium-box {
  /* source | slice | repeat */
  border-image: linear-gradient(red, blue) 20% round;
  border-width: 10px;
  border-style: solid;
}
```

--------------------------------

### Use Tree Counting Functions for Dynamic Layouts

Source: https://modern-css.com/whats-new-in-css-2025

Employ `sibling-index()` and `sibling-count()` for dynamic layouts and staggered animations. `sibling-index()` returns an element's position among siblings, while `sibling-count()` returns the total number.

```css
.card {
  animation-delay: calc(sibling-index() * 80ms);
  opacity: 0;
  animation: fade-in 0.4s forwards;
}

.item {
  flex-basis: calc(100% / sibling-count());
}
```

--------------------------------

### Apply text-spacing-trim to CJK text

Source: https://modern-css.com/reference/properties/text-spacing-trim

Use this CSS rule to trim extra space from the start of the first line in CJK text, ensuring a cleaner edge. This property is experimental and may require fallbacks.

```css
article.cjk-text {
  /* Trims the extra space from the start of the first line for a cleaner edge */
  text-spacing-trim: trim-start;
}
```

--------------------------------

### Old Way: JS Required for Live Output

Source: https://modern-css.com/live-form-output-without-javascript-dom-writes

This approach requires JavaScript to listen for input events and update a separate div element. It is less semantic and more verbose than the modern approach.

```html
<input type="range" id="volume" /><div id="display"></div>
```

```javascript
const input = document.getElementById('volume');
const display = document.getElementById('display');
input.addEventListener('input', () =>  {
  display.textContent = input.value;
});
```

--------------------------------

### Utilize CSS Custom Properties for Theming

Source: https://modern-css.com/history-of-css

Implement CSS custom properties (variables) for dynamic theming. These variables cascade, inherit, and can be updated at runtime, enabling theming without inline styles or JavaScript.

```css
--color: var(--accent)
```

```css
--color: var(--green)
```

```css
--color: var(--pink)
```

```css
--color: var(--orange)
```

--------------------------------

### Tailwind CSS Arbitrary Value with color-mix()

Source: https://modern-css.com/mixing-colors-without-a-preprocessor

Demonstrates using color-mix() within Tailwind CSS's arbitrary value syntax for dynamic styling.

```html
<!-- Tailwind v4 — color-mix via arbitrary value -->
<div class="bg-[color-mix(in_oklch,#3b82f6_60%,#ec4899)]">Mixed</div>
<!-- v4 opacity modifiers use color-mix natively -->
<div class="bg-blue-500/50">50% blue</div>
```

--------------------------------

### Targeting the Second-to-Last List Item

Source: https://modern-css.com/reference/selectors/nth-last-child

This example demonstrates how to select the second-to-last list item within an unordered or ordered list using the :nth-last-child() pseudo-class. The selected item will have its text color changed to red.

```css
li:nth-last-child(2) {
  /* Targets the second-to-last item in a list */
  color: #ef4444;
}
```

--------------------------------

### Style Indeterminate Checkbox

Source: https://modern-css.com/reference/selectors/indeterminate

Use the :indeterminate pseudo-class to apply styles to checkboxes that are in a mixed or indeterminate state, often set via JavaScript. This example applies reduced opacity and an orange dashed outline.

```css
input[type='checkbox']:indeterminate {
  /* Styles a 'half-checked' or 'mixed' checkbox */
  opacity: 0.5;
  outline: 2px dashed orange;
}
```

--------------------------------

### Define Global CSS Variables with :root

Source: https://modern-css.com/reference/selectors/root

Use :root to define design system variables that can be reused across your entire stylesheet. This is the standard and most effective place for global variable definitions.

```css
:root {
  /* The best place to define your design system variables */
  --brand-color: #3498db;
  --base-spacing: 1rem;
}
```

--------------------------------

### Style All Links with :any-link

Source: https://modern-css.com/reference/selectors/any-link

Use the :any-link pseudo-class to apply styles to all anchor elements that have an href attribute, irrespective of whether they have been visited. This is a concise alternative to styling both :link and :visited states separately.

```css
nav a:any-link {
  color: #7c3aed;
  text-decoration: none;
}
```

--------------------------------

### Set Scroll Padding Top

Source: https://modern-css.com/reference/properties/scroll-padding

Use scroll-padding-top to ensure anchor-link navigations stop a specific distance before the target element. This example sets the top padding to 4rem and enables smooth scrolling behavior.

```css
html {
  scroll-padding-top: 4rem;
  scroll-behavior: smooth;
  /* ensures all anchor-link navigations stop 4rem before the target element */
}
```

--------------------------------

### Highlight First List Item with :first-child

Source: https://modern-css.com/reference/selectors/first-child

Use this CSS to apply specific styles, such as bold font weight and a distinct color, to the first list item within any `<li>` list. This pseudo-class is well-established and safe to use without fallbacks.

```css
li:first-child {
  /* Highlights the first item in every list */
  font-weight: bold;
  color: #3b82f6;
}
```

--------------------------------

### CSS-Only Lightbox Modal

Source: https://modern-css.com/reference/selectors/target

Creates a basic modal dialog using CSS and the :target pseudo-class. The modal is hidden by default and displayed when its ID matches the URL fragment. Closing the modal is achieved by linking back to the root or an empty fragment.

```css
.modal {
  display: none;
}
.modal:target {
  display: flex;
}

.modal .close {
  /* Link back with empty href or #! to close */
}
```

--------------------------------

### JavaScript IntersectionObserver Scroll Spy

Source: https://modern-css.com/scroll-spy-without-intersection-observer

This JavaScript code uses IntersectionObserver to track sections entering the viewport and toggles an 'active' class on corresponding navigation links. It requires manual setup and threshold tuning.

```javascript
/* JS IntersectionObserver approach */const observer = new IntersectionObserver(   (entries) =>  {  entries.forEach(entry =>  {    const link = document         .querySelector(`a[href="# // [!code --]        ${entry.target.id}"]`);       link.classList.toggle(         'active',        entry.isIntersecting);  });},   {  threshold: 0.5});document.querySelectorAll('section')   .forEach(s =>    observer.observe(s));
```

--------------------------------

### Old Way: Opening Dialog with onclick Handler

Source: https://modern-css.com/modal-controls-without-onclick-handlers

This snippet shows the traditional method of opening a dialog using an inline onclick handler that calls the showModal() JavaScript method. It requires more lines of code compared to the modern approach.

```html
<button onclick="  document.querySelector('#dlg')
  .showModal()">  Open Dialog</button><dialog id="dlg">...</dialog>
```

--------------------------------

### Force Page Break After Element

Source: https://modern-css.com/reference/properties/page-break-after

Use this CSS rule to force a new page to start immediately after the targeted section when printing the document. This is useful for ensuring content separation between distinct parts of a printed page.

```css
section.print-break {
  /* Forces a new page to start after this section when printing */
  page-break-after: always;
}
```

--------------------------------

### CSS Logical Properties for RTL Layouts

Source: https://modern-css.com/category/css

Use logical properties like `margin-inline-start` and `padding-inline-end` for more robust and maintainable layouts, especially for internationalization (RTL).

```css
.box   {
  margin-left: 1rem;
  padding-right: 1rem;
}[dir="rtl"] .box   {
  margin-left: 0;
  margin-right: 1rem;
}
```

```css
.box   {
  margin-inline-start: 1rem;
  padding-inline-end: 1rem;
  border-block-start: 1px solid;
}
```

--------------------------------

### Styling the First Line of Text with ::first-line

Source: https://modern-css.com/reference/selectors/first-line

Use the ::first-line pseudo-element to apply styles exclusively to the first line of text within a block-level element. This is useful for creating distinct visual emphasis on introductory text. The styles will adjust automatically as the viewport resizes.

```css
article p::first-line {
  /* Stylizes the first line of the article opening */
  font-variant: small-caps;
  letter-spacing: 2px;
  color: #111827;
}
```

--------------------------------

### Define and Use a Custom CSS Function

Source: https://modern-css.com/reference/at-rules/function

Demonstrates defining a custom CSS function `--get-vibrant-bg` that takes a base color and returns a mixed color. This function is then applied to the background of a `.card` element.

```css
@function --get-vibrant-bg(--color-base) {
  /* Experimental: logic to generate a color variant */
  result: color-mix(in srgb, var(--color-base), #fff 20%);
}

.card {
  background: --get-vibrant-bg(#3b82f6);
}
```

--------------------------------

### Style File Input Button with ::file-selector-button

Source: https://modern-css.com/reference/selectors/file-selector-button

Apply custom styles such as background color, text color, padding, and border-radius to the file input button. Ensure the cursor is set to 'pointer' for better user experience.

```css
input::file-selector-button {
  background-color: #3b82f6;
  color: white;
  padding: 8px 16px;
  border-radius: 4px;
  cursor: pointer;
}
```

--------------------------------

### Multi-Column Layout

Source: https://modern-css.com/cheatsheet

Create multi-column layouts directly in CSS using the `columns` property.

```css
columns: 3;
```

--------------------------------

### Use sign() for conditional scaling

Source: https://modern-css.com/reference/types/sign

Use the sign() function to conditionally scale an element based on the value of a CSS variable. This example scales the element by 1 if --score is positive, and by -1 if --score is negative.

```css
.dynamic-element {
  /* Scale based on whether the --score variable is positive or negative */
  transform: scale(sign(var(--score)));
}
```

--------------------------------

### Animate display: none in CSS with overlay and allow-discrete

Source: https://modern-css.com/category/animation

Allows animating properties like `opacity` and `display` when an element is removed from the layout. The modern approach uses `transition-behavior: allow-discrete` and the `overlay` property, enabling transitions for properties that previously wouldn't animate when `display` was `none`.

```css
.panel {
  transition: opacity .2s;
}
.panel.hidden {
  opacity: 0;
  visibility: hidden;
}
```

```javascript
// JS: after transition, set display:none and pointer-events
el.addEventListener('transitionend', () => {
  el.style.display = 'none';
});
```

```css
.panel {
  transition: opacity .2s, overlay .2s allow-discrete;
  transition-behavior: allow-discrete;
}
.panel.hidden {
  opacity: 0;
  display: none;
}
```

--------------------------------

### Apply reading-flow to Grid Containers

Source: https://modern-css.com/reference/properties/reading-flow

Use this to ensure screen readers read grid items in the order they appear on screen. This is particularly useful when visual reordering has been applied.

```css
.grid-reordered {
  display: grid;
  /* Ensures screen readers read the items in the order they appear on screen */
  reading-flow: grid-order;
}
```

--------------------------------

### Style the first printed page

Source: https://modern-css.com/reference/selectors/first

Use the :first selector within an @page rule to apply styles exclusively to the first page of a printed document. This example removes the header from the first page by setting its top margin.

```css
@page :first {
  /* Removes the header from the first printed page */
  margin-top: 2cm;
}
```

--------------------------------

### Modern Way: Grouping with :is()

Source: https://modern-css.com/grouping-selectors-without-repetition

Shows how to group selectors using the :is() pseudo-class, significantly reducing repetition and improving code conciseness. This method is well-supported across modern browsers.

```css
.card :is(h1, h2, h3, h4)   {  margin-bottom: 0.5em;}
```

--------------------------------

### HTML inputmode and enterkeyhint for Mobile Keyboards

Source: https://modern-css.com/category/html

Use `inputmode` and `enterkeyhint` attributes on input elements to control the virtual keyboard layout and return key label on mobile devices, avoiding the need for JavaScript hacks.

```html
<input type="tel" pattern="[0-9]*" />
```

```javascript
if (/Mobi/.test(navigator.userAgent))   {  submitBtn.textContent = 'Search';}
```

```html
<input type="text" inputmode="numeric" />
```

```html
<input type="search" inputmode="search" enterkeyhint="search" />
```

--------------------------------

### CSS Custom Properties for Theming

Source: https://modern-css.com/

Implement theme variables using CSS Custom Properties (`--var-name`), offering dynamic theming capabilities directly in CSS.

```css
// Sass/LESS: compile-time only$primary: #7c3aed;$spacing: 16px;.btn {  background: $primary;  padding: $spacing;}
```

```css
:root   {  --primary: #7c3aed;  --spacing: 16px;}.btn   {  background: var(--primary);}
```

--------------------------------

### Force Long Links to Break with word-break

Source: https://modern-css.com/reference/properties/word-break

Use `break-all` to force long, unbreakable strings like URLs to break and wrap to the next line, preventing layout issues on small screens.

```css
.sidebar-url {
  /* forces long links to break and wrap to the next line */
  word-break: break-all;
}
```

--------------------------------

### Apply marker-mid to a path

Source: https://modern-css.com/reference/properties/marker-mid

Use this CSS rule to apply a custom marker (e.g., a dot) to all points of an SVG path except the start and end points. Ensure the referenced marker ID (e.g., '#dot') exists in your SVG.

```css
path {
  marker-mid: url(#dot);
  /* places a custom dot marker at every inner point of the path */
}
```

--------------------------------

### Control Elements Declaratively with Invoker Commands

Source: https://modern-css.com/whats-new-in-css-2025

Utilize `commandfor` and `command` attributes on buttons to perform actions like opening modals or toggling popovers without JavaScript. Ensure the target element has a corresponding `id`.

```html
<button commandfor="my-dialog" command="show-modal">
  Open Dialog
</button>

<dialog id="my-dialog">
  <p>Hello!</p>
  <button commandfor="my-dialog" command="close">
    Close
  </button>
</dialog>
```

--------------------------------

### Define Reusable CSS Functions with @function

Source: https://modern-css.com/whats-new-in-css-2025

Create custom, reusable CSS functions using the `@function` rule. Define parameters and use `@return` to specify the output, enabling composable logic for properties like `font-size`.

```css
@function --fluid-size(--min, --max) {
  @return clamp(
    var(--min),
    var(--min) + (var(--max) - var(--min)) *
      (100vw - 320px) / (1200 - 320),
    var(--max)
  );
}

h1 { font-size: --fluid-size(1.5rem, 3rem); }
```

--------------------------------

### Fluid Typography with clamp()

Source: https://modern-css.com/category/typo

The `clamp()` function provides a modern, concise way to implement fluid typography, scaling font sizes smoothly between minimum and maximum values based on viewport width.

```css
h1   {  font-size: 1rem;}@media (min-width: 600px)   {  h1   {    font-size: 1.5rem;  }}@media (min-width: 900px)   {  h1   {    font-size: 2rem;  }}
```

```css
h1   {  font-size: clamp(1rem, 2.5vw, 2rem);}
```

--------------------------------

### Style a Web Component Part

Source: https://modern-css.com/reference/selectors/part

Use the ::part() pseudo-element to target and style specific internal elements exposed by a web component's Shadow DOM. Ensure the web component explicitly exposes the part you intend to style.

```css
my-custom-component::part(button) {
  /* Styles the 'button' part exposed by the web component's shadow tree */
  background: var(--brand-color);
  border-radius: 8px;
}
```

--------------------------------

### CSS color-mix() for Backgrounds

Source: https://modern-css.com/mixing-colors-without-a-preprocessor

Use color-mix() to set background colors directly in CSS. Supports perceptually uniform color spaces like oklch for more natural blends.

```css
.card {
  background: color-mix(in oklch, #3b82f6 60%, #ec4899);
}
```

--------------------------------

### Old JavaScript Hack for Scroll Chaining

Source: https://modern-css.com/preventing-scroll-chaining-without-javascript

This JavaScript code was used to prevent scroll chaining by preventing default behavior on wheel and touch events. It required manual event listener setup and handling for both mouse and touch interactions.

```css
.modal-content   {  overflow-y: auto;}// JS: prevent scroll chaining on wheel and touch modal.addEventListener('wheel', (e) => {   e.preventDefault(); }, { passive: false }); // also needed for touch: touchmove listener
```

--------------------------------

### Set scroll-padding-block-start

Source: https://modern-css.com/reference/properties/scroll-padding-block-start

Use scroll-padding-block-start to set a global buffer for anchor links within a scroll container. This ensures consistent spacing when elements snap into view.

```css
.main-scroller {
  /* Sets a global 100px buffer for all anchor links inside this container */
  scroll-padding-block-start: 100px;
}
```

--------------------------------

### Set Minimum Height with vh Units

Source: https://modern-css.com/reference/properties/min-height

Use min-height with viewport height units (vh) to ensure an element occupies a significant portion of the screen, even if its content is minimal. This example centers content vertically within the hero section.

```css
.hero-section {
  min-height: 80vh;
  display: flex;
  align-items: center;
  /* ensures the hero section always takes up most of the screen */
}
```

--------------------------------

### Modern CSS: object-fit: cover with Tailwind

Source: https://modern-css.com/responsive-images-without-background-image-hack

Shows the modern approach using a semantic img element with object-fit: cover and Tailwind CSS classes for responsive image cropping. Includes native lazy loading.

```html
<img src="photo.jpg" alt="..." loading="lazy">img   {  object-fit: cover;  width: 100%;  height: 200px;}
```

--------------------------------

### Set Maximum Block Size with max-block-size

Source: https://modern-css.com/reference/properties/max-block-size

Use max-block-size to prevent an element from exceeding a specific height in the block direction. This example prevents a side panel from growing taller than 80% of the viewport height and enables scrolling if content overflows.

```css
.side-panel {
  /* Prevents the panel from growing taller than 80vh logically */
  max-block-size: 80vh;
  overflow: auto;
}
```

--------------------------------

### Basic view-transition-name Usage

Source: https://modern-css.com/reference/properties/view-transition-name

Use this property to identify an element that should be tracked across page transitions. The browser will automatically animate changes to its position and size.

```css
.card-thumbnail {
  /* Tells the browser this element is the same one that appears on the product detail page */
  view-transition-name: product-thumb-123;
}
```

--------------------------------

### Set grid-auto-flow to dense

Source: https://modern-css.com/reference/properties/grid-auto-flow

Use `grid-auto-flow: dense;` to tell the browser to fill gaps when grid items vary in size, optimizing space usage.

```css
.gallery {
  display: grid;
  /* Tells the browser to fill gaps when items vary in size */
  grid-auto-flow: dense;
}
```

--------------------------------

### Style Slotted Images in Web Components

Source: https://modern-css.com/reference/selectors/slotted

Use ::slotted(img) within a custom element's Shadow DOM to apply styles to any `<img>` elements that are passed into a slot. This example styles slotted images with a circular border and a maximum width.

```css
/* Inside the shadow DOM of a custom element */
::slotted(img) {
  /* Styles images that were passed into the component's slot */
  border-radius: 50%;
  max-width: 100px;
}
```

--------------------------------

### Responsive Images with object-fit: cover

Source: https://modern-css.com/category/layout

Use the `object-fit: cover` CSS property on `<img>` elements for responsive image scaling within containers, a semantic and accessible approach compared to using background images on divs.

```html
<!-- div instead of img: no alt, not semantic -->
<div class="card-image"></div>
.card-image {
  background-image: url(photo.jpg);
  background-size: cover;
  background-position: center;
}
```

```html
<img src="photo.jpg" alt="..." loading="lazy">
img {
  object-fit: cover;
  width: 100%;
  height: 200px;
}
```

--------------------------------

### Scroll-Driven Animations with scroll-timeline

Source: https://modern-css.com/

Create scroll-driven animations using `animation-timeline: view()`, allowing animations to progress based on element visibility without JavaScript.

```javascript
// scroll-reveal.jsconst obs = new IntersectionObserver(  (entries) => {    entries.forEach(e => {      if (e.isIntersecting)        e.target.classList.add('visible');    });  });document.querySelectorAll('.reveal')  .forEach(el => obs.observe(el));
```

```css
@keyframes reveal   {  from   {    opacity: 0;    translate: 0 40px;  }  to     {    opacity: 1;    translate: 0 0;  }}.
reveal   {  animation: reveal linear both;  animation-timeline: view();  animation-range: entry 0% entry 100%;}
```

--------------------------------

### CSS Text Highlighting API

Source: https://modern-css.com/cheatsheet

Implement text highlighting using the CSS.highlights API and the ::highlight() pseudo-element, offering a more robust solution than manual DOM manipulation.

```css
CSS.highlights.set() + ::highlight(search)
```

--------------------------------

### Calculate Scroll Progress with CSS progress()

Source: https://modern-css.com/reference/types/progress

Use the progress() function to calculate the scroll progress of a container. This example sets a CSS variable --scroll-progress based on the current scroll position relative to the maximum scrollable height, then uses it to set the width of a scroll indicator.

```css
.scroll-indicator {
  /* Calculates how much of the container has been scrolled */
  --scroll-progress: progress(var(--current-scroll), 0, var(--max-scroll));
  width: calc(var(--scroll-progress) * 100%);
}
```

--------------------------------

### @supports with Logical Operators (OR)

Source: https://modern-css.com/css-feature-detection-without-javascript

Illustrates using the 'or' operator to apply styles if at least one of the specified conditions is supported by the browser. This is useful for providing alternative styling paths.

```css
@supports (a) or (b) {
  /* Styles */
}
```

--------------------------------

### CSS Media Pseudo-Classes for Video States (Modern Way)

Source: https://modern-css.com/video-player-states-without-javascript-events

This CSS code leverages media pseudo-classes to directly style video player UI elements based on the video's state. It requires no JavaScript and is the modern approach for handling states like paused, playing, buffering, and muted.

```css
video:paused + .controls .play-icon { display: block; }
video:playing + .controls .pause-icon { display: block; }
video:buffering + .controls .spinner { display: block; }
video:muted + .controls .muted-badge { display: block; }
.player:has(video:playing) {
  outline: 2px solid currentColor;
}
```

--------------------------------

### Set Image Orientation from EXIF Data

Source: https://modern-css.com/reference/properties/image-orientation

Use this snippet to ensure images are correctly oriented based on camera data. This is the initial value and is inherited.

```css
img {
  /* Ensures the image is correctly oriented based on camera data */
  image-orientation: from-image;
}
```

--------------------------------

### Lazy Load Images in HTML with loading="lazy"

Source: https://modern-css.com/category/html

Implement native lazy loading for images using the `loading="lazy"` attribute, which defers loading of offscreen images until they are close to the viewport, eliminating the need for JavaScript-based Intersection Observer.

```html
<!-- HTML: data-src instead of src --><img data-src="photo.jpg" class="lazy" />
```

```javascript
const observer = new IntersectionObserver(([entry]) =>  {  if (entry.isIntersecting)  {    entry.target.src = entry.target.dataset.src;     observer.unobserve(entry.target);  }});document.querySelectorAll('.lazy').forEach(img => observer.observe(img));
```

```html
<!-- Below the fold: lazy load --><img src="product.jpg" alt="Product" loading="lazy" />
```

--------------------------------

### Apply scroll-margin-block-start to a section

Source: https://modern-css.com/reference/properties/scroll-margin-block-start

Use scroll-margin-block-start to reserve space at the beginning of a snapped element, preventing fixed headers from covering content. Ensure scroll-snap-align is also set for snapping to work.

```css
section {
  /* Prevents a sticky header (fixed to top) from covering the section heading */
  scroll-margin-block-start: 80px;
  scroll-snap-align: start;
}
```

--------------------------------

### CSS Pseudo-Classes for Media Playback States

Source: https://modern-css.com/category/css

Controls UI elements based on media playback states using CSS pseudo-classes. The modern approach uses `:playing`, `:paused`, `:muted`, and `:buffering` directly on the media element or its container, eliminating the need for JavaScript event listeners.

```javascript
const video = document.querySelector('video');
const wrap = video.closest('.player');
video.addEventListener('play', () => wrap.classList.add('is-playing'));
video.addEventListener('pause', () => wrap.classList.remove('is-playing'));
video.addEventListener('waiting', () => wrap.classList.add('is-buffering'));
video.addEventListener('playing', () => wrap.classList.remove('is-buffering'));
video.addEventListener('volumechange', () => {
  wrap.classList.toggle('is-muted', video.muted);
});
```

```css
video:paused + .controls .play-icon { display: block; }
video:playing + .controls .pause-icon { display: block; }
video:buffering + .controls .spinner { display: block; }
video:muted + .controls .muted-badge { display: block; }
.player:has(video:playing) {
  outline: 2px solid currentColor;
}
```

--------------------------------

### Basic background-blend-mode Usage

Source: https://modern-css.com/reference/properties/background-blend-mode

Use this snippet to blend a background image with a gradient. The `overlay` value blends the image pattern with the blue/black gradient.

```css
.hero-banner {
  background-image: url('pattern.png'), linear-gradient(blue, black);
  background-blend-mode: overlay;
  /* blends the image pattern with the blue/black gradient */
}
```

--------------------------------

### Basic :focus Styling

Source: https://modern-css.com/reference/selectors/focus

Applies styles to an input element when it is in a focused state. This is useful for providing visual feedback to the user.

```css
input:focus {
  /* Changes background color when the user selects the input */
  background-color: #f3f4f6;
  outline: none;
  border: 1px solid #3b82f6;
}
```

--------------------------------

### Modern CSS Color Method (oklch)

Source: https://modern-css.com/vivid-colors-beyond-srgb

This CSS snippet utilizes the oklch color format, which supports wider color gamuts and provides more vivid colors on compatible displays. It can also be used with the color(display-p3 ...) syntax.

```css
.hero   {  color: oklch(0.7 0.25 29);}/* Or: color(display-p3 1 0.2 0.1) for P3. */
```

--------------------------------

### Modern Media Query Ranges

Source: https://modern-css.com/cheatsheet

Use simplified media query range syntax (e.g., `600px <= width <= 900px`) for more readable and concise breakpoint definitions.

```css
@media (600px <= width <= 900px)
```

--------------------------------

### Custom Easing with Linear Interpolation

Source: https://modern-css.com/cheatsheet

Define custom easing functions using the `linear()` syntax for precise control over animation timing.

```css
linear(0, 0.5 50%, 1);
```

--------------------------------

### Old Frosted Glass Hack CSS

Source: https://modern-css.com/frosted-glass-effect-without-opacity-hacks

This CSS demonstrates the older method of creating a frosted glass effect using a pseudo-element with a blurred background image and z-index stacking. It requires more lines of code and a background image.

```css
.card::before   {  content: '';  position: absolute;  inset: 0;  background-image: url(bg.jpg);  background-size: cover;  filter: blur(12px);  z-index: -1;}
```

--------------------------------

### Basic font-style Usage

Source: https://modern-css.com/reference/properties/font-style

Demonstrates the standard way to italicize text using the `font-style: italic;` declaration. This is commonly used for emphasis.

```css
em {
  /* Standard way to italicize text */
  font-style: italic;
}
```

--------------------------------

### Old Way: GSAP MotionPath Plugin

Source: https://modern-css.com/motion-path-animation-without-javascript

This snippet demonstrates the traditional method using GSAP and its motionPath plugin to animate an element along an SVG path. It requires both GSAP and the motionPath plugin to be included in the project.

```html
<svg><path id="track" d="M 0 0 C 150 -100 300 100 450 0"/></svg><div class="ball"></div>
```

```javascript
gsap.to('.ball', {
  duration: 2,
  ease: 'none',
  motionPath: { path: '#track', autoRotate: true }
});
```

--------------------------------

### Tailwind CSS with OKLCH Arbitrary Values

Source: https://modern-css.com/perceptually-uniform-colors-with-oklch

Demonstrates how to use OKLCH colors with arbitrary value syntax in Tailwind CSS v4 for text and background colors.

```html
/* Tailwind v4 — oklch arbitrary values */<p class="text-[oklch(0.7_0.2_220)]">Heading</p><div class="bg-[oklch(0.9_0.05_100)]">Card</div>
```

--------------------------------

### CSS Custom Properties for Theming

Source: https://modern-css.com/cheatsheet

Use CSS Custom Properties (`--custom-property`) and `var()` for dynamic theming, replacing Sass variables.

```css
--custom-property + var()
```

--------------------------------

### Apply box-decoration-break: clone

Source: https://modern-css.com/reference/properties/box-decoration-break

Use 'clone' to ensure background, padding, and borders are applied to every fragment of an element, even when it breaks across lines. This is useful for visual effects like gradients or consistent styling.

```css
span.highlight {
  background: linear-gradient(to right, #7c3aed, #ec4899);
  padding: 0.2rem 0.5rem;
  border-radius: 4px;
  /* standard 'slice' (default) cuts borders/padding at line breaks */
  /* 'clone' ensures every line fragment gets the background and padding */
  box-decoration-break: clone;
  -webkit-box-decoration-break: clone;
}
```

--------------------------------

### Style the select dropdown menu with ::picker

Source: https://modern-css.com/reference/selectors/picker

Use the ::picker pseudo-element to apply styles such as background, border-radius, and box-shadow to the dropdown popup list itself. This feature is experimental and may not be supported in all browsers.

```css
select::picker {
  /* Styles the dropdown popup list itself */
  background: #222;
  border-radius: 12px;
  box-shadow: 0 10px 30px rgba(0,0,0,0.5);
}
```

--------------------------------

### Old Way: Multiple @font-face Rules for Each Weight

Source: https://modern-css.com/multiple-font-weights-without-multiple-files

This demonstrates the traditional method of defining separate @font-face rules for each font weight, leading to multiple HTTP requests.

```css
@font-face   {  font-family: "MyFont";  src: url("MyFont-Regular.woff2");  font-weight: 400;}@font-face   {  font-weight: 700;  ...}@font-face   {  font-weight: 600;  ...}
```

--------------------------------

### Old Way: Specificity Wars with !important

Source: https://modern-css.com/controlling-specificity-without-important

Demonstrates the traditional method of increasing specificity or using !important to override styles, often leading to complex and hard-to-maintain CSS.

```css
.card .title   {  font-size: 1rem;}.page .card .title   {  font-size: 1.25rem;}.page .card .title.special   {  color: red !important;}// More selectors or !important to win
```

--------------------------------

### Pull an item to the front with CSS order

Source: https://modern-css.com/reference/properties/order

Use a negative integer for the order property to visually pull an item to the beginning of its container. This is helpful when content order is fixed but visual priority needs adjustment.

```css
.cards .featured {
  order: -1;
}
```

--------------------------------

### Old Way: Line-height Fudging for Button Text Centering

Source: https://modern-css.com/centering-button-text-without-line-height-tweaks

This CSS demonstrates the traditional method of adjusting `line-height` and `padding` to fake a centered look for button text, which requires per-font tuning.

```css
/* per-font line-height tuning to fake a centered look */.btn   {  line-height: 1.15;  padding: 13px 20px 11px;}
```

--------------------------------

### Old Way: JavaScript Event Listeners for Tooltips

Source: https://modern-css.com/hover-tooltips-without-javascript-events

This snippet shows the traditional JavaScript approach to managing tooltip visibility and positioning using event listeners for mouse and focus interactions. It requires manual handling of hover, focus, and blur events.

```javascript
/* JS: manage hover, focus, and position */btn.addEventListener('mouseenter', () =>   {  tip.hidden = false;  positionTooltip(btn, tip);});btn.addEventListener('mouseleave', () =>   {  tip.hidden = true;});btn.addEventListener('focus', /* … */);btn.addEventListener('blur', /* … */);
```

--------------------------------

### Fill Available Space with CSS width: stretch

Source: https://modern-css.com/category/layout

Use the `width: stretch` keyword to make an element fill available space within its container, a modern alternative to `width: 100%` or `calc()` calculations.

```css
.full {
  width: 100%;
  width: calc(100% - 40px);
}
```

```css
.full {
  width: stretch;
}
```

--------------------------------

### Font Loading Strategy with font-display: swap

Source: https://modern-css.com/cheatsheet

Control font loading behavior with `font-display: swap` to prevent the flash of invisible text (FOIT) and improve perceived performance.

```css
font-display: swap
```

--------------------------------

### Apply Styles to Editable Elements with :read-write

Source: https://modern-css.com/reference/selectors/read-write

Use the :read-write pseudo-class to apply styles to elements that the user can directly edit. This is useful for providing visual feedback on interactive form fields.

```css
input:read-write {
  /* Adds a subtle 'editable' glow to fields that the user can actually type in */
  border-bottom: 2px solid var(--accent);
}
```

--------------------------------

### CSS Modal Controls with commandfor and command Attributes

Source: https://modern-css.com/category/html

Control dialog visibility using `commandfor` and `command` attributes on trigger elements, enabling declarative modal interactions without JavaScript event listeners.

```html
<!-- Inline onclick or JS event listener --><button onclick="  document.querySelector('#dlg') // [!code --]  .showModal()"> // [!code --]  Open Dialog</button><dialog id="dlg">...</dialog>
```

```html
<button commandfor="dlg" command="show-modal">  Open Dialog</button><dialog id="dlg">...</dialog>
```

--------------------------------

### Modal Controls with commandfor

Source: https://modern-css.com/cheatsheet

Control modal dialogs and other elements using `commandfor` and `command` attributes, enabling declarative UI interactions.

```html
commandfor + command attributes
```

--------------------------------

### CSS Drop Caps with initial-letter

Source: https://modern-css.com/category/css

Create drop caps for stylistic emphasis using the `initial-letter` property, with a `-webkit-` prefix for broader compatibility.

```css
.drop-cap::first-letter   {
  -webkit-initial-letter: 3;
  initial-letter: 3;
}
```

--------------------------------

### CSS Modal Controls with commandfor

Source: https://modern-css.com/

Utilize `commandfor` and `command` attributes to control dialogs, eliminating the need for inline `onclick` or JavaScript event listeners.

```html
<!-- Inline onclick or JS event listener --><button onclick="  document.querySelector('#dlg') // [!code --]  .showModal()"> // [!code --]  Open Dialog</button><dialog id="dlg">...</dialog>
```

```html
<button commandfor="dlg" command="show-modal">
  Open Dialog
</button><dialog id="dlg">...</dialog>
```

--------------------------------

### Modern Way: Automatic Contrast Color with contrast-color()

Source: https://modern-css.com/readable-text-without-manual-contrast-checks

Use `contrast-color()` with a CSS variable for the background to automatically set the text color. This ensures WCAG AA contrast and works with dynamic themes by defining only the background color.

```css
.badge   {  background: var(--bg);  color: contrast-color(var(--bg));}
```

--------------------------------

### Force New Page Before H1

Source: https://modern-css.com/reference/properties/page-break-before

Use this to ensure every H1 element begins on a fresh page in printed output. This property is deprecated.

```css
h1 {
  /* Ensures every H1 starts on a fresh page in printed documents */
  page-break-before: always;
}
```

--------------------------------

### Floating Labels with Placeholder States

Source: https://modern-css.com/changelog

Implement floating labels for input fields using :placeholder-shown and :not(:placeholder-shown) pseudo-classes. This replaces JavaScript solutions for toggling a .filled class.

```css
input:not(:placeholder-shown) + label,
input:focus + label {
  /* Label styles when input is filled or focused */
  transform: translateY(-100%);
  font-size: 0.8em;
}

label {
  /* Default label styles */
  position: absolute;
  left: 0;
  top: 0;
  transition: all 0.2s ease-out;
}
```

--------------------------------

### Proportional Columns with flex-grow

Source: https://modern-css.com/reference/properties/flex-grow

Distributes available space proportionally between columns. The 'main' column receives twice the available space compared to the 'aside' column.

```css
.main {
  flex-grow: 2;
}
.aside {
  flex-grow: 1;
}
```

--------------------------------

### Set MathML Equation Style to Compact

Source: https://modern-css.com/reference/properties/math-style

Use the `math-style: compact;` declaration to render MathML equations in a compact, inline style, fitting them within a paragraph.

```css
math {
  /* Ensures the math formula is rendered in a compact, inline style */
  math-style: compact;
}
```

--------------------------------

### CSS speak-as: spell-out

Source: https://modern-css.com/reference/properties/speak-as

Use this to force screen readers to spell out content, such as acronyms, letter by letter.

```css
.acronym {
  /* Forces screen readers to say 'H-T-M-L' instead of trying to pronounce it */
  speak-as: spell-out;
}
```

--------------------------------

### Animating `display: none` Elements

Source: https://modern-css.com/cheatsheet

Enable transitions and animations on elements that change `display` property using `transition-behavior: allow-discrete`.

```css
transition-behavior: allow-discrete;
```

--------------------------------

### Basic Usage of border-block-color

Source: https://modern-css.com/reference/properties/border-block-color

This snippet demonstrates how to set the color, style, and width for both the top and bottom borders of an element using logical properties. It's useful for consistent vertical border styling.

```css
.sidebar-item {
  /* Sets both top and bottom borders to purple */
  border-block-color: #7c3aed;
  border-block-style: solid;
  border-block-width: 2px;
}
```

--------------------------------

### HTML Dialog with Native Light Dismiss

Source: https://modern-css.com/dialog-light-dismiss-without-click-outside-listeners

This HTML snippet demonstrates the modern approach using the `closedby="any"` attribute for native light dismiss behavior. It allows closing the dialog by clicking outside or pressing ESC.

```html
<dialog closedby="any">
  Click outside or press ESC to close
</dialog>
```

--------------------------------

### Style Gaps in Grid and Flex Layouts

Source: https://modern-css.com/whats-new-in-css-2026

Apply column-rule-like properties for styling gaps between grid and flex tracks. Supports lines, dashes, or gradients without extra DOM elements.

```css
.grid {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  gap: 20px;
  column-rule: 1px solid #ccc;
  row-rule: 1px dashed #eee;
}
```

--------------------------------

### Using scrollbar-gutter: stable both

Source: https://modern-css.com/preventing-layout-shift-from-scrollbar

The `both` keyword reserves space for scrollbars on both sides of the layout, useful for symmetric designs like centered content.

```css
scrollbar-gutter: stable both;
```

--------------------------------

### CSS contrast-color() for Readable Text

Source: https://modern-css.com/category/color

Use `contrast-color()` to automatically set text color for optimal readability against a given background color. This avoids hardcoding text colors for each background variant.

```css
/* Hardcode a text color per background */.badge-blue   {  background: #1e40af;  color: white;}.badge-yellow   {  background: #fde047;  color: black;}/* Repeat for every color variant */
```

```css
.badge   {  background: var(--bg);  color: contrast-color(var(--bg));}
```

--------------------------------

### Enable base-select Mode

Source: https://modern-css.com/articles/build-a-styled-select-dropdown

Apply `appearance: base-select` to the select element and its pseudo-element to enable the base-select mode. This strips default browser styling, providing a foundation for custom CSS.

```css
select,
select ::picker(select) {
  appearance: base-select;
}
```

--------------------------------

### Modern Way: Using Subgrid

Source: https://modern-css.com/aligning-nested-grids-without-duplicating-tracks

This CSS shows the modern approach using `grid-template-columns: subgrid`. The child grid inherits the parent's track definitions, simplifying alignment and reducing code.

```css
.parent   {  display: grid;  grid-template-columns: 1fr 1fr 1fr;}.child-grid   {  display: grid;  grid-template-columns: subgrid;}
```

--------------------------------

### CSS Lazy Rendering with content-visibility

Source: https://modern-css.com/category/workflow

Implement lazy rendering using content-visibility: auto and contain-intrinsic-size for improved performance by deferring the rendering of off-screen content.

```javascript
// JavaScript
const observer = new IntersectionObserver(
  (entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        renderContent(entry.target);
      }
    });
  }
);
```

```css
.section {
  content-visibility: auto;
  contain-intrinsic-size: auto 500px;
}
```

--------------------------------

### Modern CSS Reset with :where()

Source: https://modern-css.com/low-specificity-resets-without-complicated-selectors

This modern approach uses the :where() pseudo-class to apply resets with zero specificity, ensuring that component styles always take precedence.

```css
:where(ul, ol)   {  margin: 0;  padding-inline-start: 1.5rem;}/* Specificity 0. .list { padding: 0 } wins. */
```

--------------------------------

### CSS Anchor Positioning for Tooltips

Source: https://modern-css.com/category/layout

Simplify tooltip positioning by using anchor-name and position-anchor, eliminating the need for JavaScript-based coordinate calculations.

```css
.tooltip   {  position: fixed;  top: var(--computed-top);  left: var(--computed-left);}
```

```css
.trigger   {  anchor-name: --tip;}.tooltip   {  position-anchor: --tip;  top: anchor(bottom);}
```

--------------------------------

### Old Way: Fixed Pixel clip-path()

Source: https://modern-css.com/path-shapes-without-svg-clip-paths

This method uses the `clip-path: path()` function with absolute pixel coordinates. It is not responsive and will break when the element resizes.

```css
.hero   {  clip-path: path(     "M 0 0 L 800 0 L 800 360 /* */  Q 400 420 0 360 Z" /* */  );  /* Breaks on resize */}
```

--------------------------------

### Set Outline Width, Style, and Offset

Source: https://modern-css.com/reference/properties/outline

Use this shorthand to define an element's outline, including its thickness, style, and color, along with an offset from the border. This is useful for creating accessible focus indicators without altering layout.

```css
button:focus-visible {
  outline: 3px solid var(--accent);
  outline-offset: 4px;
  /* accessible focus style that doesn't trigger layout shifts */
}
```

--------------------------------

### Old CSS Transform Shorthand vs. Modern Individual Properties

Source: https://modern-css.com/independent-transforms-without-the-shorthand

Compares the older method of using the transform shorthand with multiple values to the modern approach using separate translate, rotate, and scale properties. The modern approach simplifies updates and animations.

```css
.icon   {  transform: translateX(10px) rotate(45deg) scale(1.2);}.icon:hover   {  transform: translateX(10px) rotate(90deg) scale(1.2);
```

```css
.icon   {  translate: 10px 0;  rotate: 45deg;  scale: 1.2;}.icon:hover   {  rotate: 90deg;}
```

--------------------------------

### Style the first column with ::column

Source: https://modern-css.com/reference/selectors/column

Use the ::column pseudo-element to apply styles exclusively to a specific column in a multi-column layout. This is experimental and may not be supported in all browsers.

```css
.article::column(1) {
  /* Experimental: styles only the first column */
  background-color: #f8fafc;
}
```

--------------------------------

### Outline-Driven CSS Type Scale

Source: https://modern-css.com/automatic-type-scale-without-manual-sizes

An experimental CSS pattern that calculates font sizes based on heading hierarchy using :heading(), sibling-index(), and pow(). Includes a manual ladder fallback for compatibility.

```css
/* Experimental: requires :heading(), sibling-index(), and pow() support */
:heading   {  font-weight: 600;
  font-size:    calc(1rem * pow(1.2, 5 - sibling-index()));}
/* Fallback: keep a simple manual ladder for all other browsers */
h1   {  font-size: 2.5rem;}
h2   {  font-size: 2rem;}
h3   {  font-size: 1.5rem;}
```

--------------------------------

### Modern CSS for Auto-Growing Textarea with Tailwind

Source: https://modern-css.com/auto-growing-textarea-without-javascript

This modern CSS approach uses `field-sizing: content` for automatic resizing and `min-height` to set a base size. It's a concise alternative to JavaScript solutions.

```css
textarea   {  field-sizing: content;  min-height: 3lh;}
```

--------------------------------

### Old Way: Multiple Class Variants

Source: https://modern-css.com/inline-conditional-styles-without-javascript

This approach requires multiple CSS rules for each variant and JavaScript to manage class toggling.

```css
/* Multiple class variants */.btn   {  background: gray;}.btn.primary   {  background: blue;}.btn.danger   {  background: red;}/* Plus JS to manage state */el.classList.toggle(   'primary',  isPrimary );/* Duplicated rules per variant */
```

--------------------------------

### Enable System Dark Mode Support

Source: https://modern-css.com/reference/properties/color-scheme

Use this CSS to enable systemic dark mode support for your element. This allows the browser to automatically adjust UI elements to match the dark theme.

```css
:root {
  /* Enables systemic dark mode support */
  color-scheme: light dark;
}
```

--------------------------------

### Define and use a namespace prefix

Source: https://modern-css.com/reference/at-rules/namespace

Use @namespace to declare a prefix for an XML namespace. This allows you to target elements within that specific namespace using the prefix followed by a pipe (|) and the element name.

```css
@namespace svg url('http://www.w3.org/2000/svg');

/* Targets only <rect> elements that are inside the SVG namespace */
svg|rect {
  fill: blue;
}
```

--------------------------------

### Define a Scroll Timeline for Viewport Entry

Source: https://modern-css.com/reference/properties/view-timeline

Use this CSS to create a scroll timeline named '--reveal' that triggers when an element enters the viewport. The animation will then be controlled by this timeline.

```css
.revealing-box {
  view-timeline: --reveal block;
  animation-timeline: --reveal;
  /* animation starts when the box enters the viewport */
}
```

--------------------------------

### Modern Way: Container-based Responsive Card (Tailwind)

Source: https://modern-css.com/responsive-components-without-media-queries

This CSS uses container queries to make a card responsive based on its parent container's width. It requires setting `container-type` on the parent and using `@container` rules.

```css
.wrapper   {  container-type: inline-size;}.card   {  grid-template-columns: 1fr;}@container (width > 400px)   {  .card   {    grid-template-columns: auto 1fr;  }}
```

--------------------------------

### Conditional Animations with Tailwind Classes

Source: https://modern-css.com/reduced-motion-without-javascript-detection

Demonstrates how to use Tailwind CSS utility classes to conditionally apply animations. `motion-safe` applies animations only when the user has NOT requested reduced motion, while `motion-reduce` overrides animations for users who have requested reduced motion.

```html
<!-- motion-safe: only applies when user has NOT requested reduced motion -->
<div class="motion-safe:animate-bounce">Animated</div>
<!-- motion-reduce: override for reduced-motion users -->
<div class="animate-spin motion-reduce:animate-none">Spinner</div>
```

--------------------------------

### Relative Color Syntax with oklch

Source: https://modern-css.com/whats-new-in-css-2026

Manipulate colors using relative color syntax with oklch(), enabling adjustments to lightness, chroma, and hue based on a base color.

```css
:root { --brand: oklch(65% 0.25 260); }

.lighter {
  color: oklch(from var(--brand) calc(l + 0.2) c h);
}
.muted {
  color: oklch(from var(--brand) l calc(c * 0.5) h);
}
```

--------------------------------

### Basic text-box-trim Usage

Source: https://modern-css.com/reference/properties/text-box-trim

Use text-box-trim with 'both' to remove extra whitespace above and below text for perfect vertical centering. text-box-edge should be set to 'cap alphabetic' for this to work effectively.

```css
.button {
  /* Removes the extra whitespace above and below the text for perfect vertical centering */
  text-box-trim: both;
  text-box-edge: cap alphabetic;
}
```

--------------------------------

### Old Way: Hardcoded Text Colors for Backgrounds

Source: https://modern-css.com/readable-text-without-manual-contrast-checks

Manually set text colors for specific background colors. This approach requires repeating the color decision for every background variant and becomes unmanageable with dynamic themes.

```css
/* Hardcode a text color per background */.badge-blue   {  background: #1e40af;  color: white;}.badge-yellow   {  background: #fde047;  color: black;}/* Repeat for every color variant */
```

--------------------------------

### Set Element Width with Max-Width

Source: https://modern-css.com/reference/properties/width

Use width to define the primary width and max-width to set a responsive limit. This is useful for containers that should expand but not exceed a certain size.

```css
.container {
  width: 100%;
  max-width: 1200px;
  /* responsive width was a max limit */
}
```

--------------------------------

### Container Queries by Name Only

Source: https://modern-css.com/changelog

Use @container without a size condition to scope styles by name. Requires Chrome 149, Safari 26.4, and Firefox 148.

```css
@container (name: sidebar) {
  .sidebar {
    /* styles */
  }
}
```

--------------------------------

### CSS View Transitions API

Source: https://modern-css.com/

Use the View Transitions API for smooth DOM-changing animations between page states or elements, enabling custom transition effects without heavy JavaScript libraries.

```javascript
// barba.js or custom router transitionsimport Barba from '@barba/core';Barba.init({  transitions: [{    leave: ({ current }) => gsap.to(current.container, { opacity: 0 }),    enter: ({ next }) => gsap.from(next.container, { opacity: 0 })  }]});
```

```javascript
// JS: wrap DOM updatedocument.startViewTransition(() => {  document.body.innerHTML = newContent;});.hero {  view-transition-name: hero;}/* Optional: ::view-transition-old/new(hero) */
```

--------------------------------

### Manual CSS Font-Size Ladder

Source: https://modern-css.com/automatic-type-scale-without-manual-sizes

A traditional method for setting heading font sizes manually. Use this as a fallback for browsers that do not support experimental CSS features.

```css
h1   {  font-size: 2.5rem;}
h2   {  font-size: 2rem;}
h3   {  font-size: 1.5rem;}
h4   {  font-size: 1.25rem;}
h5   {  font-size: 1.1rem;}
h6   {  font-size: 1rem;}
```

--------------------------------

### Light Dismiss with closedby attribute

Source: https://modern-css.com/cheatsheet

Enable light dismiss behavior for popovers and dialogs using the `closedby="any"` attribute, automatically closing them on outside interaction.

```html
closedby="any" attribute
```

--------------------------------

### CSS Lazy Rendering with content-visibility: auto

Source: https://modern-css.com/category/css

Improve performance by deferring the rendering of off-screen content using `content-visibility: auto` and `contain-intrinsic-size`.

```css
.section   {
  content-visibility: auto;
  contain-intrinsic-size: auto 500px;
}
```

--------------------------------

### Fluid Typography with clamp() in CSS

Source: https://modern-css.com/category/css

Implements fluid typography using the clamp() function for responsive font sizes. This method is more concise than using multiple media queries for different screen sizes.

```css
h1   {  font-size: 1rem;}
@media (min-width: 600px)   {
  h1   {
    font-size: 1.5rem;
  }
}
@media (min-width: 900px)   {
  h1   {
    font-size: 2rem;
  }
}
```

```css
h1   {  font-size: clamp(1rem, 2.5vw, 2rem);}
```

--------------------------------

### Style component within a dark theme parent

Source: https://modern-css.com/reference/selectors/host-context

Use :host-context() to apply styles to a custom element when its ancestor has the 'dark-theme' class. This is useful for theming components based on their surrounding environment. Note: This pseudo-class is deprecated.

```css
:host-context(.dark-theme) {
  /* Styles the component for dark theme if its parent has the class */
  background-color: #333;
  color: white;
}
```

--------------------------------

### Style Input with Placeholder Text

Source: https://modern-css.com/reference/selectors/placeholder-shown

Applies styles to an input field when it is empty and showing its placeholder text. This is useful for providing visual cues to the user.

```css
input:placeholder-shown {
  /* Adds a subtle border until the user starts typing */
  border: 1px dashed #ccc;
  background-color: #fafafa;
}
```

--------------------------------

### Clip Image to a Circle

Source: https://modern-css.com/reference/types/basic-shape

Use the `circle()` basic shape function with `clip-path` to clip an element into a perfect circle. This is useful for profile pictures or decorative elements.

```css
.avatar {
  /* Clips the image into a perfect circle */
  clip-path: circle(50%);
}
```

--------------------------------

### Apply Elegant Focus Ring for Keyboard Users

Source: https://modern-css.com/reference/selectors/focus-visible

Use this CSS to add a distinct outline to elements when they receive focus via keyboard navigation. This ensures focus is visible for accessibility without altering the appearance for mouse users.

```css
button:focus-visible {
  /* Elegant focus ring only for keyboard users */
  outline: 2px solid #3b82f6;
  outline-offset: 4px;
}
```

--------------------------------

### Animate display: none in CSS with overlay

Source: https://modern-css.com/category/css

Animate the `display` property using `overlay` and `transition-behavior: allow-discrete`, enabling transitions for elements that are `display: none`.

```css
.panel  {
  transition: opacity .2s;
}
.panel.hidden  {
  opacity: 0;
  visibility: hidden;
}
/* JS: after transition, set display:none and pointer-events */
el.addEventListener('transitionend', () => {
  el.style.display = 'none';
});
```

```css
.panel   {
  transition: opacity .2s, overlay .2s allow-discrete;
  transition-behavior: allow-discrete;
}
.panel.hidden   {
  opacity: 0;
  display: none;
}
```

--------------------------------

### CSS Relative Color Syntax for Lightening

Source: https://modern-css.com/color-variants-without-sass-functions

This modern CSS approach uses relative color syntax to lighten a base color at runtime. It requires no preprocessor.

```css
.btn   {  background:    oklch(from var(--brand) calc(l + 0.2) c h);}
```

--------------------------------

### CSS Hover Tooltips with popover=hint

Source: https://modern-css.com/category/layout

Create simple hover tooltips using the `popover=hint` attribute, eliminating the need for JavaScript to manage tooltip visibility and positioning.

```html
/* JS: manage hover, focus, and position */
btn.addEventListener('mouseenter', () => {
  tip.hidden = false;
  positionTooltip(btn, tip);
});
btn.addEventListener('mouseleave', () => {
  tip.hidden = true;
});
btn.addEventListener('focus', /* … */);
btn.addEventListener('blur', /* … */);
```

```html
<button interestfor="tip">
  Hover me
</button>
<div id="tip" popover=hint>
  Tooltip text
</div>
```

--------------------------------

### Prioritize Fallback with Most Width using position-try-order

Source: https://modern-css.com/reference/properties/position-try-order

Use `position-try-order: most-width;` to instruct the browser to prioritize the fallback position that offers the greatest visible area on the screen. This is useful for ensuring popups or tooltips have maximum visibility.

```css
.popup {
  position-try-fallbacks: flip-block, flip-inline;
  /* Prioritize the fallback that has the most visible area on screen */
  position-try-order: most-width;
}
```

--------------------------------

### CSS Grid Place-items for Centering

Source: https://modern-css.com/category/layout

Center elements within a parent container using 'display: grid' and 'place-items: center', a concise alternative to absolute positioning and transforms.

```css
.parent   {  position: relative;}.child   {  position: absolute;  top: 50%;  left: 50%;  transform: translate(-50%, -50%);}
```

```css
.parent   {  display: grid;  place-items: center;}
```

--------------------------------

### Old Way: Duplicate Grid Tracks

Source: https://modern-css.com/aligning-nested-grids-without-duplicating-tracks

This CSS demonstrates the older method of aligning nested grids by manually duplicating the parent's `grid-template-columns` definition on the child grid. This approach is fragile and prone to synchronization issues.

```css
.parent   {  display: grid;  grid-template-columns: 1fr 1fr 1fr;}.child-grid   {  display: grid;  grid-template-columns: 1fr 1fr 1fr;}
```

--------------------------------

### Define and Apply CSS Mixins

Source: https://modern-css.com/whats-new-in-css-2026

Use @mixin to define reusable blocks of declarations and @apply to apply them. Supports parameters and conditional logic.

```css
@mixin --center {
  display: flex;
  align-items: center;
  justify-content: center;
}

.card { @apply --center; }
```

--------------------------------

### Fixed sidebar with flexible main content

Source: https://modern-css.com/reference/properties/grid-template-columns

Establishes a common application layout with a fixed-width sidebar and a main content area that expands to fill the remaining space.

```css
.layout {
  display: grid;
  grid-template-columns: 240px 1fr;
}
```

--------------------------------

### Modern CSS Anchor Positioning for Tooltips

Source: https://modern-css.com/tooltip-positioning-without-javascript

This CSS demonstrates the modern approach using anchor positioning. It links a tooltip to a trigger element using `anchor-name` and `position-anchor`, allowing the browser to manage positioning declaratively.

```css
.trigger   {  anchor-name: --tip;}.tooltip   {  position-anchor: --tip;  top: anchor(bottom);}
```

--------------------------------

### Style Search Results with ::search-text

Source: https://modern-css.com/reference/selectors/search-text

Use this CSS to customize the background, color, and text decoration of text that matches the browser's search highlighter. This requires no specific imports.

```css
::search-text {
  /* Customizes the look of text that matches the browser's search highlighter */
  background-color: var(--brand-glow);
  color: white;
  text-decoration: underline;
}
```

--------------------------------

### Modern Way: CSS with transition-behavior: allow-discrete

Source: https://modern-css.com/animating-display-none-without-workarounds

This modern CSS approach animates `display: none` directly by allowing discrete properties to participate in transitions. It simplifies the process by removing the need for JavaScript event listeners.

```css
.panel   {  transition: opacity .2s, overlay .2s allow-discrete;  transition-behavior: allow-discrete;}.panel.hidden   {  opacity: 0;  display: none;}
```

--------------------------------

### Create CSS Drop Caps with initial-letter

Source: https://modern-css.com/category/typo

The `initial-letter` property offers a cleaner, CSS-native solution for creating drop caps compared to older float-based methods.

```css
.drop-cap::first-letter   {  float: left;  font-size: 3em;  line-height: 1;  margin-right: 8px;}
```

```css
.drop-cap::first-letter   {  -webkit-initial-letter: 3;  initial-letter: 3;}/* Standard; -webkit- prefix needed for Safari. */
```

--------------------------------

### Set Element Opacity

Source: https://modern-css.com/reference/properties/opacity

Use the opacity property to make an element partially transparent. A value of 0.5 makes the element 50% see-through.

```css
.overlay {
  opacity: 0.5;
  /* element becomes 50% see-through */
}
```

--------------------------------

### Style Targeted Text with ::target-text

Source: https://modern-css.com/reference/selectors/target-text

Use this pseudo-element to customize the background and text color when a user arrives at specific text via a link. Ensure the CSS variable `--brand-highlight` is defined in your project.

```css
::target-text {
  /* Customizes the highlight color when the user arrives at this specific text via a link */
  background-color: var(--brand-highlight);
  color: black;
}
```

--------------------------------

### Native CSS @function for Fluid Sizing

Source: https://modern-css.com/reusable-css-logic-without-sass-mixins

This native CSS @function computes fluid sizes at runtime, allowing the use of dynamic CSS units and custom properties.

```css
@function --fluid(--min, --max) {
  @return clamp(
    var(--min),
    50vi,
    var(--max)
  );
}
```

--------------------------------

### Basic Grid Layout with Named Areas

Source: https://modern-css.com/reference/properties/grid-template-areas

Define a grid container and assign named areas for header, sidebar, main content, and footer. Elements are then placed into these named areas using the grid-area property.

```css
.container {
  display: grid;
  grid-template-areas: 
    "header  header"
    "sidebar main"
    "footer  footer";
}

header { grid-area: header; }
main   { grid-area: main;   }
sidebar { grid-area: sidebar; }
footer { grid-area: footer; }

```

--------------------------------

### Set Minimum Width for a Login Card

Source: https://modern-css.com/reference/properties/min-width

Use min-width to ensure a login card does not shrink below a certain size on small screens, maintaining usability.

```css
.login-card {
  width: 100%;
  max-width: 400px;
  min-width: 320px;
  /* ensures the card doesn't shrink too much on very small screens */
}
```

--------------------------------

### Style ::details-content in CSS

Source: https://modern-css.com/reference/selectors/details-content

Apply styles directly to the expandable content area of a <details> element using the ::details-content pseudo-element. This is useful for customizing its padding, background, and borders.

```css
details::details-content {
  /* Styles the expandable content area directly */
  padding: 10px;
  background-color: #f9fafb;
  border: 1px solid #e5e7eb;
}
```

--------------------------------

### Old CSS Hack for Staggered Animations

Source: https://modern-css.com/staggered-animations-without-nth-child-hacks

This CSS demonstrates the manual approach to creating staggered animations by defining a custom index for each nth-child element. It requires repetitive styling for every list item.

```css
/* Manual index per nth-child */li:nth-child(1)   {  --i: 0;}
li:nth-child(2)   {  --i: 1;}
li:nth-child(3)   {  --i: 2;}
li:nth-child(4)   {  --i: 3;}/* … repeat for every item … */li   {  transition-delay: calc(0.1s * var(--i));}
```

--------------------------------

### Reset CSS Property to Initial Value

Source: https://modern-css.com/reference/types/global_keywords

Use 'all: initial;' to reset all CSS properties of an element back to their default browser values. This is useful for creating a clean slate.

```css
.reset-item {
  /* Forces this property back to its default browser value */
  all: initial;
}
```

--------------------------------

### Apply a zoom effect on click

Source: https://modern-css.com/reference/properties/scale

Use the scale property to enlarge an element by 20% when it is activated (e.g., clicked). This provides a simple visual feedback mechanism.

```css
.zoom-effect:active {
  scale: 1.2;
  /* blows up the element by 20% when clicked */
}
```

--------------------------------

### Basic border-image-slice Usage

Source: https://modern-css.com/reference/properties/border-image-slice

Use this snippet to slice a border image by a fixed number of pixels from each edge. Ensure the border-width is set to accommodate the sliced image.

```css
.sliced-box {
  border: 30px solid;
  border-image-source: url('border.png');
  /* Cut 30px from each edge of the image source */
  border-image-slice: 30;
}
```

--------------------------------

### CSS Media Pseudo-Classes: Modern vs Old

Source: https://modern-css.com/category/selector

Modern CSS uses `:playing`, `:paused`, `:muted` pseudo-classes for media control styling, eliminating the need for JavaScript event listeners to manage player states.

```javascript
const video = document.querySelector('video');const wrap = video.closest('.player');video.addEventListener('play', () => wrap.classList.add('is-playing'));video.addEventListener('pause', () => wrap.classList.remove('is-playing'));video.addEventListener('waiting', () => wrap.classList.add('is-buffering'));video.addEventListener('playing', () => wrap.classList.remove('is-buffering'));video.addEventListener('volumechange', () => {  wrap.classList.toggle('is-muted', video.muted);});
```

```css
video:paused + .controls .play-icon { display: block; }video:playing + .controls .pause-icon { display: block; }video:buffering + .controls .spinner { display: block; }video:muted + .controls .muted-badge { display: block; }.player:has(video:playing) {  outline: 2px solid currentColor;}
```

--------------------------------

### Old CSS Hack for Scaling with transform: scale()

Source: https://modern-css.com/scaling-elements-without-transform-hacks

This approach uses `transform: scale()` to visually shrink an element. It requires negative margins to compensate for the preserved layout space, creating a gap. Use when visual scaling without layout reflow is intended, but be aware of the hacky margin adjustments.

```css
.thumbnail   {  transform: scale(0.5);  transform-origin: top left;  margin-bottom: -50%;  margin-right: -50%;}
```

--------------------------------

### Carousel Navigation with Scroll Buttons and Markers

Source: https://modern-css.com/cheatsheet

Implement carousel navigation using pseudo-elements like `::scroll-button` and `::scroll-marker`.

```css
::scroll-button(next);
::scroll-marker;
```

--------------------------------

### Applying Multiple Text Decorations

Source: https://modern-css.com/reference/properties/text-decoration-line

Use this to add both an underline and a line above the text simultaneously. This property is well-established and widely supported.

```css
h3 {
  /* Adds both an underline and a line above the text */
  text-decoration-line: underline overline;
}
```

--------------------------------

### CSS Relative Color Syntax: Lighten, Darken

Source: https://modern-css.com/

Employ CSS relative color syntax with functions like `oklch(from ...)` to adjust color properties like lightness, eliminating the need for Sass or other preprocessors for simple color manipulations.

```css
/* Sass: @use 'sass:color'; *//* Sass: color.adjust($brand, $lightness: 20%) */
.btn   {
  background: lighten(var(--brand), 20%);
}
```

```css
.btn   {
  background:    oklch(from var(--brand) calc(l + 0.2) c h);
}
```

--------------------------------

### Modern CSS Media Query Range Syntax

Source: https://modern-css.com/category/layout

Adopt the modern media query range syntax (e.g., `600px <= width <= 1200px`) for more readable and concise media queries compared to the older `min-width` and `max-width` combinations.

```css
@media (min-width: 600px) and (max-width: 1200px) {
  .card {
    grid-template-columns: 1fr 1fr;
  }
}
```

```css
@media (600px <= width <= 1200px) {
  .card {
    grid-template-columns: 1fr 1fr;
  }
}
```

--------------------------------

### Pretty Text Wrapping with text-wrap: pretty

Source: https://modern-css.com/cheatsheet

Improve body text readability and prevent orphans with `text-wrap: pretty`, which optimizes line breaks.

```css
text-wrap: pretty
```

--------------------------------

### Nested View Transition Groups

Source: https://modern-css.com/whats-new-in-css-2025

Retain 3D and clipping effects during view transitions by nesting ::view-transition-group pseudo-elements. Use view-transition-group: nearest on child elements.

```css
.card {
  view-transition-name: card;
}

.card-image {
  view-transition-name: card-img;
  view-transition-group: nearest;
  /* nests under ::view-transition-group(card) 
     instead of the root group */
}
```
```

--------------------------------

### Basic margin-block-end Usage

Source: https://modern-css.com/reference/properties/margin-block-end

Adds space at the bottom of an element in a logical manner. This property is well-established and safe to use without fallbacks.

```css
section {
  /* Adds space at the bottom in a logical way */
  margin-block-end: 2rem;
}
```

--------------------------------

### Balance Headlines with text-wrap: balance

Source: https://modern-css.com/category/typo

Use `text-wrap: balance` for automatically balancing text across lines, avoiding manual line breaks or JavaScript solutions.

```css
/* HTML: manual <br> or wrapper for JS */h1   {  text-align: center;  max-width: 40ch;  /* Balance-Text.js: script + init */  /* or insert <br> in CMS/HTML */}
```

```css
h1, h2   {  text-wrap: balance;  max-width: 40ch;}
```

--------------------------------

### CSS scroll-state() Container Queries: :stuck and :snapped

Source: https://modern-css.com/category/animation

Applies styles based on the scroll state of a container. The modern approach uses container queries with `scroll-state()`, while the old way required a JavaScript scroll event listener to toggle a class.

```javascript
/* JS scroll listener approach */
const header = document
  .querySelector('.header');
const offset = header
  .offsetTop;
window.addEventListener(
  'scroll', () => {
    header.classList
      .toggle('stuck',
      window.scrollY
        >= offset);
  });
```

```css
.header-wrap {
  container-type: scroll-state;
}
@container scroll-state( /* [!code ++] */stuck: top /* [!code ++] */) {
  .header {
    box-shadow: 0 2px 8px #0002;
  }
}
```

--------------------------------

### Add Viewport-Aware Flipping

Source: https://modern-css.com/articles/build-a-tooltip-system

Implement `position-try-fallbacks` to enable automatic flipping of the tooltip's position if it would overflow the viewport. This ensures the tooltip remains visible.

```css
#tooltip {
  position-try-fallbacks: flip-block;
}
```

--------------------------------

### Use pi keyword in calc()

Source: https://modern-css.com/reference/types/calc-keyword

Use the `pi` keyword within a `calc()` function to perform circle-related calculations for element dimensions.

```css
.circular-path {
  /* Using pi keyword inside calc for circle math */
  width: calc(2 * pi * 10px);
}
```

--------------------------------

### Old CSS Approach for Discrete Checks

Source: https://modern-css.com/range-style-queries-without-multiple-blocks

This method uses multiple discrete `@container style()` blocks to apply styles based on specific custom property values. It requires repeating blocks for each threshold, making it verbose.

```css
/* Multiple discrete checks */@container style(--progress: 0%)   {  .bar   {    background: red;  }}
@container style(--progress: 25%)   {  .bar   {    background: orange;  }}
@container style(--progress: 50%)   {  .bar   {    background: yellow;  }}
/* ... repeat for every threshold *//* Or use JavaScript to set classes *//* based on the numeric value */
```

--------------------------------

### CSS Floating Labels: Modern vs Old

Source: https://modern-css.com/category/selector

Modern CSS uses `:placeholder-shown` to create floating labels without JavaScript. The old method required JS to toggle a class.

```css
/* .filled class toggled by JS on every keystroke */.field.filled label,.field input:focus + label   {  translate: 0 -1.4rem;  font-size: .75rem;}// JS: toggle .filled on input input.addEventListener('input', () => {   input.closest('.field').classList.toggle('filled', input.value.length > 0); });
```

```css
input:not(:placeholder-shown) + label,input:focus + label   {  translate: 0 -1.4rem;  font-size: .75rem;}/* no .filled class, no JS */
```

--------------------------------

### Complex Responsive Clip Paths with shape()

Source: https://modern-css.com/whats-new-in-css-2025

Create intricate, responsive clip paths using the shape() function, which supports curves, lines, and CSS custom properties for dynamic scaling.

```css
.blob {
  clip-path: shape(
    from 0% 50%,
    curve to 50% 0% with 0% 0%,
    curve to 100% 50% with 100% 0%,
    curve to 50% 100% with 100% 100%,
    curve to 0% 50% with 0% 100%
  );
}
```
```

--------------------------------

### Apply text-autospace to an Article

Source: https://modern-css.com/reference/properties/text-autospace

Use the `auto` value to enable automatic spacing between Latin and CJK characters. This property is inherited.

```css
article {
  /* Automatically handles spacing between Latin and CJK characters */
  text-autospace: auto;
}
```

--------------------------------

### Apply Slashed Zeros and Tabular Numbers

Source: https://modern-css.com/reference/properties/font-variant-numeric

Use this CSS to apply slashed zeros and tabular numbers for better alignment in pricing tables. This ensures numbers align vertically, improving readability.

```css
.pricing-table {
  /* Uses slashed zeros and tabular numbers for better alignment */
  font-variant-numeric: slashed-zero tabular-nums;
}
```

--------------------------------

### Customize Selection Highlight

Source: https://modern-css.com/reference/selectors/selection

Use this to change the default blue highlight color to your brand color and set the text color for selected content.

```css
::selection {
  /* Changes the default blue highlight color to your brand color */
  background: var(--brand-accent);
  color: white;
}
```

--------------------------------

### Windows High Contrast Support

Source: https://modern-css.com/changelog

Ensure buttons remain visible in Windows High Contrast mode by using @media (forced-colors: active) with system color keywords. Widely available since 2022.

```css
@media (forced-colors: active) {
  button {
    background-color: ButtonFace;
    color: ButtonText;
  }
}
```

--------------------------------

### Image Fit with Object-Fit

Source: https://modern-css.com/cheatsheet

Control how an image or video content fits within its container using `object-fit: cover`.

```css
object-fit: cover;
```

--------------------------------

### Modern CSS with text-wrap: balance

Source: https://modern-css.com/balanced-headlines-without-manual-line-breaks

Applies the `text-wrap: balance` property for native headline balancing. This is a concise and efficient CSS-only solution.

```css
h1, h2   {  text-wrap: balance;  max-width: 40ch;}
```

--------------------------------

### Dock Tooltip to Anchor Bottom

Source: https://modern-css.com/reference/types/anchor

Use the `anchor()` function to position the top of the tooltip to the bottom of its anchor element. Requires `position: absolute`.

```css
.tooltip {
  /* Docks the top of the tooltip to the bottom of the anchor */
  top: anchor(bottom);
  position: absolute;
}
```

--------------------------------

### CSS scroll-state() Container Queries

Source: https://modern-css.com/category/css

Utilize `scroll-state()` container queries to apply styles based on an element's scroll position, such as sticky headers.

```javascript
const header = document
  .querySelector('.header');
const offset = header
  .offsetTop;
window.addEventListener(
  'scroll', () =>  {
  header.classList
      .toggle('stuck',
      window.scrollY
        >= offset);
});
```

```css
.header-wrap   {
  container-type: scroll-state;
}
@container scroll-state( /* [!code ++] */stuck: top /* [!code ++] */)   {
  .header   {
    box-shadow: 0 2px 8px #0002;
  }
}
```

--------------------------------

### Variable Fonts with Weight Range

Source: https://modern-css.com/cheatsheet

Utilize variable fonts by specifying a weight range (e.g., `100 900`) instead of loading separate font files for each weight.

```css
font-weight: 100 900 (variable font)
```

--------------------------------

### Auto-Resize Textarea with field-sizing: content

Source: https://modern-css.com/category/layout

Implement auto-resizing textareas using `field-sizing: content` and `min-height: 3lh`, eliminating the need for JavaScript to adjust height based on content.

```css
textarea {
  overflow: hidden;
}
// JS: reset height then set to scrollHeight on every input
el.addEventListener('input', () => {
  el.style.height = 'auto';
  el.style.height = el.scrollHeight + 'px';
});
```

```css
textarea {
  field-sizing: content;
  min-height: 3lh;
}
```

--------------------------------

### CSS Dark Mode Colors with light-dark()

Source: https://modern-css.com/category/color

Implement dark mode color schemes efficiently using the `light-dark()` function. It automatically selects between two colors based on the user's preference or system settings.

```css
:root   {  --text: #111;  --bg: #fff;}@media (prefers-color-scheme: dark)   {  :root   {    --text: #eee;    --bg: #222;  }}
```

```css
:root   {  color-scheme: light dark;  color: light-dark(#111, #eee);}
```

--------------------------------

### Container Query Style Queries

Source: https://modern-css.com/cheatsheet

Query container styles with `@container style()`, allowing elements to adapt based on custom properties defined on their ancestors.

```css
@container style(--n > 50) { }
```

--------------------------------

### Define a Ray Motion Path

Source: https://modern-css.com/reference/types/ray

Use the ray() function within offset-path to create a linear path. The offset-distance property then controls how far along this ray the element moves.

```css
.moving-dot {
  /* Moves the element 100px away from its start along a 45-degree angle */
  offset-path: ray(45deg);
  offset-distance: 100px;
}
```

--------------------------------

### Old Way: Entry Animation with JavaScript Timing

Source: https://modern-css.com/entry-animations-without-javascript-timing

This approach requires JavaScript to add a class after the element has painted, ensuring the CSS transition is triggered. It involves multiple requestAnimationFrame calls to reliably detect the initial paint.

```css
.card   {  opacity: 0;  transform: translateY(10px);}.card.visible   {  opacity: 1;  transform: none;}
```

```javascript
// JS: must run after paint or transition won't run requestAnimationFrame(() => {   requestAnimationFrame(() => {     el.classList.add('visible');   });});
```

--------------------------------

### Customizing Accordion Marker with CSS

Source: https://modern-css.com/accordion-without-javascript

Shows how to remove the default disclosure triangle marker and replace it with custom styling using CSS pseudo-elements.

```css
details summary {
  list-style: none;
}

details summary::marker {
  /* custom marker styles */
}
```

--------------------------------

### Modern CSS linear() for Bounce Easing

Source: https://modern-css.com/custom-easing-without-cubic-bezier-guessing

This snippet demonstrates the modern CSS approach using the linear() timing function to create a bounce effect. It's a concise, pure CSS solution for complex easing.

```css
.el {
  transition: transform 0.6s
    linear(0, 1.2 60%, 0.9, 1.05, 1);
}
```

--------------------------------

### Auto-Growing Textarea with field-sizing

Source: https://modern-css.com/cheatsheet

Enable textareas to automatically grow with content using `field-sizing: content`, eliminating the need for JavaScript resize logic.

```css
field-sizing: content
```

--------------------------------

### Set timeline-trigger-source to auto

Source: https://modern-css.com/reference/properties/timeline-trigger-source

Use `auto` to set the source for the animation trigger to the nearest scroller. This is the initial value.

```css
.animation-target {
  /* Sets the source for the animation trigger to the nearest scroller */
  timeline-trigger-source: auto;
}
```

--------------------------------

### Use <angle-percentage> for Rotation

Source: https://modern-css.com/reference/types/angle-percentage

Use this type to accept user input for rotation, which can be an explicit angle or a percentage of a full circle.

```css
.dial {
  /* Accepts both 90deg or 25% (of a full circle) */
  transform: rotate(var(--user-input));
}
```

--------------------------------

### Tailwind CSS Utilities for Independent Transforms

Source: https://modern-css.com/independent-transforms-without-the-shorthand

Demonstrates how Tailwind CSS utility classes map to individual transform properties, allowing for targeted changes without affecting other transform values. Each utility sets its own CSS variable.

```html
<div class="translate-x-2.5 rotate-45 scale-[1.2] hover:rotate-90">  Icon</div><!-- hover:rotate-90 only changes rotation, translate and scale stay -->
```

--------------------------------

### Modern Way: Using accent-color (CSS)

Source: https://modern-css.com/styling-form-controls-without-rebuilding-them

This CSS snippet shows the modern approach using the accent-color property to directly style checkboxes and radio buttons. It's a concise, three-line solution that leverages native control styling.

```css
input[type="checkbox"],input[type="radio"]   {  accent-color: #7c3aed;} 
```

--------------------------------

### Modern CSS Solution with interpolate-size

Source: https://modern-css.com/smooth-height-auto-animations-without-javascript

This modern CSS approach uses 'interpolate-size: allow-keywords' to enable direct transitions to and from 'height: auto'. It requires minimal CSS and no JavaScript.

```css
:root   {  interpolate-size: allow-keywords;}.accordion   {  height: 0;  overflow: hidden;  transition: height .3s ease;}.accordion.open   {  height: auto;}
```

--------------------------------

### Define a Custom Font with @font-face

Source: https://modern-css.com/reference/at-rules/font-face

Use this rule to load a custom font file and define its properties like family name, source, weight, style, and display behavior. This allows you to use unique fonts on your website.

```css
@font-face {
  font-family: 'MyCustomFont';
  src: url('/fonts/my-font.woff2') format('woff2');
  font-weight: normal;
  font-style: normal;
  font-display: swap;
}
```

--------------------------------

### CSS @property for Typed Custom Properties

Source: https://modern-css.com/category/css

Enable transitions and animations on custom properties by defining their type, inheritance, and initial value using @property.

```css
@property --hue   {
  syntax: "<angle>";
  inherits: false;
  initial-value: 0deg;
}
.wheel   {
  background: hsl(var(--hue), 80%, 50%);
  transition: --hue .3s;
}
```

--------------------------------

### Implement Conditional CSS with if()

Source: https://modern-css.com/whats-new-in-css-2025

Use the `if()` function for inline conditional values in CSS properties. It supports media queries (`if(media(...))`), feature queries (`if(supports(...))`), and style queries (`if(style(...))`).

```css
.container {
  padding: if(
    media(width >= 768px): 40px;
    else: 16px
  );

  display: if(
    supports(display: grid): grid;
    else: flex
  );
}
```

--------------------------------

### Old CSS clip-path using SVG path()

Source: https://modern-css.com/responsive-clip-paths-without-svg

This method uses SVG's path() function with fixed coordinates, which do not scale responsively with the element. It's less flexible for modern web design.

```css
.shape   {  clip-path: path(     'M0 200 L100 0 L200 200 Z'  );}
```

--------------------------------

### Modern Way: 100dvh CSS

Source: https://modern-css.com/mobile-viewport-height-without-100vh-hack

Using `100dvh` ensures that full-height elements adapt to the actual visible viewport, accounting for dynamic browser UI elements like the address bar and navigation controls.

```css
.hero   {  height: 100dvh;}
```

--------------------------------

### CSS grid-template-areas for Named Grid Layouts

Source: https://modern-css.com/category/css

Define complex grid layouts using `grid-template-areas` for better readability and easier management of grid item placement.

```css
.header   {
  grid-column: 1 / -1;
}.sidebar   {
  grid-column: 1;
  grid-row: 2;
}.main   {
  grid-column: 2;
  grid-row: 2;
}.footer   {
  grid-column: 1 / -1;
  grid-row: 3;
}
```

```css
.layout   {
  display: grid;
  grid-template-areas:
    "header header"
    "sidebar main"
    "footer footer";
}.header   {
  grid-area: header;
}.sidebar   {
  grid-area: sidebar;
}
```

--------------------------------

### Basic Underline with Skip Ink

Source: https://modern-css.com/reference/properties/text-decoration-skip-ink

Use this to apply an underline to text while ensuring it doesn't cut through the descenders of characters like 'y' or 'q'. This provides a cleaner visual appearance.

```css
p {
  text-decoration: underline;
  /* Ensures the underline doesn't cut through the tails of letters like 'y' or 'q' */
  text-decoration-skip-ink: auto;
}
```

--------------------------------

### Modern CSS Multiline Truncation with line-clamp

Source: https://modern-css.com/multiline-text-truncation-without-javascript

This CSS snippet demonstrates the modern approach to multiline text truncation using `line-clamp`. It requires `-webkit-box` and `-webkit-line-clamp` for broad compatibility, with `line-clamp` for the standard property. `overflow: hidden` completes the effect.

```css
.card-title   {  display: -webkit-box;  -webkit-line-clamp: 3;  line-clamp: 3;  overflow: hidden;}/* Standard; -webkit- prefix still needed. */
```

--------------------------------

### Define and Use Custom Positioning Set

Source: https://modern-css.com/reference/at-rules/position-try

Define a custom positioning set named '--custom-bottom' with specific area and margin, then apply it as a fallback to an element's 'position-try-fallbacks' property.

```css
@position-try --custom-bottom {
  position-area: bottom;
  margin-top: 10px;
}

.popover {
  position-try-fallbacks: --custom-bottom;
}
```

--------------------------------

### Modern Way: CSS-Only Select Styling

Source: https://modern-css.com/customizable-selects-without-a-javascript-library

This snippet demonstrates the modern approach using `appearance: base-select` for full CSS customization of native selects. It requires minimal CSS and no JavaScript.

```css
select,select ::picker(select)   {  appearance: base-select;}
select option:checked   {  background: var(--accent);}
```

--------------------------------

### Auto Readable Text Color

Source: https://modern-css.com/cheatsheet

Ensure text has sufficient contrast against its background by using `contrast-color()`.

```css
color: contrast-color(var(--bg));
```

--------------------------------

### Apply a Custom Arrow Marker to an SVG Path

Source: https://modern-css.com/reference/properties/marker-start

Use the `marker-start` property to reference an SVG marker element (e.g., an arrowhead) and apply it to the beginning of an SVG path. Ensure the referenced marker ID exists within your SVG.

```css
path {
  marker-start: url(#arrow);
  /* places a custom arrow marker at the beginning of the path */
}
```

--------------------------------

### Basic Column Rule

Source: https://modern-css.com/reference/properties/column-rule

Sets a 1-pixel solid gray rule between three columns. This is a shorthand for column-rule-width, column-rule-style, and column-rule-color.

```css
.multi-col-text {
  column-count: 3;
  /* Shorthand for width, style, and color */
  column-rule: 1px solid #ddd;
}
```

--------------------------------

### Create CSS-Only Carousel Navigation

Source: https://modern-css.com/whats-new-in-css-2025

Build accessible carousels using `::scroll-button()` for navigation arrows and `::scroll-marker` for indicators. Ensure the carousel container has `overflow-x: auto` and `scroll-snap-type`.

```css
.carousel {
  overflow-x: auto;
  scroll-snap-type: x mandatory;
}

.carousel::scroll-button(left) {
  content: '←';
}
.carousel::scroll-button(right) {
  content: '→';
}

.carousel > * {
  scroll-snap-align: center;
}
.carousel > *::scroll-marker {
  content: '';
  border-radius: 50%;
  width: 10px; height: 10px;
  background: gray;
}
```

--------------------------------

### Anchored Container Queries for Fallback Positioning

Source: https://modern-css.com/whats-new-in-css-2025

Style elements based on anchor positioning with fallback options. Use @container anchored(fallback: flip-block) to automatically flip tooltips when their position changes.

```css
.tooltip {
  position: absolute;
  position-anchor: --trigger;
  position-area: top;
  position-try-fallbacks: flip-block;
}

@container anchored(fallback: flip-block) {
  .tooltip::after {
    /* flip arrow direction */
    transform: rotate(180deg);
  }
}
```
```

--------------------------------

### CSS Drop Caps with initial-letter

Source: https://modern-css.com/

Create drop caps using the `initial-letter` property, which is a modern CSS standard. This replaces the older method of using `::first-letter` with `float` and manual sizing.

```css
.drop-cap::first-letter   {
  float: left;
  font-size: 3em;
  line-height: 1;
  margin-right: 8px;
}
```

```css
.drop-cap::first-letter   {
  -webkit-initial-letter: 3;
  initial-letter: 3;
}
/* Standard; -webkit- prefix needed for Safari. */
```

--------------------------------

### Native CSS Nesting

Source: https://modern-css.com/cheatsheet

Utilize native CSS nesting for more organized and readable stylesheets, similar to preprocessor nesting but directly in CSS.

```css
@scope (.card) { .title { } }
```

--------------------------------

### Nested Grid Alignment with Subgrid

Source: https://modern-css.com/cheatsheet

Enable nested grids to align with their parent grid tracks using `grid-template-columns: subgrid`.

```css
grid-template-columns: subgrid;
```

--------------------------------

### Modern CSS Fluid Typography with clamp()

Source: https://modern-css.com/fluid-typography-without-media-queries

Implements fluid typography with a single CSS declaration using clamp(). This scales smoothly between a minimum and maximum font size based on viewport width.

```css
h1   {  font-size: clamp(1rem, 2.5vw, 2rem);}
```

--------------------------------

### Set Top-Left Corner Shape with corner-start-start-shape

Source: https://modern-css.com/reference/properties/corner-start-start-shape

Use this property to apply a specific shape to the top-left corner of an element. This is an experimental feature and may not be supported in all browsers.

```css
.modern-button {
  /* Experimental: sets specific shape for top-left corner */
  corner-start-start-shape: angle;
}
```

--------------------------------

### Set interest-delay-start to 1 second

Source: https://modern-css.com/reference/properties/interest-delay-start

Use this property to specify a delay in seconds before an element enters an 'interest' state, such as showing a tooltip after hovering.

```css
.hover-card-trigger {
  /* Waits 1 second of hovering before showing the card */
  interest-delay-start: 1s;
}
```

--------------------------------

### CSS column-fill: balance

Source: https://modern-css.com/reference/properties/column-fill

Use 'balance' to distribute text evenly across all columns, making them equal in height. This is useful for newspaper-style layouts.

```css
.newspaper-section {
  column-count: 3;
  /* Distributes text evenly across all 3 columns */
  column-fill: balance;
}
```

--------------------------------

### Use url() to Load Background Image

Source: https://modern-css.com/reference/types/url

Use the url() function within the background-image property to load an external image file as a background for an element. This is a common use case for styling web pages.

```css
.hero {
  /* Loads an external image as a background */
  background-image: url('images/hero.jpg');
}
```

--------------------------------

### CSS prefers-reduced-motion Media Query

Source: https://modern-css.com/category/css

Respect user preferences for reduced motion by disabling or reducing animations using the `prefers-reduced-motion` media query.

```javascript
const mq = window.matchMedia('(prefers-reduced-motion: reduce)');
if (mq.matches) {
  document.querySelectorAll('.animated').forEach(
    el => el.style.animation = 'none'
  );
}
```

```css
@media (prefers-reduced-motion: reduce)   {
  *, *::before, *::after   {
    animation-duration: 0.01ms !important;
  }
}
```

--------------------------------

### Style Unvisited Links with :link

Source: https://modern-css.com/reference/selectors/link

Use the :link pseudo-class to apply distinct styles to links that the user has not yet visited. This helps improve navigation clarity by making unvisited links stand out from other text or visited links.

```css
a:link {
  /* Styles unvisited links to stand out from regular text */
  color: #2563eb;
  text-decoration: underline;
}
```

--------------------------------

### Basic text-justify Usage

Source: https://modern-css.com/reference/properties/text-justify

Use this snippet to justify text with equal spacing between individual characters. This ensures lines fill the available width completely.

```css
p.justified {
  text-align: justify;
  /* Adds equal space between every individual character to fill the line width */
  text-justify: inter-character;
}
```

--------------------------------

### Create a Drop Cap with ::first-letter

Source: https://modern-css.com/reference/selectors/first-letter

Use the ::first-letter pseudo-element to apply styles like increased font-size, bold weight, and float to the first letter of a paragraph for a drop-cap effect. Ensure the element is block-level for this pseudo-element to apply correctly.

```css
p::first-letter {
  /* Creates a large drop-cap effect */
  font-size: 3rem;
  font-weight: bold;
  float: left;
  padding: 4px;
}
```

--------------------------------

### Basic Usage of overflow-clip-margin

Source: https://modern-css.com/reference/properties/overflow-clip-margin

Use this property with `overflow: clip` to specify how far content can extend beyond the element's box before being clipped. This creates a small buffer zone for content that might otherwise be cut off abruptly.

```css
.clipped-box {
  overflow: clip;
  /* Content can bleed out by 10px before being cut */
  overflow-clip-margin: 10px;
}
```

--------------------------------

### Apply styles to looping media elements

Source: https://modern-css.com/reference/selectors/loop

Use the :loop selector to apply styles specifically to media elements like video or audio when they are in a looping playback state. This is useful for visual indicators or custom styling for continuous playback.

```css
video:loop {
  /* Adds a visual indicator for looping media */
  border: 2px solid cyan;
}
```

--------------------------------

### Set outline-style to dashed

Source: https://modern-css.com/reference/properties/outline-style

Use this to draw a dashed outline for debugging purposes. Ensure outline-width is also set for visibility.

```css
.debug-element {
  /* Draws a dashed outline for debugging without shifting the layout */
  outline-style: dashed;
  outline-width: 1px;
}
```

--------------------------------

### Modern Way: HTML loading="lazy" Attribute

Source: https://modern-css.com/lazy-load-images-without-javascript

This HTML snippet shows the modern, native way to implement lazy loading. Simply add the `loading="lazy"` attribute to `img` or `iframe` tags for below-the-fold content. Images above the fold should not use this attribute.

```html
<!-- Above the fold: no lazy -->
<img src="hero.jpg" alt="Hero" />
<!-- Below the fold: lazy load -->
<img src="product.jpg" alt="Product" loading="lazy" />
```

--------------------------------

### Create a Drop Cap with initial-letter

Source: https://modern-css.com/reference/properties/initial-letter

Use the ::first-letter pseudo-element with the initial-letter property to make the first letter of a paragraph multiple lines tall. Adjust margin-right for spacing.

```css
.intro-text::first-letter {
  /* Makes the first letter 3 lines tall */
  initial-letter: 3;
  margin-right: 1.5rem;
}
```

--------------------------------

### Enable Light Dismiss for Dialogs

Source: https://modern-css.com/whats-new-in-css-2025

Add the `closedby` attribute to dialogs for popover-like light dismiss behavior. Use `closedby="any"` to close on backdrop click or ESC, or `closedby="closerequest"` for ESC only.

```html
<!-- Close on backdrop click or ESC -->
<dialog closedby="any">
  <p>Click outside to close</p>
</dialog>

<!-- Close on ESC only -->
<dialog closedby="closerequest">
  <p>Press ESC to close</p>
</dialog>
```

--------------------------------

### Data-Driven Layouts with Typed attr()

Source: https://modern-css.com/changelog

Size elements like bars and cards directly from data-* attributes using typed attr(). This feature is experimental for non-content usage.

```css
.bar {
  width: attr(data-value px);
  height: attr(data-height px);
  background-color: oklch(attr(data-hue hue) 0.8 0.5);
}
```

--------------------------------

### Native CSS Nesting

Source: https://modern-css.com/category/workflow

Implement native CSS nesting for more organized and readable stylesheets, eliminating the need for Sass or Less compilers.

```scss
// nav.scss, requires Sass compiler.
nav {
  display: flex;
  gap: 8px;
  & a {
    color: blue;
  }
}
```

```css
/* nav.css, plain CSS, no compiler */
.nav {
  display: flex;
  gap: 8px;
  & a {
    color: #888;
    text-decoration: none;
    &:hover {
      color: white;
    }
  }
}
```

--------------------------------

### Modern Underlines with text-decoration properties

Source: https://modern-css.com/cheatsheet

Style decorative underlines with `text-decoration-thickness` and `text-underline-offset`, providing more customization than borders or box-shadows.

```css
text-decoration-thickness + text-underline-offset
```

--------------------------------

### Apply Styles When Media is Playing

Source: https://modern-css.com/reference/selectors/playing

Use the :playing selector to apply styles, such as a glow effect, when a video element is actively playing. This pseudo-class requires no special imports and targets media elements directly.

```css
video:playing {
  /* Adds a subtle 'on' state glow when the video is active */
  box-shadow: 0 0 20px rgba(0, 255, 0, 0.2);
}
```

--------------------------------

### Old Way JS Hack for Numeric Keyboard

Source: https://modern-css.com/mobile-keyboard-hints-without-javascript

This demonstrates the older JavaScript-based hack to achieve a numeric keyboard by using type=tel and controlling the return key label with user agent detection. It is less semantic and more complex than modern HTML attributes.

```html
/* Hack: use type=tel to get numeric keyboard */<input type="tel" pattern="[0-9]*" />/* No way to control the return key label */if (/Mobi/.test(navigator.userAgent))   {  submitBtn.textContent = 'Search';}
```

--------------------------------

### Basic Polygon Clip Path

Source: https://modern-css.com/reference/properties/clip-path

Applies a polygon clipping region to an element, creating a pointed banner or hero shape. Parts of the element outside this polygon will be hidden.

```css
.hero-shape {
  clip-path: polygon(0% 0%, 100% 0%, 100% 75%, 50% 100%, 0% 75%);
  /* creates a pointed banner/hero shape */
}
```

--------------------------------

### Set implicit row size to fit content

Source: https://modern-css.com/reference/properties/grid-auto-rows

Use `grid-auto-rows: min-content` to make any implicitly created grid rows expand or shrink to fit their content. This is useful for flexible layouts where content might vary in size.

```css
.flexible-list {
  display: grid;
  /* Extra rows added for content will expand/shrink to fit it */
  grid-auto-rows: min-content;
}
```

--------------------------------

### Modern CSS clip-path using shape()

Source: https://modern-css.com/responsive-clip-paths-without-svg

This approach utilizes the CSS shape() function with responsive units like percentages. It allows clip paths to scale dynamically with the element, offering greater flexibility and a CSS-native syntax.

```css
.shape   {  clip-path: shape(     from 0% 100%,    line to 50% 0%,    line to 100% 100%  );}
```

--------------------------------

### Limit Brightness to Standard Levels

Source: https://modern-css.com/reference/properties/dynamic-range-limit

Use dynamic-range-limit with the 'standard' value to restrict color brightness to conventional levels, even on high dynamic range displays. This helps prevent excessive brightness and potential eye strain.

```css
video {
  dynamic-range-limit: standard;
  /* restricts brightness to standard levels, even on HDR screens */
}
```

--------------------------------

### Basic font-family Usage

Source: https://modern-css.com/reference/properties/font-family

Use this snippet to set a prioritized list of fonts for an element. It includes system fonts for better performance and fallback.

```css
body {
  font-family: system-ui, -apple-system, sans-serif;
  /* system font fallback for performance */
}
```

--------------------------------

### Basic flex-wrap Usage

Source: https://modern-css.com/reference/properties/flex-wrap

Use flex-wrap: wrap to allow flex items to move to the next row when they run out of horizontal space.

```css
.container {
  display: flex;
  flex-wrap: wrap;
  /* allows items to move to the next row */
}
```

--------------------------------

### Apply Small Caps to Abbreviations

Source: https://modern-css.com/reference/properties/font-variant-caps

Use the `small-caps` value to apply real small-caps styling to abbreviations, making them visually consistent with lowercase text.

```css
abbr {
  /* Uses real small-caps for acronyms */
  font-variant-caps: small-caps;
}
```

--------------------------------

### Set Element Height to Viewport Height

Source: https://modern-css.com/reference/properties/height

Use `height: 100vh;` to make an element fill the entire vertical space of the viewport.

```css
.hero-section {
  height: 100vh;
  /* fills the entire viewport height */
}
```

--------------------------------

### Basic :next-sibling Usage

Source: https://modern-css.com/reference/selectors/next-sibling

Styles the first paragraph that comes directly after any H2 element. This selector is useful for applying styles to elements based on their immediate preceding sibling.

```css
h2 + p {
  /* Styles the first paragraph that comes directly after any H2 */
  font-weight: bold;
  margin-top: 0;
}
```

--------------------------------

### Modern Way: HTML datalist Autocomplete

Source: https://modern-css.com/native-autocomplete-without-javascript

This is the modern, JavaScript-free method for native autocomplete. It involves an input element with a `list` attribute pointing to a `<datalist>` element, which contains `<option>` elements for the suggestions. This approach requires minimal code and no external libraries.

```html
<input list="countries" id="country" name="country" />
<datalist id="countries">
  <option value="United States" />
  <option value="Canada" />
  <option value="Mexico" />
</datalist>
```

--------------------------------

### Conditional CSS with @supports

Source: https://modern-css.com/reference/at-rules/supports

Apply styles only if a specific CSS feature is supported, and provide fallbacks for unsupported features.

```css
@supports (display: grid) {
  .container {
    display: grid;
    grid-template-columns: 1fr 1fr;
  }
}
```

```css
@supports not (display: grid) {
  .container {
    display: block; /* fallback for very old browsers */
  }
}
```

--------------------------------

### Basic animation-range Usage

Source: https://modern-css.com/reference/properties/animation-range

Use this snippet to animate an element as it enters the viewport. It sets the animation to fade in and out, triggered by the element's entry into the viewport.

```css
.image-reveal {
  animation: fade both;
  animation-timeline: view();
  /* Animates while the element is entering the viewport */
  animation-range: entry 0% entry 100%;
}
```

--------------------------------

### Equal columns that can shrink

Source: https://modern-css.com/reference/properties/grid-template-columns

Defines three equal-width columns that can shrink below their content size to prevent overflow. This is achieved using `minmax(0, 1fr)`, ensuring columns truly share space equally.

```css
.row {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
}
```

--------------------------------

### CSS scroll-state() for Stuck Elements

Source: https://modern-css.com/

Implement sticky header effects using container scroll-state queries, eliminating the need for JavaScript scroll event listeners.

```javascript
const header = document   .querySelector('.header');
const offset = header   .offsetTop;
window.addEventListener(   'scroll', () =>  {
  header.classList       .toggle('stuck',
      window.scrollY         >= offset
    );
});
```

```css
.header-wrap   {  container-type: scroll-state;}
@container scroll-state( stuck: top )   {  .header   {    box-shadow: 0 2px 8px #0002;  }}
```

--------------------------------

### Group CSS Selectors: Modern vs Old

Source: https://modern-css.com/category/selector

The `:is()` pseudo-class simplifies grouping CSS selectors, reducing repetition compared to the old method where prefixes had to be repeated for each selector.

```css
.card h1, .card h2, .card h3, .card h4   {  margin-bottom: 0.5em;}// Same prefix repeated for every selector
```

```css
.card :is(h1, h2, h3, h4)   {  margin-bottom: 0.5em;}
```

--------------------------------

### Scroll Animations with Animation Timeline

Source: https://modern-css.com/cheatsheet

Animate elements based on scroll progress using `animation-timeline: view()`.

```css
animation-timeline: view();
```

--------------------------------

### Use sin() for Circular Layouts

Source: https://modern-css.com/reference/types/sin

Use sin() to create a horizontal wave motion for an element based on a rotation angle. Requires a CSS variable for the angle.

```css
.orbiting-item {
  /* Creates a horizontal wave motion based on an angle */
  left: calc(sin(var(--rotation)) * 100px);
}
```

--------------------------------

### Theme-Aware Colors with light-dark()

Source: https://modern-css.com/under-the-hood

Defines theme-specific colors using the `light-dark()` function. The browser automatically selects the appropriate color based on the user's OS theme preference, eliminating the need for separate stylesheets or class toggling.

```css
:root {
  --text: light-dark(#1a1a2e, #e4e4e7);
  --bg: light-dark(#f8f8fa, #0b0b0f);
  --accent: light-dark(#0069c2, #8cb4ff);
}
```

--------------------------------

### Basic Horizontal Scrolling with overflow-inline

Source: https://modern-css.com/reference/properties/overflow-inline

Use overflow-inline: auto to enable scrolling for content that exceeds the container's width. Ensure white-space: nowrap is set to prevent line breaks within the content.

```css
.horizontal-scroll {
  /* Scrolled content in the horizontal (inline) axis logically */
  overflow-inline: auto;
  white-space: nowrap;
}
```

--------------------------------

### Style Individual Options

Source: https://modern-css.com/articles/build-a-styled-select-dropdown

Style individual `<option>` elements to include rich HTML content like images and icons. This allows for advanced UI elements within the dropdown.

```css
option {
  padding: 10px 14px;
  border-radius: 8px;
  display: flex;
  align-items: center;
  gap: 10px;
}

option:checked {
  background: rgba(124, 58, 237, 0.1);
}
```

--------------------------------

### CSS Range Style Queries with --progress

Source: https://modern-css.com/

Use container style queries to apply styles based on a range of a custom property value. This modern approach replaces multiple discrete checks or JavaScript-driven class toggling.

```css
@container style(--progress: 0%)   {  .bar   {    background: red;  }}
@container style(--progress: 25%)   {  .bar   {    background: orange;  }}
@container style(--progress: 50%)   {  .bar   {    background: yellow;  }}
```

```css
@container style( --progress > 75% )   {  .bar   {    background: var(--green);  }}
```

--------------------------------

### CSS <number> Usage for Opacity and Line-Height

Source: https://modern-css.com/reference/types/number

Demonstrates the use of the <number> data type for CSS properties. Use numbers directly for values like opacity or as multipliers for properties such as line-height.

```css
.semi-transparent {
  /* Uses a number for opacity */
  opacity: 0.5;
  /* Uses a number as a multiplier for line-height */
  line-height: 1.6;
}
```

--------------------------------

### HTML output Element for Live Form Output

Source: https://modern-css.com/category/html

Utilize the HTML `output` element to display live results from form controls, replacing the need for JavaScript event listeners to update content.

```html
<input type="range" id="volume" /><div id="display"></div>
```

```javascript
const input = document.getElementById('volume');const display = document.getElementById('display');input.addEventListener('input', () =>  {  display.textContent = input.value;});
```

```html
<input type="range" id="volume" name="volume" /><output for="volume">50</output>
```

--------------------------------

### Low-Specificity CSS Reset: Modern vs Old

Source: https://modern-css.com/category/selector

The `:where()` pseudo-class allows for low-specificity CSS resets, ensuring that component styles can easily override reset styles, unlike the old method which had higher specificity.

```css
ul, ol   {  margin: 0;  padding-left: 1.5rem;}/* Specificity (0,0,2). Component .list { padding: 0 } loses. */
```

```css
:where(ul, ol)   {  margin: 0;  padding-inline-start: 1.5rem;}/* Specificity 0. .list { padding: 0 } wins. */
```

--------------------------------

### Flex Container with Equal Spacing Around Items

Source: https://modern-css.com/reference/properties/justify-content

Provides equal space before, between, and after items in a flex container. This differs from `space-around` where outer gaps are half the size of inner gaps.

```css
.tabs {
  display: flex;
  justify-content: space-evenly;
}
```

--------------------------------

### HTML datalist: Native Autocomplete

Source: https://modern-css.com/category/html

Implement native autocomplete functionality for input fields using the `<datalist>` element, providing a predefined list of options without external libraries or JavaScript.

```javascript
/* Add autocomplete library (Awesomplete, Typeahead, etc.) */import Awesomplete from 'awesomplete';new Awesomplete(document.querySelector('#country'),  {  list: ['Afghanistan', 'Albania', 'Algeria', ...]});/* Plus custom CSS for the dropdown */
```

```html
<input list="countries" id="country" name="country" /><datalist id="countries">  <option value="United States" />  <option value="Canada" />  <option value="Mexico" /></datalist>
```

--------------------------------

### Basic animation-trigger Usage

Source: https://modern-css.com/reference/properties/animation-trigger

Use this snippet to define that an animation should only play when the element enters the viewport. This property is experimental and requires a fallback for broader compatibility.

```css
.box {
  /* Experimental: Animation only plays when it enters the viewport */
  animation-trigger: view();
}
```

--------------------------------

### Basic :visited Styling

Source: https://modern-css.com/reference/selectors/visited

Apply a specific color to links that have already been visited by the user. This is a common use case for the :visited selector.

```css
a:visited {
  color: #551a8b;
  /* standard purple color for visited links */
}
```

--------------------------------

### Basic mask-repeat Usage

Source: https://modern-css.com/reference/properties/mask-repeat

Ensures the mask image only appears once and is not repeated. This is useful when you want a single, precise mask application.

```css
.single-mask {
  /* Ensures the mask image only appears once and is not repeated */
  mask-repeat: no-repeat;
}
```

--------------------------------

### Responsive Images with object-fit: cover

Source: https://modern-css.com/

Use `object-fit: cover` on `<img>` elements to control how the image content scales within its container, maintaining aspect ratio. This is a CSS-only solution for responsive image cropping and sizing, superior to background images on divs.

```css
img   {  object-fit: cover;  width: 100%;  height: 200px;}
```

```html
<!-- div instead of img: no alt, not semantic --><div class="card-image"></div>.card-image   {  background-image: url(photo.jpg);  background-size: cover;  background-position: center;}
```

```html
<img src="photo.jpg" alt="..." loading="lazy">
```

--------------------------------

### Modern Focus Styling with :focus-visible

Source: https://modern-css.com/cheatsheet

Use :focus-visible for focus outlines, providing a better user experience than the universal :focus selector by only showing outlines when needed.

```css
:focus-visible { outline }
```

--------------------------------

### Set Column Rule Thickness

Source: https://modern-css.com/reference/properties/column-rule-width

Use this snippet to set the thickness of the column divider in a multi-column layout. Ensure column-rule-style is also set.

```css
.content {
  column-count: 3;
  column-rule-style: solid;
  /* Sets the thickness of the column divider */
  column-rule-width: 2px;
}
```

--------------------------------

### Sass @function for Fluid Sizing

Source: https://modern-css.com/reusable-css-logic-without-sass-mixins

This Sass function calculates fluid sizing, but compiles to a static value and cannot use runtime CSS units.

```sass
@function fluid($min, $max) {
  @return clamp(
    $min,
    calc($min + ($max - $min) * ((100vw - 320px) / 960)),
    $max
  );
}
```

--------------------------------

### CSS background-size: cover

Source: https://modern-css.com/reference/properties/background-size

Use 'cover' to ensure the background image fills the entire container without stretching, maintaining its aspect ratio. This is useful for full-background designs.

```css
.full-bg {
  background-image: url('bg.jpg');
  background-size: cover;
  /* ensures the image fills the container without stretching */
}
```

--------------------------------

### Old Way: Vertical Centering with Padding Hacks

Source: https://modern-css.com/vertical-text-centering-without-padding-hacks

This CSS demonstrates the traditional method of achieving vertical text centering using padding adjustments. It requires manual tweaking of top and bottom padding to compensate for font metrics.

```css
.btn   {  display: inline-flex;  align-items: center;  padding: 10px 20px;  padding-top: 8px;}
```

--------------------------------

### Define Text Box Edges for Trimming

Source: https://modern-css.com/reference/types/text-edge

Use 'ex' for the x-height and 'alphabetic' for the baseline to define the trim edges for a text box. This is useful when you need precise control over text boundaries for layout purposes.

```css
.custom-trimmed-box {
  text-box-trim: both;
  /* Uses the x-height (top of lowercase 'x') and alphabetic baseline as the trim edges */
  text-box-edge: ex alphabetic;
}
```

--------------------------------

### Define CSS Grid Layout

Source: https://modern-css.com/history-of-css

Use `display: grid` to create two-dimensional layouts with rows and columns defined directly in the stylesheet. Items can be placed using grid area names.

```css
display: grid
  - grid-template-columns: 3
  - grid-template-rows: 2
```

--------------------------------

### Set mask-size to cover

Source: https://modern-css.com/reference/properties/mask-size

Use 'cover' to scale the mask image to cover the entire element. This is a common way to apply a mask.

```css
.masked-element {
  /* Scales the mask image to cover the entire element */
  mask-size: cover;
}
```

--------------------------------

### Style Custom Elements When Defined

Source: https://modern-css.com/reference/selectors/defined

Use the :defined pseudo-class to apply styles to custom elements once they have been registered. This prevents styling issues that might occur if styles are applied before the element is fully defined.

```css
my-custom-element:defined {
  display: block;
  /* only shows the custom element once it's been correctly registered */
}
```

--------------------------------

### Applying view-transition-class to Elements

Source: https://modern-css.com/reference/properties/view-transition-class

Use `view-transition-class` to assign a custom name to a view transition for a specific element or group of elements. This name can then be used to target and style that transition group.

```css
.product-card {
  /* Assigns a class name to this specific transition group */
  view-transition-class: product-fade;
}

::view-transition-group(.product-fade) {
  animation-duration: 0.5s;
}
```

--------------------------------

### Custom CSS Easing with linear() Timing Function

Source: https://modern-css.com/category/css

Define custom easing curves with the `linear()` timing function, offering fine-grained control over transition and animation speeds.

```javascript
anime({
  targets: el,
  translateX: 300,
  easing: 'spring(1, 80, 10, 0)'
});
```

```css
.el   {
  transition: transform 0.6s    linear(0, 1.2 60%, 0.9, 1.05, 1);
}
```

--------------------------------

### Exclusive Accordions with <details name>

Source: https://modern-css.com/cheatsheet

Create exclusive accordions where only one panel can be open at a time by using the `<details name="group">` attribute.

```html
<details name="group">
```

--------------------------------

### Scroll-Driven Animations with scroll-timeline

Source: https://modern-css.com/category/animation

Define animations that are controlled by scroll progress using `animation-timeline: view()` and `animation-range`.

```css
@keyframes reveal {
  from {
    opacity: 0;
    translate: 0 40px;
  }
  to {
    opacity: 1;
    translate: 0 0;
  }
}
.reveal {
  animation: reveal linear both;
  animation-timeline: view();
  animation-range: entry 0% entry 100%;
}
```

--------------------------------

### Enable Flexbox Layout

Source: https://modern-css.com/reference/properties/display

Use `display: flex;` to enable flexbox layout for an element's children. This property is well-established and widely supported.

```css
.flex-container {
  display: flex;
  /* enables flexbox layout for children */
}
```

--------------------------------

### Customizable CSS Select with appearance: base-select

Source: https://modern-css.com/category/html

Style native select elements using the `appearance: base-select` CSS property for a more customizable look and feel, including custom styling for checked options.

```css
select,select ::picker(select)   {  appearance: base-select;}select option:checked   {  background: var(--accent);}
```

--------------------------------

### Set Inline-Start Corner Shape

Source: https://modern-css.com/reference/properties/corner-inline-start-shape

Use this property to shape both corners on the left side of an element. This is an experimental feature and may require fallbacks.

```css
.card-left {
  /* Experimental: shapes both corners on the left side */
  corner-inline-start-shape: bevel;
}
```

--------------------------------

### Old JavaScript-based Floating Label Hack

Source: https://modern-css.com/floating-labels-without-javascript

This CSS and JavaScript snippet demonstrates the older method of implementing floating labels. It requires a JavaScript event listener to toggle a '.filled' class on the input's parent element, which then triggers the label's transformation. Use this if you need to support very old browsers that do not support `:placeholder-shown`.

```css
.filled label,.field input:focus + label   {  translate: 0 -1.4rem;  font-size: .75rem;}
```

```javascript
input.addEventListener('input', () => {   input.closest('.field').classList.toggle('filled', input.value.length > 0); });
```

--------------------------------

### Set Top Border Style

Source: https://modern-css.com/reference/properties/border-top-style

Use this snippet to define a solid top border for an element. Ensure `border-top-width` and `border-top-color` are also set for the border to be visible.

```css
.tab {
  /* Physical top border style */
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: currentColor;
}
```

--------------------------------

### Old CSS Hack for Full Width with Margins

Source: https://modern-css.com/filling-available-space-without-calc-workarounds

This CSS snippet demonstrates the older method of trying to achieve full width while accounting for margins using 'calc()'. It requires manual subtraction of margin values.

```css
.full   {  width: 100%;  width: calc(100% - 40px);}
```

--------------------------------

### Apply Styles on Stalled Media

Source: https://modern-css.com/reference/selectors/stalled

Use the :stalled selector to apply styles, such as reduced opacity or a transition, to a video element when it encounters network-related stalling. This helps provide visual feedback to the user.

```css
video:stalled {
  /* Shows a loading state or adds a semi-transparent overlay when the video buffers */
  opacity: 0.5;
  transition: opacity 0.3s;
}
```

--------------------------------

### Color Variants with `oklch()`

Source: https://modern-css.com/cheatsheet

Generate color variants by adjusting lightness, chroma, or hue within the `oklch()` color space.

```css
oklch(from var(--brand) calc(l + 0.2) c h);
```

--------------------------------

### CSS Custom Properties for Theme Variables

Source: https://modern-css.com/category/css

Use CSS custom properties (variables) for theming, allowing dynamic changes to design tokens like colors and spacing.

```css
:root   {
  --primary: #7c3aed;
  --spacing: 16px;
}
.btn   {
  background: var(--primary);
}
```

--------------------------------

### Old Way: BEM Naming for Scoped Styles

Source: https://modern-css.com/scoped-styles-without-bem-naming

This demonstrates the traditional BEM (Block, Element, Modifier) naming convention used to achieve style scoping by creating long, specific class names. This method requires careful naming to prevent style leaks.

```css
.card__title   {  font-size: 1.25rem;  margin-bottom: 0.5rem;}.card__body   {  color: #444;}/* HTML: class="card__title" */
```

--------------------------------

### CSS Relative Color Syntax for Color Adjustments

Source: https://modern-css.com/category/css

Adjust colors relative to a base color using the `oklch(from ...)` syntax. This allows for lightening, darkening, or modifying other color components without external tools like Sass.

```css
.btn {
  background:    oklch(from var(--brand) calc(l + 0.2) c h);
}
```

--------------------------------

### Print Exact Colors with print-color-adjust

Source: https://modern-css.com/reference/properties/print-color-adjust

Use this CSS snippet within a @media print block to ensure that background colors and other visual elements in a chart are printed exactly as they appear on screen. This is useful for maintaining the visual fidelity of designs during the printing process.

```css
@media print {
  .chart-box {
    /* Ensures background colors in the chart are printed exactly as shown */
    print-color-adjust: exact;
  }
}
```

--------------------------------

### Modern CSS: text-box-trim and text-box-edge for Centering

Source: https://modern-css.com/centering-button-text-without-line-height-tweaks

This CSS uses `text-box-trim` and `text-box-edge` to accurately center text based on its cap line and alphabetic baseline, simplifying padding adjustments.

```css
.btn   {  text-box-trim: trim-both;  text-box-edge: cap alphabetic;  padding: 12px 20px;}/* the button measures from the cap line, not the metric box */
```

--------------------------------

### Apply Styles to Valid User Input

Source: https://modern-css.com/reference/selectors/user-valid

Use this selector to apply styles, such as a green border, to form elements only after the user has interacted with them and the input is valid. This provides clear success feedback without overwhelming the user initially.

```css
input:user-valid {
  border-color: green;
  /* shows green success border only after interaction is complete */
}
```

--------------------------------

### Wire up the Interestfor Trigger

Source: https://modern-css.com/articles/build-a-tooltip-system

The `interestfor` attribute on the trigger element handles all event logic, including hover delays, keyboard focus, and touch long-press. It links the trigger to the tooltip element.

```html
<button id="trigger"
  interestfor="tooltip">
  Hover me
</button>
```

--------------------------------

### Set border-image-width

Source: https://modern-css.com/reference/properties/border-image-width

Use this snippet to set a specific width for the border image, making it 20px wide regardless of the actual border-width.

```css
.thick-frame {
  border: 10px solid transparent;
  border-image-source: url('frame.png');
  border-image-slice: 30;
  /* Makes the border image 20px wide regardless of border-width */
  border-image-width: 20px;
}
```

--------------------------------

### Style Placeholder Text

Source: https://modern-css.com/reference/selectors/placeholder

Apply custom styles like color, font style, and opacity to the placeholder text of an input field. This is useful for visually distinguishing placeholder text from actual user input.

```css
input::placeholder {
  /* Customizes the color and style of the hint text */
  color: var(--accent-light);
  font-style: italic;
  opacity: 0.7;
}
```

--------------------------------

### Zero-Specificity Resets with :where()

Source: https://modern-css.com/cheatsheet

Apply zero-specificity selectors using :where() for resets, avoiding specificity conflicts that can arise with complex selector tricks.

```css
:where(ul, ol) { margin: 0 }
```

--------------------------------

### Dark Mode Defaults with `color-scheme`

Source: https://modern-css.com/cheatsheet

Set the preferred color scheme for the document using `color-scheme: light dark`.

```css
color-scheme: light dark;
```

--------------------------------

### Apply Balance Text Wrapping to Headlines

Source: https://modern-css.com/reference/properties/text-wrap-style

Use 'balance' to automatically adjust line breaks for evenly balanced lines, ideal for short headlines. This ensures a visually appealing and consistent look.

```css
h2 {
  /* Automatically adjusts line breaks to make the lines look evenly balanced */
  text-wrap-style: balance;
}
```

--------------------------------

### Modern Frosted Glass CSS with backdrop-filter

Source: https://modern-css.com/frosted-glass-effect-without-opacity-hacks

This CSS uses the `backdrop-filter` property for a modern frosted glass effect. It requires fewer lines of code and applies effects directly to the content behind the element. Use with a semi-transparent background for the best result.

```css
.glass   {  backdrop-filter: blur(12px) saturate(1.5);  background: rgba(255,255,255,.1);}
```

--------------------------------

### Style Checkbox Inputs and PDF Links

Source: https://modern-css.com/reference/selectors/attribute

Style checkbox inputs with a custom accent color and append text to links ending with '.pdf'. This demonstrates basic attribute presence and value matching.

```css
input[type="checkbox"] {
  accent-color: #7c3aed;
}

a[href$='.pdf']::after {
  content: ' (PDF)';
}
```

--------------------------------

### CSS Forced-Colors Media Query

Source: https://modern-css.com/category/css

Handles High Contrast mode in Windows by adjusting styles. The modern approach uses the `forced-colors` media query to provide specific styles for high-contrast environments, ensuring better accessibility and appearance.

```css
.btn   {  background: var(--accent);  color: white;  border: 1px solid transparent;}
```

```css
.btn   {  background: var(--accent);  color: white;  border: 1px solid transparent;}@media (forced-colors: active)   {  .btn {    background: ButtonFace;    color: ButtonText;    border: 1px solid ButtonText;    forced-color-adjust: none;  }}
```

--------------------------------

### Automate Anchor Naming with Attr()

Source: https://modern-css.com/articles/build-a-tooltip-system

Use the `attr()` function with typed values to dynamically assign unique anchor names for reusable tooltip systems. This avoids the need for unique CSS rules per tooltip.

```css
[interestfor] {
  anchor-name: attr(id type(<custom-ident>));
}

[popover=hint] {
  position-anchor: attr(anchor type(<custom-ident>));
}
```

--------------------------------

### Use log() for Non-Linear Scaling

Source: https://modern-css.com/reference/types/log

Apply this CSS rule to scale an element's width based on the natural logarithm of a CSS variable. Ensure the variable is defined and provides a suitable input for the logarithm.

```css
.log-scaled {
  /* Calculates a value based on the natural logarithm */
  width: calc(log(var(--value)) * 100px);
}
```

--------------------------------

### Apply styles to locked media elements

Source: https://modern-css.com/reference/selectors/volume-locked

Use the :volume-locked pseudo-class to select and style media elements that are restricted from volume changes. This can be used to provide user feedback, such as an outline, when an attempt is made to modify the volume.

```css
video:volume-locked {
  /* provide haptic or visual feedback if the user tries to change the volume */
  outline: 2px solid orange;
}
```

--------------------------------

### CSS Relative Color Syntax for Lighten/Darken

Source: https://modern-css.com/category/color

Adjust color lightness, saturation, or hue using the modern relative color syntax within `oklch()` or `color()`. This replaces the need for preprocessors like Sass for simple adjustments.

```css
/* Sass: @use 'sass:color'; *//* Sass: color.adjust($brand, $lightness: 20%) */.btn   {  background: lighten(var(--brand), 20%);}
```

```css
.btn   {  background:    oklch(from var(--brand) calc(l + 0.2) c h);}
```

--------------------------------

### Full-Bleed Positioning

Source: https://modern-css.com/cheatsheet

Use `inset: 0` for full-bleed positioning, simplifying the previous `top, right, bottom, left` approach.

```css
inset: 0;
```

--------------------------------

### CSS Feature Detection with @supports

Source: https://modern-css.com/category/workflow

Use @supports to conditionally apply styles based on browser support for CSS features, eliminating the need for JavaScript-based feature detection.

```javascript
// JS: detect support, add class
if (CSS.supports('container-type', 'inline-size')) {
  document.documentElement.classList.add('has-container-queries');
}
```

```css
@supports (display: grid) {
  .layout {
    display: grid;
  }
}
```

--------------------------------

### Set tab-size to 2 spaces

Source: https://modern-css.com/reference/properties/tab-size

Sets the width of a tab character to be equal to 2 spaces for preformatted text elements.

```css
pre {
  /* Sets the width of a tab character to be equal to 2 spaces */
  tab-size: 2;
}
```

--------------------------------

### Viewport Units

Source: https://modern-css.com/cheatsheet

Utilize new viewport units like `svh`, `dvh`, and `lvh` for more reliable viewport sizing.

```css
svh, dvh, lvh, svw, dvw
```

--------------------------------

### Stretch Sizing Keyword for Full Width/Height

Source: https://modern-css.com/whats-new-in-css-2025

Utilize width: stretch or height: stretch to make elements fill their containing block. This respects margins by applying to the margin box, avoiding calc() hacks.

```css
.full-width {
  width: stretch;
  margin-inline: 24px;
  /* fills container minus margins — 
     no calc(100% - 48px) needed */
}

.full-height {
  height: stretch;
}
```
```

--------------------------------

### Setting scroll-padding-top

Source: https://modern-css.com/reference/properties/scroll-padding-top

Apply this property to the root element to create a global safe zone for scroll-to-element actions, such as anchor links, to account for sticky headers.

```css
html {
  /* Global safe zone for all scroll-to-element actions (like anchor links) */
  scroll-padding-top: 80px;
}
```

--------------------------------

### Basic Underline Position

Source: https://modern-css.com/reference/properties/text-underline-position

Use this to ensure the underline is placed below all character descenders for maximum clarity. This is a common use case for improving readability.

```css
p {
  text-decoration: underline;
  /* Ensures the underline is placed below all character descenders for maximum clarity */
  text-underline-position: under;
}
```

--------------------------------

### Responsive Images in CSS with object-fit: cover

Source: https://modern-css.com/category/css

Use `object-fit: cover` on `<img>` elements to control how the image content fits within its container, similar to `background-size: cover`. This ensures the image covers the area without distortion.

```html
<!-- div instead of img: no alt, not semantic -->
```

```css
.card-image   {  background-image: url(photo.jpg);  background-size: cover;  background-position: center;}
```

```html
<img src="photo.jpg" alt="..." loading="lazy">
```

```css
img   {  object-fit: cover;  width: 100%;  height: 200px;}
```

--------------------------------

### Add External Link Indicator with CSS content

Source: https://modern-css.com/reference/properties/content

Use the `content` property with the `::after` pseudo-element to append a small arrow to links with the class `external-link`. This visually distinguishes external links.

```css
.external-link::after {
  content: ' ↗';
  color: #888;
  /* adds a small arrow after every link with this class */
}
```

--------------------------------

### Set box-sizing to border-box

Source: https://modern-css.com/reference/properties/box-sizing

Applies border-box sizing to all elements. This is a common best practice to ensure padding and borders are included in the element's total width and height.

```css
* {
  box-sizing: border-box;
  /* best practice: include padding/border in width/height */
}
```

--------------------------------

### Modern CSS 'stretch' Keyword for Full Width

Source: https://modern-css.com/filling-available-space-without-calc-workarounds

This CSS snippet shows the modern approach using the 'stretch' keyword to fill available space. It automatically respects margins without needing 'calc()'.

```css
.full   {  width: stretch;}
```

--------------------------------

### Apply Historical Font Alternates

Source: https://modern-css.com/reference/properties/font-variant-alternates

Use this snippet to apply historical stylistic alternates to text for a vintage aesthetic. Ensure the font being used supports these alternates.

```css
.fancy-g {
  /* Uses historical alternates for a vintage feel */
  font-variant-alternates: historical-forms;
}
```

--------------------------------

### Basic Font Shorthand in CSS

Source: https://modern-css.com/reference/properties/font

Use the font shorthand to set font weight, size, line-height, and family in a single declaration. This is an efficient way to style text.

```css
body {
  font: bold 1rem/1.5 system-ui, sans-serif;
  /* sets weight, size, line-height, and family in one line */
}
```

--------------------------------

### Old JavaScript Method for Parent Selection

Source: https://modern-css.com/selecting-parent-elements-without-javascript

This JavaScript code snippet demonstrates the traditional approach to selecting a parent element based on a child's state, using event listeners and DOM manipulation.

```javascript
// Watch for changes, find parent
document.querySelectorAll('input')
  .forEach(input => {
    input.addEventListener('invalid', () => {
      input.closest('.form-group')
        .classList.add('has-error');
    });
  });
```

--------------------------------

### Frosted Glass Effect with backdrop-filter

Source: https://modern-css.com/category/css

Create a frosted glass effect by applying a blur and saturation to the background behind an element. This is achieved using the `backdrop-filter` CSS property.

```css
.glass {
  backdrop-filter: blur(12px) saturate(1.5);
  background: rgba(255,255,255,.1);
}
```

--------------------------------

### JavaScript Random Value Generation (Old Way)

Source: https://modern-css.com/random-values-without-javascript

This JavaScript code demonstrates the older method of generating random values per element using Math.random() and setting CSS custom properties. It requires a JavaScript loop to iterate over elements and apply styles dynamically.

```javascript
document.querySelectorAll('.card').forEach(el => {
  const r = Math.random() * 30 - 15;
  el.style.setProperty('--rotate', r + 'deg');
  const d = Math.random();
  el.style.setProperty('--delay', d + 's');
});
/* CSS reads the inline vars */
.card {
  rotate: var(--rotate);
  animation-delay: var(--delay);
}
```