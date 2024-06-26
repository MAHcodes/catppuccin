//// ⭐️ Soothing pastel library for Gleam
////

import gleam/result
import gleam_community/colour

pub opaque type Flavor {
  Flavor(name: String, emoji: String, order: Int, dark: Bool, colors: Colors)
}

type Colors {
  Colors(
    rosewater: Color,
    flamingo: Color,
    pink: Color,
    mauve: Color,
    red: Color,
    maroon: Color,
    peach: Color,
    yellow: Color,
    green: Color,
    teal: Color,
    sky: Color,
    sapphire: Color,
    blue: Color,
    lavender: Color,
    text: Color,
    subtext1: Color,
    subtext0: Color,
    overlay2: Color,
    overlay1: Color,
    overlay0: Color,
    surface2: Color,
    surface1: Color,
    surface0: Color,
    base: Color,
    mantle: Color,
    crust: Color,
  )
}

pub opaque type Color {
  Color(
    name: String,
    order: Int,
    accent: Bool,
    colour: Result(colour.Colour, Nil),
  )
}

pub fn flavor_name(flavor: Flavor) -> String {
  flavor.name
}

pub fn emoji(flavor: Flavor) -> String {
  flavor.emoji
}

pub fn flavor_order(flavor: Flavor) -> Int {
  flavor.order
}

pub fn dark(flavor: Flavor) -> Bool {
  flavor.dark
}

pub fn color_name(color: Color) -> String {
  color.name
}

pub fn color_order(color: Color) -> Int {
  color.order
}

pub fn accent(color: Color) -> Bool {
  color.accent
}

/// The color represented as a [`Colour`](https://hexdocs.pm/gleam_community_colour/gleam_community/colour.html) type from [gleam_community_colour](https://hexdocs.pm/gleam_community_colour/gleam_community/colour.html).  
/// For more information, refer to the [`gleam_community_colour`](https://hexdocs.pm/gleam_community_colour/gleam_community/colour.html#Colour).  
///
pub fn to_colour(color: Color) -> colour.Colour {
  color.colour
  |> result.unwrap(colour.black)
}

/// alias for `to_colour`
///
pub fn to_color(color: Color) -> colour.Colour {
  to_colour(color)
}

pub fn rosewater(flavor: Flavor) -> Color {
  flavor.colors.rosewater
}

pub fn flamingo(flavor: Flavor) -> Color {
  flavor.colors.flamingo
}

pub fn pink(flavor: Flavor) -> Color {
  flavor.colors.pink
}

pub fn mauve(flavor: Flavor) -> Color {
  flavor.colors.mauve
}

pub fn red(flavor: Flavor) -> Color {
  flavor.colors.red
}

pub fn maroon(flavor: Flavor) -> Color {
  flavor.colors.maroon
}

pub fn peach(flavor: Flavor) -> Color {
  flavor.colors.peach
}

pub fn yellow(flavor: Flavor) -> Color {
  flavor.colors.yellow
}

pub fn green(flavor: Flavor) -> Color {
  flavor.colors.green
}

pub fn teal(flavor: Flavor) -> Color {
  flavor.colors.teal
}

pub fn sky(flavor: Flavor) -> Color {
  flavor.colors.sky
}

pub fn sapphire(flavor: Flavor) -> Color {
  flavor.colors.sapphire
}

pub fn blue(flavor: Flavor) -> Color {
  flavor.colors.blue
}

pub fn lavender(flavor: Flavor) -> Color {
  flavor.colors.lavender
}

pub fn text(flavor: Flavor) -> Color {
  flavor.colors.text
}

pub fn subtext1(flavor: Flavor) -> Color {
  flavor.colors.subtext1
}

pub fn subtext0(flavor: Flavor) -> Color {
  flavor.colors.subtext0
}

pub fn overlay2(flavor: Flavor) -> Color {
  flavor.colors.overlay2
}

pub fn overlay1(flavor: Flavor) -> Color {
  flavor.colors.overlay1
}

pub fn overlay0(flavor: Flavor) -> Color {
  flavor.colors.overlay0
}

pub fn surface2(flavor: Flavor) -> Color {
  flavor.colors.surface2
}

pub fn surface1(flavor: Flavor) -> Color {
  flavor.colors.surface1
}

pub fn surface0(flavor: Flavor) -> Color {
  flavor.colors.surface0
}

pub fn base(flavor: Flavor) -> Color {
  flavor.colors.base
}

pub fn mantle(flavor: Flavor) -> Color {
  flavor.colors.mantle
}

pub fn crust(flavor: Flavor) -> Color {
  flavor.colors.crust
}

