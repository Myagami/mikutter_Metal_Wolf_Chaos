# -*- coding: utf-8 -*-

Plugin.create(:Metal_Wolf_Chaos) do
  command(:metal_wolf_chaos,
          name: '大統領',
          condition:Plugin::Command[:Editable],
          visible:true,
          role: :postbox) do |opt|
    tweet(Service.primary,"Ok! Let\'s! Peryyyyyyyyy!")
  end
  
  def tweet(serv,texts)
    serv.update(:message => texts)
  end

end
