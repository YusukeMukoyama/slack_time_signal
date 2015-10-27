#!/usr/bin/env ruby
require "slack"

Slack.configure do |config|
	config.token = 'xoxp-13214332212-13216699014-13214379492-b38d1f316d'
end

text = case Time.now.hour
	when 10 then '10時: 今日もがんばりましょー'
	when 11 then '11時: そろそろ昼飯？'
	when 12 then '12時: 正午だよー'
	when 13 then '13時: ねむい？？'
	when 14 then '14時: コーヒーでも飲んで'
	when 15 then '15時: いい感じ！！'
	when 16 then '16時: 今日はあとちょっと！！'
	when 17 then '17時: がんば！！'
	when 18 then '18時: のみにでも行くかー！'
end

Slack.chat_postMessage(text: text , channel: '#my_bot')
