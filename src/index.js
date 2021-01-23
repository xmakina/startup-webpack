import { sum, subtract } from './calculator/calc'

function component () {
  const element = document.createElement('div')

  const meaningOfLife = subtract(sum(4, 2), -36)
  const value = `Hello World! The meaning of life if ${meaningOfLife}`
  element.innerHTML = value

  return element
}

document.body.appendChild(component())
