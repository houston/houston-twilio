module Houston::Twilio
  class Configuration

    def sid(*args)
      @sid = args.first if args.any?
      @sid
    end

    def token(*args)
      @token = args.first if args.any?
      @token
    end

    def number(*args)
      @number = args.first if args.any?
      @number
    end

  end
end