pub fn latte() -> Flavor {
  Flavor(
    name: "Latte",
    emoji: "🌻",
    order: 0,
    dark: False,
    colors: Colors(
      rosewater: Color(
        name: "Rosewater",
        order: 0,
        accent: True,
        colour: colour.from_rgb255(r: 220, g: 138, b: 120),
      ),
      flamingo: Color(
        name: "Flamingo",
        order: 1,
        accent: True,
        colour: colour.from_rgb255(r: 221, g: 120, b: 120),
      ),
      pink: Color(
        name: "Pink",
        order: 2,
        accent: True,
        colour: colour.from_rgb255(r: 234, g: 118, b: 203),
      ),
      mauve: Color(
        name: "Mauve",
        order: 3,
        accent: True,
        colour: colour.from_rgb255(r: 136, g: 57, b: 239),
      ),
      red: Color(
        name: "Red",
        order: 4,
        accent: True,
        colour: colour.from_rgb255(r: 210, g: 15, b: 57),
      ),
      maroon: Color(
        name: "Maroon",
        order: 5,
        accent: True,
        colour: colour.from_rgb255(r: 230, g: 69, b: 83),
      ),
      peach: Color(
        name: "Peach",
        order: 6,
        accent: True,
        colour: colour.from_rgb255(r: 254, g: 100, b: 11),
      ),
      yellow: Color(
        name: "Yellow",
        order: 7,
        accent: True,
        colour: colour.from_rgb255(r: 223, g: 142, b: 29),
      ),
      green: Color(
        name: "Green",
        order: 8,
        accent: True,
        colour: colour.from_rgb255(r: 64, g: 160, b: 43),
      ),
      teal: Color(
        name: "Teal",
        order: 9,
        accent: True,
        colour: colour.from_rgb255(r: 23, g: 146, b: 153),
      ),
      sky: Color(
        name: "Sky",
        order: 10,
        accent: True,
        colour: colour.from_rgb255(r: 4, g: 165, b: 229),
      ),
      sapphire: Color(
        name: "Sapphire",
        order: 11,
        accent: True,
        colour: colour.from_rgb255(r: 32, g: 159, b: 181),
      ),
      blue: Color(
        name: "Blue",
        order: 12,
        accent: True,
        colour: colour.from_rgb255(r: 30, g: 102, b: 245),
      ),
      lavender: Color(
        name: "Lavender",
        order: 13,
        accent: True,
        colour: colour.from_rgb255(r: 114, g: 135, b: 253),
      ),
      text: Color(
        name: "Text",
        order: 14,
        accent: False,
        colour: colour.from_rgb255(r: 76, g: 79, b: 105),
      ),
      subtext1: Color(
        name: "Subtext 1",
        order: 15,
        accent: False,
        colour: colour.from_rgb255(r: 92, g: 95, b: 119),
      ),
      subtext0: Color(
        name: "Subtext 0",
        order: 16,
        accent: False,
        colour: colour.from_rgb255(r: 108, g: 111, b: 133),
      ),
      overlay2: Color(
        name: "Overlay 2",
        order: 17,
        accent: False,
        colour: colour.from_rgb255(r: 124, g: 127, b: 147),
      ),
      overlay1: Color(
        name: "Overlay 1",
        order: 18,
        accent: False,
        colour: colour.from_rgb255(r: 140, g: 143, b: 161),
      ),
      overlay0: Color(
        name: "Overlay 0",
        order: 19,
        accent: False,
        colour: colour.from_rgb255(r: 156, g: 160, b: 176),
      ),
      surface2: Color(
        name: "Surface 2",
        order: 20,
        accent: False,
        colour: colour.from_rgb255(r: 172, g: 176, b: 190),
      ),
      surface1: Color(
        name: "Surface 1",
        order: 21,
        accent: False,
        colour: colour.from_rgb255(r: 188, g: 192, b: 204),
      ),
      surface0: Color(
        name: "Surface 0",
        order: 22,
        accent: False,
        colour: colour.from_rgb255(r: 204, g: 208, b: 218),
      ),
      base: Color(
        name: "Base",
        order: 23,
        accent: False,
        colour: colour.from_rgb255(r: 239, g: 241, b: 245),
      ),
      mantle: Color(
        name: "Mantle",
        order: 24,
        accent: False,
        colour: colour.from_rgb255(r: 230, g: 233, b: 239),
      ),
      crust: Color(
        name: "Crust",
        order: 25,
        accent: False,
        colour: colour.from_rgb255(r: 220, g: 224, b: 232),
      ),
    ),
  )
}

