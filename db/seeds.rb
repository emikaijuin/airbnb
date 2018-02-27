#===================== #
# ===== Listings ===== #
#======================#

ActiveRecord::Base.transaction do
listings = {
1 => {
      title: "House on Lake Lanier", 
      description: "Beautiful house on the lake with large backyard, perfect for families looking for a weekend getaway. Volleyball court, basketball hoop, and sailboat.",
      user_id: User.first.id, 
      dates: [],
      schedule: IceCube::Schedule.new(Date.today, duration: 365.days),
      city: "Atlanta", 
      country: "USA", 
      property_id: Property.find(rand(1..6)).id, 
      price: rand(150), 
      rating: rand(5), 
      guests: rand(15), 
      bedrooms: rand(6), 
      beds: rand(6), 
      bathrooms: rand(6)
    },
2 => {
      title: "Montrose Townhouse", 
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu lorem ac diam accumsan consequat quis et justo. Aliquam nec convallis ligula. Duis quis vulputate ante. Phasellus in sapien ex. Pellentesque rhoncus libero magna, vel pharetra ex hendrerit nec. Nullam metus sem, vestibulum vitae elementum sit amet, imperdiet non dolor. Vestibulum congue felis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed lobortis ligula. Sed tincidunt purus eget eleifend rutrum. Quisque ante velit, tincidunt vel egestas vel, maximus a ligula.
      
      Suspendisse sed ultricies neque. Vivamus pulvinar maximus erat, eu maximus enim. Nullam mollis arcu at lacus pellentesque, in condimentum neque hendrerit. Integer tincidunt, arcu in consectetur sollicitudin, libero ligula placerat urna, at porta ipsum odio nec sapien. Sed varius quis odio in tempor. Morbi nec faucibus sem. Nam condimentum mauris vel libero vehicula, nec malesuada ligula dictum. Suspendisse magna leo, pellentesque quis lectus blandit, vehicula suscipit sem. Sed vitae sodales lectus. Morbi quis commodo velit. Donec eu quam quis massa auctor vehicula eget quis lorem. Aenean ac leo aliquam, fringilla erat non, tempus diam. Proin vestibulum orci nisl, at semper mauris viverra ut. Cras bibendum eu mauris eget scelerisque. Nunc a viverra sem, et luctus felis. Curabitur nec congue mauris, euismod consectetur lorem.
      
        Nam pretium non mi nec porttitor. Sed massa dolor, vestibulum non eros vel, iaculis gravida turpis. Proin eu mauris sit amet nisl vehicula condimentum non vitae ligula. Nulla eget porttitor elit. Integer ut dui in ligula sodales auctor mollis id lorem. Pellentesque tristique nisl et lacinia venenatis. Nunc vitae elementum sapien. Phasellus ornare neque vel viverra sodales. Sed vel volutpat purus, id finibus ipsum.",
      user_id: User.first.id, 
      dates: [],
      schedule: IceCube::Schedule.new(Date.today, duration: 365.days),
      city: "Houston", 
      country: "USA", 
      property_id: Property.find(rand(1..6)).id, 
      price: rand(150), 
      rating: rand(5), 
      guests: rand(15), 
      bedrooms: rand(6), 
      beds: rand(6), 
      bathrooms: rand(6)
    },
3 => {
      title: "KLCC Highrise", 
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu lorem ac diam accumsan consequat quis et justo. Aliquam nec convallis ligula. Duis quis vulputate ante. Phasellus in sapien ex. Pellentesque rhoncus libero magna, vel pharetra ex hendrerit nec. Nullam metus sem, vestibulum vitae elementum sit amet, imperdiet non dolor. Vestibulum congue felis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed lobortis ligula. Sed tincidunt purus eget eleifend rutrum. Quisque ante velit, tincidunt vel egestas vel, maximus a ligula.
      
      Suspendisse sed ultricies neque. Vivamus pulvinar maximus erat, eu maximus enim. Nullam mollis arcu at lacus pellentesque, in condimentum neque hendrerit. Integer tincidunt, arcu in consectetur sollicitudin, libero ligula placerat urna, at porta ipsum odio nec sapien. Sed varius quis odio in tempor. Morbi nec faucibus sem. Nam condimentum mauris vel libero vehicula, nec malesuada ligula dictum. Suspendisse magna leo, pellentesque quis lectus blandit, vehicula suscipit sem. Sed vitae sodales lectus. Morbi quis commodo velit. Donec eu quam quis massa auctor vehicula eget quis lorem. Aenean ac leo aliquam, fringilla erat non, tempus diam. Proin vestibulum orci nisl, at semper mauris viverra ut. Cras bibendum eu mauris eget scelerisque. Nunc a viverra sem, et luctus felis. Curabitur nec congue mauris, euismod consectetur lorem.
      
      Nam pretium non mi nec porttitor. Sed massa dolor, vestibulum non eros vel, iaculis gravida turpis. Proin eu mauris sit amet nisl vehicula condimentum non vitae ligula. Nulla eget porttitor elit. Integer ut dui in ligula sodales auctor mollis id lorem. Pellentesque tristique nisl et lacinia venenatis. Nunc vitae elementum sapien. Phasellus ornare neque vel viverra sodales. Sed vel volutpat purus, id finibus ipsum.",
      user_id: User.first.id, 
      dates: [],
      schedule: IceCube::Schedule.new(Date.today, duration: 365.days),
      city: "Kuala Lumpur", 
      country: "Malaysia", 
      property_id: Property.find(rand(1..6)).id, 
      price: rand(150), 
      rating: rand(5), 
      guests: rand(15), 
      bedrooms: rand(6), 
      beds: rand(6), 
      bathrooms: rand(6)
    },
4 => {
      title: "Heights Craftsman Bungalow", 
      description: "BLorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu lorem ac diam accumsan consequat quis et justo. Aliquam nec convallis ligula. Duis quis vulputate ante. Phasellus in sapien ex. Pellentesque rhoncus libero magna, vel pharetra ex hendrerit nec. Nullam metus sem, vestibulum vitae elementum sit amet, imperdiet non dolor. Vestibulum congue felis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed lobortis ligula. Sed tincidunt purus eget eleifend rutrum. Quisque ante velit, tincidunt vel egestas vel, maximus a ligula.
      
      Suspendisse sed ultricies neque. Vivamus pulvinar maximus erat, eu maximus enim. Nullam mollis arcu at lacus pellentesque, in condimentum neque hendrerit. Integer tincidunt, arcu in consectetur sollicitudin, libero ligula placerat urna, at porta ipsum odio nec sapien. Sed varius quis odio in tempor. Morbi nec faucibus sem. Nam condimentum mauris vel libero vehicula, nec malesuada ligula dictum. Suspendisse magna leo, pellentesque quis lectus blandit, vehicula suscipit sem. Sed vitae sodales lectus. Morbi quis commodo velit. Donec eu quam quis massa auctor vehicula eget quis lorem. Aenean ac leo aliquam, fringilla erat non, tempus diam. Proin vestibulum orci nisl, at semper mauris viverra ut. Cras bibendum eu mauris eget scelerisque. Nunc a viverra sem, et luctus felis. Curabitur nec congue mauris, euismod consectetur lorem.
      
      Nam pretium non mi nec porttitor. Sed massa dolor, vestibulum non eros vel, iaculis gravida turpis. Proin eu mauris sit amet nisl vehicula condimentum non vitae ligula. Nulla eget porttitor elit. Integer ut dui in ligula sodales auctor mollis id lorem. Pellentesque tristique nisl et lacinia venenatis. Nunc vitae elementum sapien. Phasellus ornare neque vel viverra sodales. Sed vel volutpat purus, id finibus ipsum.",
      user_id: User.first.id, 
      dates: [],
      schedule: IceCube::Schedule.new(Date.today, duration: 365.days),
      city: "Houston", 
      country: "USA", 
      property_id: Property.find(rand(1..6)).id, 
      price: rand(150), 
      rating: rand(5), 
      guests: rand(15), 
      bedrooms: rand(6), 
      beds: rand(6), 
      bathrooms: rand(6)
    },
5 => {
      title: "1920s Cottage", 
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu lorem ac diam accumsan consequat quis et justo. Aliquam nec convallis ligula. Duis quis vulputate ante. Phasellus in sapien ex. Pellentesque rhoncus libero magna, vel pharetra ex hendrerit nec. Nullam metus sem, vestibulum vitae elementum sit amet, imperdiet non dolor. Vestibulum congue felis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed lobortis ligula. Sed tincidunt purus eget eleifend rutrum. Quisque ante velit, tincidunt vel egestas vel, maximus a ligula.
      
      Suspendisse sed ultricies neque. Vivamus pulvinar maximus erat, eu maximus enim. Nullam mollis arcu at lacus pellentesque, in condimentum neque hendrerit. Integer tincidunt, arcu in consectetur sollicitudin, libero ligula placerat urna, at porta ipsum odio nec sapien. Sed varius quis odio in tempor. Morbi nec faucibus sem. Nam condimentum mauris vel libero vehicula, nec malesuada ligula dictum. Suspendisse magna leo, pellentesque quis lectus blandit, vehicula suscipit sem. Sed vitae sodales lectus. Morbi quis commodo velit. Donec eu quam quis massa auctor vehicula eget quis lorem. Aenean ac leo aliquam, fringilla erat non, tempus diam. Proin vestibulum orci nisl, at semper mauris viverra ut. Cras bibendum eu mauris eget scelerisque. Nunc a viverra sem, et luctus felis. Curabitur nec congue mauris, euismod consectetur lorem.
      
      Nam pretium non mi nec porttitor. Sed massa dolor, vestibulum non eros vel, iaculis gravida turpis. Proin eu mauris sit amet nisl vehicula condimentum non vitae ligula. Nulla eget porttitor elit. Integer ut dui in ligula sodales auctor mollis id lorem. Pellentesque tristique nisl et lacinia venenatis. Nunc vitae elementum sapien. Phasellus ornare neque vel viverra sodales. Sed vel volutpat purus, id finibus ipsum.",
      user_id: User.first.id, 
      dates: [],
      schedule: IceCube::Schedule.new(Date.today, duration: 365.days),
      city: "Atlanta", 
      country: "USA", 
      property_id: Property.find(rand(1..6)).id,  
      price: rand(150), 
      rating: rand(5), 
      guests: rand(15), 
      bedrooms: rand(6), 
      beds: rand(6), 
      bathrooms: rand(6)
      },
6 => {
      title: "KLCC Highrise", 
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu lorem ac diam accumsan consequat quis et justo. Aliquam nec convallis ligula. Duis quis vulputate ante. Phasellus in sapien ex. Pellentesque rhoncus libero magna, vel pharetra ex hendrerit nec. Nullam metus sem, vestibulum vitae elementum sit amet, imperdiet non dolor. Vestibulum congue felis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed lobortis ligula. Sed tincidunt purus eget eleifend rutrum. Quisque ante velit, tincidunt vel egestas vel, maximus a ligula.
      
      Suspendisse sed ultricies neque. Vivamus pulvinar maximus erat, eu maximus enim. Nullam mollis arcu at lacus pellentesque, in condimentum neque hendrerit. Integer tincidunt, arcu in consectetur sollicitudin, libero ligula placerat urna, at porta ipsum odio nec sapien. Sed varius quis odio in tempor. Morbi nec faucibus sem. Nam condimentum mauris vel libero vehicula, nec malesuada ligula dictum. Suspendisse magna leo, pellentesque quis lectus blandit, vehicula suscipit sem. Sed vitae sodales lectus. Morbi quis commodo velit. Donec eu quam quis massa auctor vehicula eget quis lorem. Aenean ac leo aliquam, fringilla erat non, tempus diam. Proin vestibulum orci nisl, at semper mauris viverra ut. Cras bibendum eu mauris eget scelerisque. Nunc a viverra sem, et luctus felis. Curabitur nec congue mauris, euismod consectetur lorem.
      
      Nam pretium non mi nec porttitor. Sed massa dolor, vestibulum non eros vel, iaculis gravida turpis. Proin eu mauris sit amet nisl vehicula condimentum non vitae ligula. Nulla eget porttitor elit. Integer ut dui in ligula sodales auctor mollis id lorem. Pellentesque tristique nisl et lacinia venenatis. Nunc vitae elementum sapien. Phasellus ornare neque vel viverra sodales. Sed vel volutpat purus, id finibus ipsum.",
      user_id: User.first.id, 
      dates: [],
      schedule: IceCube::Schedule.new(Date.today, duration: 365.days),
      city: "Kuala Lumpur", 
      country: "Malaysia", 
      property_id: Property.find(rand(1..6)).id,  
      price: rand(150), 
      rating: rand(5), 
      guests: rand(15), 
      bedrooms: rand(6), 
      beds: rand(6), 
      bathrooms: rand(6)
    },
7 => {
      title: "Virginia Highlands Condo", 
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu lorem ac diam accumsan consequat quis et justo. Aliquam nec convallis ligula. Duis quis vulputate ante. Phasellus in sapien ex. Pellentesque rhoncus libero magna, vel pharetra ex hendrerit nec. Nullam metus sem, vestibulum vitae elementum sit amet, imperdiet non dolor. Vestibulum congue felis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed lobortis ligula. Sed tincidunt purus eget eleifend rutrum. Quisque ante velit, tincidunt vel egestas vel, maximus a ligula.
      
      Suspendisse sed ultricies neque. Vivamus pulvinar maximus erat, eu maximus enim. Nullam mollis arcu at lacus pellentesque, in condimentum neque hendrerit. Integer tincidunt, arcu in consectetur sollicitudin, libero ligula placerat urna, at porta ipsum odio nec sapien. Sed varius quis odio in tempor. Morbi nec faucibus sem. Nam condimentum mauris vel libero vehicula, nec malesuada ligula dictum. Suspendisse magna leo, pellentesque quis lectus blandit, vehicula suscipit sem. Sed vitae sodales lectus. Morbi quis commodo velit. Donec eu quam quis massa auctor vehicula eget quis lorem. Aenean ac leo aliquam, fringilla erat non, tempus diam. Proin vestibulum orci nisl, at semper mauris viverra ut. Cras bibendum eu mauris eget scelerisque. Nunc a viverra sem, et luctus felis. Curabitur nec congue mauris, euismod consectetur lorem.
      
      Nam pretium non mi nec porttitor. Sed massa dolor, vestibulum non eros vel, iaculis gravida turpis. Proin eu mauris sit amet nisl vehicula condimentum non vitae ligula. Nulla eget porttitor elit. Integer ut dui in ligula sodales auctor mollis id lorem. Pellentesque tristique nisl et lacinia venenatis. Nunc vitae elementum sapien. Phasellus ornare neque vel viverra sodales. Sed vel volutpat purus, id finibus ipsum.",
      user_id: User.first.id, 
      dates: [],
      schedule: IceCube::Schedule.new(Date.today, duration: 365.days),
      city: "Atlanta", 
      country: "USA", 
      property_id: Property.find(rand(1..6)).id, 
      price: rand(150), 
      rating: rand(5), 
      guests: rand(15), 
      bedrooms: rand(6), 
      beds: rand(6), 
      bathrooms: rand(6)
    },
8 => {
      title: "West University Estate", 
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu lorem ac diam accumsan consequat quis et justo. Aliquam nec convallis ligula. Duis quis vulputate ante. Phasellus in sapien ex. Pellentesque rhoncus libero magna, vel pharetra ex hendrerit nec. Nullam metus sem, vestibulum vitae elementum sit amet, imperdiet non dolor. Vestibulum congue felis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed lobortis ligula. Sed tincidunt purus eget eleifend rutrum. Quisque ante velit, tincidunt vel egestas vel, maximus a ligula.
      
      Suspendisse sed ultricies neque. Vivamus pulvinar maximus erat, eu maximus enim. Nullam mollis arcu at lacus pellentesque, in condimentum neque hendrerit. Integer tincidunt, arcu in consectetur sollicitudin, libero ligula placerat urna, at porta ipsum odio nec sapien. Sed varius quis odio in tempor. Morbi nec faucibus sem. Nam condimentum mauris vel libero vehicula, nec malesuada ligula dictum. Suspendisse magna leo, pellentesque quis lectus blandit, vehicula suscipit sem. Sed vitae sodales lectus. Morbi quis commodo velit. Donec eu quam quis massa auctor vehicula eget quis lorem. Aenean ac leo aliquam, fringilla erat non, tempus diam. Proin vestibulum orci nisl, at semper mauris viverra ut. Cras bibendum eu mauris eget scelerisque. Nunc a viverra sem, et luctus felis. Curabitur nec congue mauris, euismod consectetur lorem.
      
      Nam pretium non mi nec porttitor. Sed massa dolor, vestibulum non eros vel, iaculis gravida turpis. Proin eu mauris sit amet nisl vehicula condimentum non vitae ligula. Nulla eget porttitor elit. Integer ut dui in ligula sodales auctor mollis id lorem. Pellentesque tristique nisl et lacinia venenatis. Nunc vitae elementum sapien. Phasellus ornare neque vel viverra sodales. Sed vel volutpat purus, id finibus ipsum.",
      user_id: User.first.id, 
      dates: [],
      schedule: IceCube::Schedule.new(Date.today, duration: 365.days),
      city: "Houston", 
      country: "USA", 
      property_id: Property.find(rand(1..6)).id, 
      price: rand(150), 
      rating: rand(5), 
      guests: rand(15), 
      bedrooms: rand(6), 
      beds: rand(6), 
      bathrooms: rand(6)
    },
9 => {
      title: "Zilker Park Cottage", 
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu lorem ac diam accumsan consequat quis et justo. Aliquam nec convallis ligula. Duis quis vulputate ante. Phasellus in sapien ex. Pellentesque rhoncus libero magna, vel pharetra ex hendrerit nec. Nullam metus sem, vestibulum vitae elementum sit amet, imperdiet non dolor. Vestibulum congue felis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed lobortis ligula. Sed tincidunt purus eget eleifend rutrum. Quisque ante velit, tincidunt vel egestas vel, maximus a ligula.
      
      Suspendisse sed ultricies neque. Vivamus pulvinar maximus erat, eu maximus enim. Nullam mollis arcu at lacus pellentesque, in condimentum neque hendrerit. Integer tincidunt, arcu in consectetur sollicitudin, libero ligula placerat urna, at porta ipsum odio nec sapien. Sed varius quis odio in tempor. Morbi nec faucibus sem. Nam condimentum mauris vel libero vehicula, nec malesuada ligula dictum. Suspendisse magna leo, pellentesque quis lectus blandit, vehicula suscipit sem. Sed vitae sodales lectus. Morbi quis commodo velit. Donec eu quam quis massa auctor vehicula eget quis lorem. Aenean ac leo aliquam, fringilla erat non, tempus diam. Proin vestibulum orci nisl, at semper mauris viverra ut. Cras bibendum eu mauris eget scelerisque. Nunc a viverra sem, et luctus felis. Curabitur nec congue mauris, euismod consectetur lorem.
      
      Nam pretium non mi nec porttitor. Sed massa dolor, vestibulum non eros vel, iaculis gravida turpis. Proin eu mauris sit amet nisl vehicula condimentum non vitae ligula. Nulla eget porttitor elit. Integer ut dui in ligula sodales auctor mollis id lorem. Pellentesque tristique nisl et lacinia venenatis. Nunc vitae elementum sapien. Phasellus ornare neque vel viverra sodales. Sed vel volutpat purus, id finibus ipsum.",
      user_id: User.first.id, 
      dates: [],
      schedule: IceCube::Schedule.new(Date.today, duration: 365.days),
      city: "Austin", 
      country: "USA", 
      property_id: Property.find(rand(1..6)).id,  
      price: rand(150), 
      rating: rand(5), 
      guests: rand(15), 
      bedrooms: rand(6), 
      beds: rand(6), 
      bathrooms: rand(6)
    },
10 => {
      title: "Downtown Condo", 
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu lorem ac diam accumsan consequat quis et justo. Aliquam nec convallis ligula. Duis quis vulputate ante. Phasellus in sapien ex. Pellentesque rhoncus libero magna, vel pharetra ex hendrerit nec. Nullam metus sem, vestibulum vitae elementum sit amet, imperdiet non dolor. Vestibulum congue felis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed lobortis ligula. Sed tincidunt purus eget eleifend rutrum. Quisque ante velit, tincidunt vel egestas vel, maximus a ligula.
      
      Suspendisse sed ultricies neque. Vivamus pulvinar maximus erat, eu maximus enim. Nullam mollis arcu at lacus pellentesque, in condimentum neque hendrerit. Integer tincidunt, arcu in consectetur sollicitudin, libero ligula placerat urna, at porta ipsum odio nec sapien. Sed varius quis odio in tempor. Morbi nec faucibus sem. Nam condimentum mauris vel libero vehicula, nec malesuada ligula dictum. Suspendisse magna leo, pellentesque quis lectus blandit, vehicula suscipit sem. Sed vitae sodales lectus. Morbi quis commodo velit. Donec eu quam quis massa auctor vehicula eget quis lorem. Aenean ac leo aliquam, fringilla erat non, tempus diam. Proin vestibulum orci nisl, at semper mauris viverra ut. Cras bibendum eu mauris eget scelerisque. Nunc a viverra sem, et luctus felis. Curabitur nec congue mauris, euismod consectetur lorem.
      
      Nam pretium non mi nec porttitor. Sed massa dolor, vestibulum non eros vel, iaculis gravida turpis. Proin eu mauris sit amet nisl vehicula condimentum non vitae ligula. Nulla eget porttitor elit. Integer ut dui in ligula sodales auctor mollis id lorem. Pellentesque tristique nisl et lacinia venenatis. Nunc vitae elementum sapien. Phasellus ornare neque vel viverra sodales. Sed vel volutpat purus, id finibus ipsum.",
      user_id: User.first.id, 
      dates: [],
      schedule: IceCube::Schedule.new(Date.today, duration: 365.days),
      city: "Austin", 
      country: "USA", 
      property_id: Property.find(rand(1..6)).id, 
      price: rand(150), 
      rating: rand(5), 
      guests: rand(15), 
      bedrooms: rand(6), 
      beds: rand(6), 
      bathrooms: rand(6)
    },
11 => {
      title: "Decatur Townhouse", 
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu lorem ac diam accumsan consequat quis et justo. Aliquam nec convallis ligula. Duis quis vulputate ante. Phasellus in sapien ex. Pellentesque rhoncus libero magna, vel pharetra ex hendrerit nec. Nullam metus sem, vestibulum vitae elementum sit amet, imperdiet non dolor. Vestibulum congue felis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed lobortis ligula. Sed tincidunt purus eget eleifend rutrum. Quisque ante velit, tincidunt vel egestas vel, maximus a ligula.
      
      Suspendisse sed ultricies neque. Vivamus pulvinar maximus erat, eu maximus enim. Nullam mollis arcu at lacus pellentesque, in condimentum neque hendrerit. Integer tincidunt, arcu in consectetur sollicitudin, libero ligula placerat urna, at porta ipsum odio nec sapien. Sed varius quis odio in tempor. Morbi nec faucibus sem. Nam condimentum mauris vel libero vehicula, nec malesuada ligula dictum. Suspendisse magna leo, pellentesque quis lectus blandit, vehicula suscipit sem. Sed vitae sodales lectus. Morbi quis commodo velit. Donec eu quam quis massa auctor vehicula eget quis lorem. Aenean ac leo aliquam, fringilla erat non, tempus diam. Proin vestibulum orci nisl, at semper mauris viverra ut. Cras bibendum eu mauris eget scelerisque. Nunc a viverra sem, et luctus felis. Curabitur nec congue mauris, euismod consectetur lorem.
      
      Nam pretium non mi nec porttitor. Sed massa dolor, vestibulum non eros vel, iaculis gravida turpis. Proin eu mauris sit amet nisl vehicula condimentum non vitae ligula. Nulla eget porttitor elit. Integer ut dui in ligula sodales auctor mollis id lorem. Pellentesque tristique nisl et lacinia venenatis. Nunc vitae elementum sapien. Phasellus ornare neque vel viverra sodales. Sed vel volutpat purus, id finibus ipsum.",
      user_id: User.first.id, 
      dates: [],
      schedule: IceCube::Schedule.new(Date.today, duration: 365.days),
      city: "Decatur", 
      country: "USA", 
      property_id: Property.find(rand(1..6)).id, 
      price: rand(150), 
      rating: rand(5), 
      guests: rand(15), 
      bedrooms: rand(6), 
      beds: rand(6), 
      bathrooms: rand(6)
    },
12 => {
      title: "KL Sentral Highrise", 
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu lorem ac diam accumsan consequat quis et justo. Aliquam nec convallis ligula. Duis quis vulputate ante. Phasellus in sapien ex. Pellentesque rhoncus libero magna, vel pharetra ex hendrerit nec. Nullam metus sem, vestibulum vitae elementum sit amet, imperdiet non dolor. Vestibulum congue felis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed lobortis ligula. Sed tincidunt purus eget eleifend rutrum. Quisque ante velit, tincidunt vel egestas vel, maximus a ligula.
      
      Suspendisse sed ultricies neque. Vivamus pulvinar maximus erat, eu maximus enim. Nullam mollis arcu at lacus pellentesque, in condimentum neque hendrerit. Integer tincidunt, arcu in consectetur sollicitudin, libero ligula placerat urna, at porta ipsum odio nec sapien. Sed varius quis odio in tempor. Morbi nec faucibus sem. Nam condimentum mauris vel libero vehicula, nec malesuada ligula dictum. Suspendisse magna leo, pellentesque quis lectus blandit, vehicula suscipit sem. Sed vitae sodales lectus. Morbi quis commodo velit. Donec eu quam quis massa auctor vehicula eget quis lorem. Aenean ac leo aliquam, fringilla erat non, tempus diam. Proin vestibulum orci nisl, at semper mauris viverra ut. Cras bibendum eu mauris eget scelerisque. Nunc a viverra sem, et luctus felis. Curabitur nec congue mauris, euismod consectetur lorem.
      
      Nam pretium non mi nec porttitor. Sed massa dolor, vestibulum non eros vel, iaculis gravida turpis. Proin eu mauris sit amet nisl vehicula condimentum non vitae ligula. Nulla eget porttitor elit. Integer ut dui in ligula sodales auctor mollis id lorem. Pellentesque tristique nisl et lacinia venenatis. Nunc vitae elementum sapien. Phasellus ornare neque vel viverra sodales. Sed vel volutpat purus, id finibus ipsum.",
      user_id: User.first.id, 
      dates: [],
      schedule: IceCube::Schedule.new(Date.today, duration: 365.days),
      city: "Kuala Lumpur", 
      country: "Malaysia", 
      property_id: Property.find(rand(1..6)).id,  
      price: rand(150), 
      rating: rand(5), 
      guests: rand(15), 
      bedrooms: rand(6), 
      beds: rand(6), 
      bathrooms: rand(6)
    }
}

