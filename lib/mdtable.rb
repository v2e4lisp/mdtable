class MDTable

  VERSION = '0.0.2'

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
    table.map {|row|
      row.each_with_index.map {|item, i| item.ljust(col_lengths[i])}.join ' | '
    }
  end

  def col_lengths
    @col_lengths ||= 0.upto(@rows.first.size - 1).map {|i|
      @rows.map {|r| r[i].length }.max
    }
  end

  def table
    @table ||= @rows.dup.insert(1, col_lengths.map {|l| '-' * l })
  end

end

