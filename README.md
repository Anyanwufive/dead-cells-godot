# Dead Cells Godot Clone

A complete roguelike action game inspired by Dead Cells, built from scratch in Godot 4.

## Features

- **Player Movement & Combat**: Smooth platformer controls with melee combat
- **Enemy AI**: Smart enemy behaviors including patrol, chase, and attack patterns
- **Procedural Level Generation**: Dynamically generated dungeons
- **Weapon System**: Multiple weapon types with unique properties
- **Roguelike Progression**: Permanent unlocks and upgrades between runs
- **Visual Effects**: Particle effects and knockback
- **UI System**: Health tracking and inventory management

## Getting Started

1. Clone this repository
2. Open in Godot 4.x
3. Press Play to run the game

## Controls

- **A/D or Arrow Keys**: Move
- **W/Space**: Jump
- **Mouse Click**: Attack
- **E**: Dash
- **ESC**: Pause/Menu

## Project Structure

```
src/
├── player/
│   ├── player.gd
│   └── player.tscn
├── enemies/
│   ├── enemy.gd
│   └── enemy.tscn
├── level/
│   ├── level.gd
│   └── level.tscn
├── managers/
│   └── game_manager.gd
├── ui/
│   ├── hud.tscn
│   └── main_menu.tscn
└── scenes/
    └── main_menu.tscn
```

## License

MIT License