pub fn frappe() -> Flavor {
  Flavor(
    name: "Frappé",
    emoji: "🪴",
    order: 1,
    dark: True,
    colors: Colors(
      rosewater: Color(
        name: "Rosewater",
        order: 0,
        accent: True,
        colour: colour.from_rgb255(r: 242, g: 213, b: 207),
      ),
      flamingo: Color(
        name: "Flamingo",
        order: 1,
        accent: True,
        colour: colour.from_rgb255(r: 238, g: 190, b: 190),
      ),
      pink: Color(
        name: "Pink",
        order: 2,
        accent: True,
        colour: colour.from_rgb255(r: 244, g: 184, b: 228),
      ),
      mauve: Color(
        name: "Mauve",
        order: 3,
        accent: True,
        colour: colour.from_rgb255(r: 202, g: 158, b: 230),
      ),
      red: Color(
        name: "Red",
        order: 4,
        accent: True,
        colour: colour.from_rgb255(r: 231, g: 130, b: 132),
      ),
      maroon: Color(
        name: "Maroon",
        order: 5,
        accent: True,
        colour: colour.from_rgb255(r: 234, g: 153, b: 156),
      ),
      peach: Color(
        name: "Peach",
        order: 6,
        accent: True,
        colour: colour.from_rgb255(r: 239, g: 159, b: 118),
      ),
      yellow: Color(
        name: "Yellow",
        order: 7,
        accent: True,
        colour: colour.from_rgb255(r: 229, g: 200, b: 144),
      ),
      green: Color(
        name: "Green",
        order: 8,
        accent: True,
        colour: colour.from_rgb255(r: 166, g: 209, b: 137),
      ),
      teal: Color(
        name: "Teal",
        order: 9,
        accent: True,
        colour: colour.from_rgb255(r: 129, g: 200, b: 190),
      ),
      sky: Color(
        name: "Sky",
        order: 10,
        accent: True,
        colour: colour.from_rgb255(r: 153, g: 209, b: 219),
      ),
      sapphire: Color(
        name: "Sapphire",
        order: 11,
        accent: True,
        colour: colour.from_rgb255(r: 133, g: 193, b: 220),
      ),
      blue: Color(
        name: "Blue",
        order: 12,
        accent: True,
        colour: colour.from_rgb255(r: 140, g: 170, b: 238),
      ),
      lavender: Color(
        name: "Lavender",
        order: 13,
        accent: True,
        colour: colour.from_rgb255(r: 186, g: 187, b: 241),
      ),
      text: Color(
        name: "Text",
        order: 14,
        accent: False,
        colour: colour.from_rgb255(r: 198, g: 208, b: 245),
      ),
      subtext1: Color(
        name: "Subtext 1",
        order: 15,
        accent: False,
        colour: colour.from_rgb255(r: 181, g: 191, b: 226),
      ),
      subtext0: Color(
        name: "Subtext 0",
        order: 16,
        accent: False,
        colour: colour.from_rgb255(r: 165, g: 173, b: 206),
      ),
      overlay2: Color(
        name: "Overlay 2",
        order: 17,
        accent: False,
        colour: colour.from_rgb255(r: 148, g: 156, b: 187),
      ),
      overlay1: Color(
        name: "Overlay 1",
        order: 18,
        accent: False,
        colour: colour.from_rgb255(r: 131, g: 139, b: 167),
      ),
      overlay0: Color(
        name: "Overlay 0",
        order: 19,
        accent: False,
        colour: colour.from_rgb255(r: 115, g: 121, b: 148),
      ),
      surface2: Color(
        name: "Surface 2",
        order: 20,
        accent: False,
        colour: colour.from_rgb255(r: 98, g: 104, b: 128),
      ),
      surface1: Color(
        name: "Surface 1",
        order: 21,
        accent: False,
        colour: colour.from_rgb255(r: 81, g: 87, b: 109),
      ),
      surface0: Color(
        name: "Surface 0",
        order: 22,
        accent: False,
        colour: colour.from_rgb255(r: 65, g: 69, b: 89),
      ),
      base: Color(
        name: "Base",
        order: 23,
        accent: False,
        colour: colour.from_rgb255(r: 48, g: 52, b: 70),
      ),
      mantle: Color(
        name: "Mantle",
        order: 24,
        accent: False,
        colour: colour.from_rgb255(r: 41, g: 44, b: 60),
      ),
      crust: Color(
        name: "Crust",
        order: 25,
        accent: False,
        colour: colour.from_rgb255(r: 35, g: 38, b: 52),
      ),
    ),
  )
}

