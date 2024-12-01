Feature: ui test

  Scenario Outline: <type>
    * def webUrlBase = karate.properties['web.url.base']
    * configure driver = { type: 'safari'}

    * driver webUrlBase + '/search?q=google'
#    * input('textarea[name=q]','hello namaste')
#    * submit().input('#someform', Key.ENTER)
#    * match text('#placeholder') == 'After'

    Examples:
      | type         |
      | safari       |
#| chromedriver |
#| geckodriver  |
#| safaridriver |