# Advanced Dice Thrower

## Learning Goals

- Create object oriented dice thrower application

## Introduction

You might be familiar with how to model a dice-throwing game using
procedural-style code. You might have implemented methods like `throw_die` or
`throw_dice(4)` to get a collection of 4 rolls.

In this lesson, we're going to implement the same ideas: `Die` and
`DieRoller`, but from an Object-Oriented perspective.

## Create Object Oriented Dice Thrower Application

* Create a `Die` class
  * By default, it should have six "pips" (pip is the technical word for the
    dots on the side of the die)
  * `pips` should be accessible via `attr_reader`
  * `roll` should be a method on `Die` which returns a random pip value
* Create a `DiceRoller` class
  * By default it should initialize with a set of 1 `Die`
  * It should be configurable to initialize with multiple dice
  * The `generate_set` method should return an `Array` of the initialized number
    of dice

## Conclusion

We've gone through a series of exercises that show us the process for creating
reusable and maintainable code. This is a constant pattern in Object-Oriented
development: build a class that represents a single thing (`Die`, `Burrito`,
`Car`) and then build _another_ class that wraps a collection of those single
things (`Dice`, `LunchOrder`, `StatusOfFreeway`) and offers insights about
those collections (`total_of_roll`, `likely_to_cause_heartburn`, `rush_hour?`)

[settlers of catan]: https://www.catan.com/
