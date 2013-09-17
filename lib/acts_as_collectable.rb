module ActsAsCollectable
  extend ActiveSupport::Concern

  module ClassMethods
    def acts_as_collectable
      has_many :collectes,:as=>:collectable
      before_destroy { |record| record.collectes.destroy_all }
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
