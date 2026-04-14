---
layout: post
title: "Chapter 1"
date: 2026-04-01 09:00:00 +0000
---

![chapter1](../assets/bg.png)

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor.

Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi.

```ruby
class Fireball
  attr_reader :position, :velocity, :damage

  def initialize(origin:, direction:, speed:, damage:)
    @position = origin.dup
    @velocity = {
      x: direction[:x] * speed,
      y: direction[:y] * speed,
      z: direction[:z] * speed
    }
    @damage = damage
  end

  def cast
    move
    apply_effect
  end

  private

  def move
    @position[:x] += @velocity[:x]
    @position[:y] += @velocity[:y]
    @position[:z] += @velocity[:z]
  end

  def apply_effect
    # abstracted: engine handles collision, damage, cleanup
  end
end

def cast_fireball(origin:, direction:, speed: 1.0, damage: 10)
  Fireball.new(
    origin: origin,
    direction: direction,
    speed: speed,
    damage: damage
  ).cast
end
```

Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue.

> Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede.
