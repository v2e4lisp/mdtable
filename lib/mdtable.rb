class MDTable

  VERSION = '0.0.1'

  # convert 2D array to md table array
  #
  # rows - array of array
  #
  # Examples:
  #
  #   MDTable.convert [[1,2,3], ['x', 'x', 'x']]
  #   # => ['1 | 2 | 3',
  #         '- | - | -',
  #         'x | x | x']
  #
  # Returns an array of string as a markdown table
  def self.convert(rows)
    rows = rows.map {|row| row.map(&:to_s) }
    new(rows).to_md
  end

  def initialize rows
    @rows = rows
  end

  def to_md
    rows = @rows.dup.insert(1, col_max_lengths.map {|l| '-' * l })
    rows.map {|row|
      row.each_with_index.map {|item, i| item.ljust(col_max_lengths[i]) }.join ' | '
    }
  end

  def col_max_lengths
    @col_max_lengths ||= 0.upto(@rows.first.size - 1).map {|i|
      @rows.map {|r| r[i].length }.max
    }
  end

  def width
    width ||= col_max_lengths.inject(&:+) + 4 + 4
  end

end

