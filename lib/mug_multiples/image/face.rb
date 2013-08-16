module MugMultiples
  class Face < MugMultiples::Image 

    def eyes?
      eyes.count > 0
    end

    def eyes(opts={})
      eyes(opts)          
    end

    def detect_eyes(opts={})
      detect_objects(:eyes, opts)
    end

  end
end