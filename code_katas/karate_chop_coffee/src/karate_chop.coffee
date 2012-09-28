class window.Karate

  constructor: ->

  chop: (int, arr) ->
    min = 0
    max = arr.length - 1
    return this.binary_search(int, arr, min, max)

  binary_search: (int, arr, min, max) ->
    mid = parseInt((min + max) / 2)
    if arr[mid] == int
      return mid
    else
      while max > min
        if arr[mid] < int
          min = mid + 1
          return this.binary_search(int, arr, min, max)
        else if arr[mid] > int
          max = mid - 1
          return this.binary_search(int, arr, min, max)
    return -1
