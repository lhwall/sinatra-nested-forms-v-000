class Ship
attr_accessor :name, :type, :booty
@@all = []

def self.all
  @@all
end

def clear
  @@all.clear
end

end
