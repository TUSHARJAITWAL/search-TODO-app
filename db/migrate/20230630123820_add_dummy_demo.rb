class AddDummyDemo < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      dir.up do
        10.times do |i|
          puts "Creating Demo #{i+1}"
          Demo.create(
            name: "Demo Name #{i+1}",
            description: "Demo description #{i+1}"
          )
        end
      end
      dir.down do
        10.times do |i|
          puts "Deleting Demo #{i+1}"
          Demo.find_by(name: "Demo Name #{i+1}").destroy 
        end
      end
    end
  end
end