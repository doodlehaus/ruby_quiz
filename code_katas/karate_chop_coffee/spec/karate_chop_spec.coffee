describe "Karate chop binary search", ->
  karate = new Karate
  it "should perform a binary search", ->
    expect(karate.chop(3, [])).toEqual(-1)
    expect(karate.chop(3, [1])).toEqual(-1)
    expect(karate.chop(1, [1])).toEqual(0)

  it "should work for larger arrays", ->
    expect(karate.chop(1, [1, 3, 5])).toEqual(0)
    expect(karate.chop(3, [1, 3, 5])).toEqual(1)
    expect(karate.chop(5, [1, 3, 5])).toEqual(2)
    expect(karate.chop(0, [1, 3, 5])).toEqual(-1)
    expect(karate.chop(2, [1, 3, 5])).toEqual(-1)
    expect(karate.chop(4, [1, 3, 5])).toEqual(-1)
    expect(karate.chop(6, [1, 3, 5])).toEqual(-1)

  it "should work for even larger arrays", ->
    expect(karate.chop(1, [1, 3, 5, 7])).toEqual(0)
    expect(karate.chop(3, [1, 3, 5, 7])).toEqual(1)
    expect(karate.chop(5, [1, 3, 5, 7])).toEqual(2)
    expect(karate.chop(7, [1, 3, 5, 7])).toEqual(3)
    expect(karate.chop(0, [1, 3, 5, 7])).toEqual(-1)
    expect(karate.chop(2, [1, 3, 5, 7])).toEqual(-1)
    expect(karate.chop(4, [1, 3, 5, 7])).toEqual(-1)
    expect(karate.chop(6, [1, 3, 5, 7])).toEqual(-1)
    expect(karate.chop(8, [1, 3, 5, 7])).toEqual(-1)
