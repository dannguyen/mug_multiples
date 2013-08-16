module MugMultiples
  class SourceImage < MugMultiples::Image 

    def faces?
      faces.count > 0
    end

    def faces(opts={})
      detect_faces(opts).map{|face| MugMultiples::Face.new(face) }          
    end

    def detect_faces(opts={})
      detect_objects(:faces, opts)
    end

  end
end