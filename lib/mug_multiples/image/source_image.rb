module MugMultiples
  class SourceImage < MugMultiples::Image 

    def faces?
      faces.count > 0
    end

    def faces(opts={})
      detect_faces(opts).map{|face| 
        # make a new CvMat object to pass to Face.new
        face_cv = cv_image_object.sub_rect(face)

        MugMultiples::Face.new(face) 
      }          
    end

    def detect_faces(opts={})
      detect_objects(:faces, opts)
    end

  end
end