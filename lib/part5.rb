class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s

    attr_reader attr_name
    attr_reader attr_name + "_history"

    class_eval %Q{
      def #{attr_name}=(value)
        @#{attr_name}_history = [] if @#{attr_name}_history.nil?
        @#{attr_name}_history << @#{attr_name}
        @#{attr_name} = value
      end
    }
  end
end