pub fn macchiato() -> Flavor {
  Flavor(
    name: "Macchiato",
    emoji: "🌺",
    order: 2,
    dark: True,
    colors: Colors(
      rosewater: Color(
        name: "Rosewater",
        order: 0,
        accent: True,
        colour: colour.from_rgb255(r: 244, g: 219, b: 214),
      ),
      flamingo: Color(
        name: "Flamingo",
        order: 1,
        accent: True,
        colour: colour.from_rgb255(r: 240, g: 198, b: 198),
      ),
      pink: Color(
        name: "Pink",
        order: 2,
        accent: True,
        colour: colour.from_rgb255(r: 245, g: 189, b: 230),
      ),
      mauve: Color(
        name: "Mauve",
        order: 3,
        accent: True,
        colour: colour.from_rgb255(r: 198, g: 160, b: 246),
      ),
      red: Color(
        name: "Red",
        order: 4,
        accent: True,
        colour: colour.from_rgb255(r: 237, g: 135, b: 150),
      ),
      maroon: Color(
        name: "Maroon",
        order: 5,
        accent: True,
        colour: colour.from_rgb255(r: 238, g: 153, b: 160),
      ),
      peach: Color(
        name: "Peach",
        order: 6,
        accent: True,
        colour: colour.from_rgb255(r: 245, g: 169, b: 127),
      ),
      yellow: Color(
        name: "Yellow",
        order: 7,
        accent: True,
        colour: colour.from_rgb255(r: 238, g: 212, b: 159),
      ),
      green: Color(
        name: "Green",
        order: 8,
        accent: True,
        colour: colour.from_rgb255(r: 166, g: 218, b: 149),
      ),
      teal: Color(
        name: "Teal",
        order: 9,
        accent: True,
        colour: colour.from_rgb255(r: 139, g: 213, b: 202),
      ),
      sky: Color(
        name: "Sky",
        order: 10,
        accent: True,
        colour: colour.from_rgb255(r: 145, g: 215, b: 227),
      ),
      sapphire: Color(
        name: "Sapphire",
        order: 11,
        accent: True,
        colour: colour.from_rgb255(r: 125, g: 196, b: 228),
      ),
      blue: Color(
        name: "Blue",
        order: 12,
        accent: True,
        colour: colour.from_rgb255(r: 138, g: 173, b: 244),
      ),
      lavender: Color(
        name: "Lavender",
        order: 13,
        accent: True,
        colour: colour.from_rgb255(r: 183, g: 189, b: 248),
      ),
      text: Color(
        name: "Text",
        order: 14,
        accent: False,
        colour: colour.from_rgb255(r: 202, g: 211, b: 245),
      ),
      subtext1: Color(
        name: "Subtext 1",
        order: 15,
        accent: False,
        colour: colour.from_rgb255(r: 184, g: 192, b: 224),
      ),
      subtext0: Color(
        name: "Subtext 0",
        order: 16,
        accent: False,
        colour: colour.from_rgb255(r: 165, g: 173, b: 203),
      ),
      overlay2: Color(
        name: "Overlay 2",
        order: 17,
        accent: False,
        colour: colour.from_rgb255(r: 147, g: 154, b: 183),
      ),
      overlay1: Color(
        name: "Overlay 1",
        order: 18,
        accent: False,
        colour: colour.from_rgb255(r: 128, g: 135, b: 162),
      ),
      overlay0: Color(
        name: "Overlay 0",
        order: 19,
        accent: False,
        colour: colour.from_rgb255(r: 110, g: 115, b: 141),
      ),
      surface2: Color(
        name: "Surface 2",
        order: 20,
        accent: False,
        colour: colour.from_rgb255(r: 91, g: 96, b: 120),
      ),
      surface1: Color(
        name: "Surface 1",
        order: 21,
        accent: False,
        colour: colour.from_rgb255(r: 73, g: 77, b: 100),
      ),
      surface0: Color(
        name: "Surface 0",
        order: 22,
        accent: False,
        colour: colour.from_rgb255(r: 54, g: 58, b: 79),
      ),
      base: Color(
        name: "Base",
        order: 23,
        accent: False,
        colour: colour.from_rgb255(r: 36, g: 39, b: 58),
      ),
      mantle: Color(
        name: "Mantle",
        order: 24,
        accent: False,
        colour: colour.from_rgb255(r: 30, g: 32, b: 48),
      ),
      crust: Color(
        name: "Crust",
        order: 25,
        accent: False,
        colour: colour.from_rgb255(r: 24, g: 25, b: 38),
      ),
    ),
  )
}

