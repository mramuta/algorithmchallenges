# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    return x if x < 2
    (x ** (0.5)).floor
end