module Dict
	def Dict.new(num_buckets=256)
		aDict = []
		(0..num_buckets).each do |i|
			aDict.push([])
		end
	end

	return aDict
end