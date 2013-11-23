# encoding: utf-8



Item.create!(:id=>1, :title=>'웹에이전시 홈페이지', :percentage=>70, :domain=>'s' ,:content=>'홈페이지 제작 의뢰와 각종 요청을 처리하는 회사의 얼굴')
Item.create!(:id=>2, :title=>'구인구직 홈페이지', :percentage=>20, :domain=>'s', :content=>'구인구직 홈페이지')
Item.create!(:id=>3, :title=>'뉴스 홈페이지', :percentage=>20, :domain=>'s', :content=>'뉴스 홈페이지')
Item.create!(:id=>4, :title=>'Anti-KB', :percentage=>90, :domain=>'s', :content=>'살인자 은행이 망하게 하는 목표를 가진 홈페이지')
Item.create!(:id=>5, :title=>'Yankee GO Home', :percentage=>70, :domain=>'s', :content=>'양키를 이땅에서 몰아내는 신성한 목표를 가진 홈페이지')

Profit.create!(:id=>1, :title=>'사이트 제작', :content=>'홈페이지제작 요청을 수행하고 그 에 해당하는 보수를 받음')
Profit.create!(:id=>2, :title=>'솔루션판매', :content=>'특정기능을 수행하는 홈페이지를 판매')
Profit.create!(:id=>3, :title=>'애드센스', :content=>'방문자에 따른 수익을 발생함')


