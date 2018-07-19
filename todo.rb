class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER  = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description = '')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end
end

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def size
    @todos.size
  end

  def first
    @todos.first
  end

  def last
    @todos.last
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def add(item)
    @todos << item if item.instance_of? Todo
  end

  def <<(item)
    @todos << item if item.instance_of? Todo
  end

  def mark_done_at(idx)
    @todos[idx].done! if idx < size  
  end

  def mark_undone_at(idx)
    @todos[idx].undone! if idx < size
  end

  def remove_at(idx)
    @todos.delete_at(idx)
  end

  def each
    idx = 0 
    while idx < size
      yield(@todos[idx])
      idx += 1
    end
  end

  def to_s
    text =  "** #{title} **\n"
    @todos.each{|item| text << item.to_s << "\n"}
    text
  end
end

list = TodoList.new("My list")
list << Todo.new("Get Dressed")
list.add(Todo.new("Eat Breakfast"))
puts list
list.mark_done_at(0)
list.mark_done_at(1)

list.each{|td| puts td}