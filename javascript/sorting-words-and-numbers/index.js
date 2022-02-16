const readline = require('readline')

const reader = readline.createInterface({
  input: process.stdin
})

reader.on('line', line => {
  const splitted = line.split(' ')
  const sorted = splitted.reduce((acc, cur) => {
    /\d+/.test(cur) ? acc.num.push(cur) : acc.str.push(cur)
    return acc
  }, { str: [], num: [] }, splitted)
  console.info(sorted)
})
