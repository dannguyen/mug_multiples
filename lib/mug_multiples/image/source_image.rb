module MugMultiples
  class SourceImage < MugMultiples::Image 

    def faces?
      faces.count > 0
    end

    def faces(opts={})
      detect_faces(opts).map{|face_box| 
        # make a new CvMat object to pass to Face.new

        spawn_image(face_box, Face)
      }          
    end

    def detect_faces(opts={})
      detect_objects(:faces, opts)
    end

  end
end