i = 1
until i == listings.length + 1 do
  listing = listings[i]
  Listing.create(title: listing[:title], description: listing[:description], user_id: listing[:user_id], dates: [], schedule: IceCube::Schedule.new(Date.today, duration: 365.days), city: listing[:city], country: listing[:country], property_id: listing[:property_id], price: listing[:price], rating: listing[:rating], guests: listing[:guests], bedrooms: listing[:bedrooms], beds: listing[:beds], bathrooms: listing[:bathrooms])
  i += 1
end

end 

# Property Subtypes:
  
# subtypes = ["Apartment", "Casa Particular", "Loft", "Serviced Apartment", "Bed and Breakfast", "Farm Stay", "Pousada", "Boutique Hotel", "Aparthotel", "Condohotel", "Hostel", "Hotel", "Nature Lodge", "Resort", "House", "Bungalow", "Cabin", "Chalet", "Cottage", "Cycladic House", "Dammuso", "Dome House", "Earth House", "Houseboat", "Hut", "Lighthouse", "Pousada", "Shepherd's Hut", "Tiny House", "Townhouse", "Trullo", "Villa", "Guesthouse", "Guest Suite", "Barn", "Boat", "Camper/RV", "Campsite", "Castle", "Cave", "Earth House", "Houseboat", "Hut", "Igloo", "Island", "Lighthouse", "Plane", "Tent", "Tipi", "Train"] 
  