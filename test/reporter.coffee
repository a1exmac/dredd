Spec = require('mocha').reporters.Spec
LCov = require('mocha-lcov-reporter')


module.exports = (runner, options) ->
  new Spec(runner, options)
  new LCov(runner, options) if process.env.COLLECT_COVERAGE


# everything what looks like lcov needs to go to ./lcov/mocha.info
# https://www.npmjs.com/package/lcov-parse
# http://stackoverflow.com/questions/28806209/how-to-change-the-format-of-the-lcov-report-executed-by-karma
# https://github.com/StevenLooman/mocha-lcov-reporter
# the same applies for bin/dredd
#
# https://github.com/benbria/coffee-coverage/blob/master/docs/HOWTO-travisci-and-coveralls.md
# https://github.com/benbria/coffee-coverage/blob/master/docs/HOWTO-jscoverage.md