pub fn mocha() -> Flavor {
  Flavor(
    name: "Mocha",
    emoji: "🌿",
    order: 3,
    dark: True,
    colors: Colors(
      rosewater: Color(
        name: "Rosewater",
        order: 0,
        accent: True,
        colour: colour.from_rgb255(r: 245, g: 224, b: 220),
      ),
      flamingo: Color(
        name: "Flamingo",
        order: 1,
        accent: True,
        colour: colour.from_rgb255(r: 242, g: 205, b: 205),
      ),
      pink: Color(
        name: "Pink",
        order: 2,
        accent: True,
        colour: colour.from_rgb255(r: 245, g: 194, b: 231),
      ),
      mauve: Color(
        name: "Mauve",
        order: 3,
        accent: True,
        colour: colour.from_rgb255(r: 203, g: 166, b: 247),
      ),
      red: Color(
        name: "Red",
        order: 4,
        accent: True,
        colour: colour.from_rgb255(r: 243, g: 139, b: 168),
      ),
      maroon: Color(
        name: "Maroon",
        order: 5,
        accent: True,
        colour: colour.from_rgb255(r: 235, g: 160, b: 172),
      ),
      peach: Color(
        name: "Peach",
        order: 6,
        accent: True,
        colour: colour.from_rgb255(r: 250, g: 179, b: 135),
      ),
      yellow: Color(
        name: "Yellow",
        order: 7,
        accent: True,
        colour: colour.from_rgb255(r: 249, g: 226, b: 175),
      ),
      green: Color(
        name: "Green",
        order: 8,
        accent: True,
        colour: colour.from_rgb255(r: 166, g: 227, b: 161),
      ),
      teal: Color(
        name: "Teal",
        order: 9,
        accent: True,
        colour: colour.from_rgb255(r: 148, g: 226, b: 213),
      ),
      sky: Color(
        name: "Sky",
        order: 10,
        accent: True,
        colour: colour.from_rgb255(r: 137, g: 220, b: 235),
      ),
      sapphire: Color(
        name: "Sapphire",
        order: 11,
        accent: True,
        colour: colour.from_rgb255(r: 116, g: 199, b: 236),
      ),
      blue: Color(
        name: "Blue",
        order: 12,
        accent: True,
        colour: colour.from_rgb255(r: 137, g: 180, b: 250),
      ),
      lavender: Color(
        name: "Lavender",
        order: 13,
        accent: True,
        colour: colour.from_rgb255(r: 180, g: 190, b: 254),
      ),
      text: Color(
        name: "Text",
        order: 14,
        accent: False,
        colour: colour.from_rgb255(r: 205, g: 214, b: 244),
      ),
      subtext1: Color(
        name: "Subtext 1",
        order: 15,
        accent: False,
        colour: colour.from_rgb255(r: 186, g: 194, b: 222),
      ),
      subtext0: Color(
        name: "Subtext 0",
        order: 16,
        accent: False,
        colour: colour.from_rgb255(r: 166, g: 173, b: 200),
      ),
      overlay2: Color(
        name: "Overlay 2",
        order: 17,
        accent: False,
        colour: colour.from_rgb255(r: 147, g: 153, b: 178),
      ),
      overlay1: Color(
        name: "Overlay 1",
        order: 18,
        accent: False,
        colour: colour.from_rgb255(r: 127, g: 132, b: 156),
      ),
      overlay0: Color(
        name: "Overlay 0",
        order: 19,
        accent: False,
        colour: colour.from_rgb255(r: 108, g: 112, b: 134),
      ),
      surface2: Color(
        name: "Surface 2",
        order: 20,
        accent: False,
        colour: colour.from_rgb255(r: 88, g: 91, b: 112),
      ),
      surface1: Color(
        name: "Surface 1",
        order: 21,
        accent: False,
        colour: colour.from_rgb255(r: 69, g: 71, b: 90),
      ),
      surface0: Color(
        name: "Surface 0",
        order: 22,
        accent: False,
        colour: colour.from_rgb255(r: 49, g: 50, b: 68),
      ),
      base: Color(
        name: "Base",
        order: 23,
        accent: False,
        colour: colour.from_rgb255(r: 30, g: 30, b: 46),
      ),
      mantle: Color(
        name: "Mantle",
        order: 24,
        accent: False,
        colour: colour.from_rgb255(r: 24, g: 24, b: 37),
      ),
      crust: Color(
        name: "Crust",
        order: 25,
        accent: False,
        colour: colour.from_rgb255(r: 17, g: 17, b: 27),
      ),
    ),
  )
}
