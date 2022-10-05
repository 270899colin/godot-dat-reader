# DAT Reader

This will import Lithtech DAT files and allow Godot to load worlds as meshes.

Note: This fork is meant to be used on Godot 4.0 (beta 2), for Godot 3.x see [here](https://github.com/haekb/godot-dat-reader "here.") 

## Supported Formats

This plugin currently supports DAT versions:
-  Lithtech 1.0                     (DAT v56)
-  Lithtech 1.5                     (DAT v57)
-  Kiss Psycho Circus (Custom 1.5)  (DAT v127)
-  Lithtech 2.x                     (DAT v66)
-  Lithtech Talon                   (DAT v70)
-  Lithtech PS2                     (LTB v66)

Map versions v56, v57, and v127 all have lightmap support.

## Usage
First, set the texture_path in `WorldBuilder.gd` to the path of the game you are trying to import.

Use `WorldBuilder.gd`'s `build` function to import textures at runtime.

If you can't see the models, try setting the scale of the root node to 0.1 (models are quite big by default).

Note this plugin is pretty messy right now, and doesn't load game entities yet.

## Installation

Simply drop this into `<GodotProject>/Addons/LTDatReader`.

## Research

Some research 010 Editor binary templates are available in `/Research`.