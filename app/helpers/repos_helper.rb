module ReposHelper
	def contents_tree(directory)
		if directory["type"] == "dir"
			render partial: "list_subs", :locals => {:sub_directory => directory}
		else
			link_to directory["name"], directory["url"]
		end
	end
end





