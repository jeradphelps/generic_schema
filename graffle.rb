# run: ruby graffle.rb
# open the file with omni graffle
# choose "hierarchical"
# select all
# In the menu bar, there is a line options dropdown.  
  # click, change the line head to chicken feet.
# In the Mac Menu, Check View >> Page Breaks

# To add some text to a given model, add a class method called
  # self.erd_description to the model.  It should return a string, which
  # will be placed on the diagram.

# To Change size:
  # In the mac menu, check inspectors >> canvas >> size

# To change layout
  # In the mac menu, check inspectors >> canvas >> Diagram Layout
  # Choose what you like (Force Directed)
  # A high line length with a low shape repulsion seems to organize things nicely

require "./config/environment"
Rails.application.eager_load!

require "rails_erd/diagram/graphviz"

class RailsERD::Diagram::Graphviz
  # Overwrite template in order to replace HTML labels with
  # plain text graphviz "record" labels for Omnigraffle compatibility - 
  # see http://www.graphviz.org/doc/info/shapes.html for more on record labels.
  OMNIGRAFFLE_NODE_LABEL_TEMPLATE_1 = ERB.new("<%= entity.name %>|<%= entity.model.erd_description if entity.model.respond_to?('erd_description') %><% if attributes.any? %>| { <% attributes.each do |attribute| %> <%= attribute %> (<%= attribute.type %>) <%=\"\n\"%> <% end %> } <% end %>", nil, "<>")

  def entity_options(entity, attributes)
    entity_style(entity, attributes).merge :label => OMNIGRAFFLE_NODE_LABEL_TEMPLATE_1.result(binding)
  end
end

RailsERD.options.filetype = "dot"
RailsERD::Diagram::Graphviz.create :filename => "diagrams/"+DateTime.now.to_date.strftime("%Y-%m-%d")