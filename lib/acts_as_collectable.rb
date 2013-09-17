module ActsAsCollectable
  extend ActiveSupport::Concern

  module ClassMethods
    def acts_as_collectable
      pp :acts_as_collectable
      has_many :collects,:as=>:collectable
      before_destroy { |record| record.collects.destroy_all }
      include ActsAsCollectable::LocalInstanceMethods
      extend ActsAsCollectable::SingletonMethods
    end
  end

  # This module contains class methods
  module SingletonMethods
    
  end

  module LocalInstanceMethods
    
  end
end

ActiveRecord::Base.send(:include, ActsAsCollectable)
