[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Ruby Enumerable and Comparable

## Prerequisites

- [Ruby Object](https://git.generalassemb.ly/ga-wdi-boston/ruby-object)

## Objectives

By the end of this, developers should be able to:

- Define “list” and give two examples of lists in Ruby.
- Diagram the flow of Enumerable methods as invoked through concrete classes.
- Give two examples of methods defined in Enumerable and available on all
    three of Range, Array, and Hash.
- Add Comparable operators to a class.
- Add Enumerable methods to a class.

## Preparation

1. Fork and clone this repository.
 [FAQ](https://git.generalassemb.ly/ga-wdi-boston/meta/wiki/ForkAndClone)
1. Create a new branch, `training`, for your work.
1. Checkout to the `training` branch.
1. Install dependencies with `bundle install`.

## Introduction

A list is an abstract data type (ADT) that represents an ordered collection of
items. The list may be empty.  If not empty, the list has a first item followed
by a list containing the rest of the items. This is not a rigorous definition.

Enumerable is Ruby's implementation of the `list` abstraction.

What are some types of lists?

What are some things we'd put on those lists?

## Arrays as lists

In JavaScript, the concept of list is built into Array. In Ruby, it is built
into Enumerable which is included in Ruby's
[Array](https://ruby-doc.org/core-2.5.0/Array.html).

The following table contains a mapping of some of the methods that potentially
touch all the elements in an Array. We've already covered most of these in
[Ruby Array Methods](https://git.generalassemb.ly/ga-wdi-boston/ruby-array-methods).

| JavaScript | Ruby     |
| ---------- | ----     |
| `every`    | `all?`   |
| `filter`   | `select` |
| `forEach`  | `each`   |
| `map`      | `map`    |
| `reduce`   | `reduce` |
| `some`     | `any?`   |

But, wait. Where is the method `all?` defined? The method `reduce`? They're
from the `Enumerable` mix-in, and will be the focus of this talk. "Enumerable"
is another word for "iteratable", so we can say that each of Ruby's `Array`,
`Range`, and `Hash` types behave as something that can be iterated over.

## The Enumerable Module

Ruby's [Enumerable](https://ruby-doc.org/core-2.5.0/Enumerable.html) module
provides many list processing methods relying on a class's `each` method.
Ruby's Array clas## Introductions includes the Enumerable module.

### Modules

In Ruby, modules serve two purposes.  The first is to create name spaces. The
second is to supply common behavior to a class.

The `Math` module hides mathematical functions inside the name-space `Math` so
that short and common names don't pollute the global name-space (e.g.
`Math::PI` or `Math.cos`).

The `Enumerable` module contains code implementing list methods in terms of a
concrete class's `each` method.

### The connection

Let's diagram the delegation from Array to Enumerable and back.

## Ranges as lists

Ruby's [Range](http://ruby-doc.org/core-2.5.0/Range.html) class provides a
convenient way to express a sequence of integers. Range includes Enumerable so
we can treat instances as a list.

### Demo - Range

```ruby
rng = 1..10
```

### Code along - Range

Let's explore using Range as an enumerable in `bin/range_list.rb`.

### Lab - Range

In `bin/range_lab.rb`, use `reduce` to calculate the sum of all the even
numbers in a Range. All the odd numbers.  Now use `each_with_object` to do both
at once.

Hint: [Better Hash Injection using
each_with_object](http://technology.customink.com/blog/2014/10/14/better-hash-injection-using-each-with-object/)

## Hashes as lists

[Hash](http://ruby-doc.org/core-2.5.0/Hash.html) includes Enumerable so we can
treat it as a list.

### Demo - Hash

```ruby
hash = {'1':'one','2':'two'}
# => {:"1"=>"one", :"2"=>"two"}

hash.each {|key, value| puts "#{key} and #{value}"}
# 1 and one
# 2 and two
# => {:"1"=>"one", :"2"=>"two"}
```

### Code along - Hash

Let's explore using Hash as an enumerable in `bin/hash_list.rb`.

### Lab - Hash

In `bin/hash_lab.rb`, use `reduce` to accumulate all of the keys and values in
a Hash as Arrays. Store these keys and values in a memo Hash with the keys
`:keys` and `:values`.

So if the input hash was:

```ruby
hash = {:a => 1, :b => 2, :c => 3}
```

...your ouput should look like:

```ruby
memo = {:keys => [:a, :b, :c], :values => [1, 2, 3]}
```

Run the linter after you complete the `reduce` task. Notice a curious linter
warning? Fix all the rest, then continue. Now use `each_with_object` to do the
same.

## Using Mixins

We'll explore an important Ruby mechanism for adding behavior to a class:
mixins.

Comparable is a mixin that the Enumerable mixin relies on for several method's
implementations.

## The Comparable Module

### Lab - comparing cards

How do you compare cards?

In your squads create an algorithm to determine which of two cards, if either,
is "greater" than the other.

### Demo - A Card Model

The [Comparable](http://ruby-doc.org/core-2.5.0/Comparable.html) module provide
common operators to a class that implements the `<=>` (spaceship) operator.
Let's look at `lib/card.rb`.

Adding the spaceship operator to `Card`.

### Lab - A list as a deck of cards

Let's simulate Enumerable methods using a deck of cards.  In your squad, one of
you will act as the method and another as the block. The third squad member
will record the result.

### Demo - A Deck Model

Let's explore the start of writing a card game in Ruby using `lib/card.rb` and
`lib/deck.rb`.

## Private methods

It's a best practice to keep our exposed API as small as necessary. I like to
keep methods private by default (just like data is) by decorating them with
the `private` method. This makes them uncallable outside the class definition.
For example:

```ruby
class Foo
  def bar
    "baz"
  end
  private :bar

  def qux
    bar # this works
  end
end

Foo.new.bar # this does not work
```

## Incuding the Enumerable Module

We'll build our own `list` using Ruby's
[Enumerable](http://ruby-doc.org/core-2.4.1/Enumerable.html) module.

### Code along - Stepped Range

We'll build a new range class that increments by a provided value. The key to
creating an `Enumerable` class is a correct implementation of the `each`
method.

## Tasks

Developers should run these often!

- `bin/rake nag`  (or `bundle exec rake nag`): runs code quality analysis
    tools on your code and complains.
- `bin/rake test` (or `bundle exec rake test`): runs automated tests.

## Additional Resources

Two images to give you a sense of the relationships between types in Ruby.

- [Hand drawn](http://farm6.staticflickr.com/5443/10075536704_84aa13676a_o.jpg)
- [And not](http://i.stack.imgur.com/1taqB.png)

These images may diverge slightly from the actual relationships, Ruby is an
evolving language, but do give a sense of much of what goes on.

Other resources:

- [List ADT](https://en.wikipedia.org/wiki/List_%28abstract_data_type%29)
- [Ruby Lazy Enumerator](http://patshaughnessy.net/2013/4/3/ruby-2-0-works-hard-so-you-can-be-lazy)
- [Deeper Dive into Modules](http://ruby-doc.com/docs/ProgrammingRuby/html/tut_modules.html)

## [License](LICENSE)

1. All content is licensed under a CC­BY­NC­SA 4.0 license.
1. All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
