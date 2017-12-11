module ActiveAdminSidekiqStats

  class Panel

    def self.inject
      klass = new
      klass.inject!
    end

    def inject!
      html = Arbre::Context.new do
      panel "Sidekiq Stats" do
        begin
          sidekiq = JSON.parse(::Sidekiq::Stats.new.to_json)
          stats = sidekiq.fetch("stats", Hash.new)
            div style: "display: flex; justify-content: center; align-items: center" do
              stats.each do |process_name, process_value|
                div style: "display: flex; flex:1; justify-content: center; align-items: center; flex-direction: column" do
                  h1 process_value
                  span process_name
                end
              end
            end
        rescue Redis::CannotConnectError
          h1 "Redis Connection Failed"
        end
      end
    end
    html.to_s
  end

  private

  def container_style
    "display: flex; justify-content: center; align-items: center"
  end

  def item_style
    "flex:1; justify-content: center;"
  end


  end

end