/**
 * @param {string} s
 * @return {number}
 */
type Roman = "I" | "V" | "X" | "L" | "C" | "D" | "M"
const RomanLookupTb: {[key in Roman]: number} = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000
}
type SubtractiveRoman = Extract<Roman, "I" | "X" | "C">
const SubtractiveLookupTb: {[key in SubtractiveRoman]: Roman[]} = {
    I: ["V", "X"],
    X: ["L", "C"],
    C: ["D", "M"]
}
const romanToInt = (s: string): number => {
    let result: number;
    const romanArray = s.split('')
    let tempResult = 0
    const romanArrayLength = romanArray.length
    const romanArrayLastIndex = romanArrayLength - 1
    let skipCurrentIter = false
    let skipped = false
    romanArray.forEach((roman, index) => {
        if (skipCurrentIter && skipped) {
            skipped = false
            skipCurrentIter = false
        }

        if (skipCurrentIter && !skipped) {
            skipped = true
            return
        }

        const nextIndex = index + 1
        const value = RomanLookupTb[roman as Roman]
        const subtractive = SubtractiveLookupTb?.[roman as SubtractiveRoman]
        const isSubtractive = !!subtractive

        if (isSubtractive && nextIndex <= romanArrayLastIndex) {
            const nextRoman = romanArray[nextIndex]
            const indexOfRomanToBeSubtractedFrom = subtractive?.indexOf(nextRoman as SubtractiveRoman)
            if (indexOfRomanToBeSubtractedFrom !== -1) {
                const romanToBeSubtractedFrom = subtractive[indexOfRomanToBeSubtractedFrom]
                const romanValue = RomanLookupTb[romanToBeSubtractedFrom]
                const sum = romanValue - value
                tempResult += sum
                skipCurrentIter = true
            }
        }

        if (!skipCurrentIter) {
            tempResult += value
        }
    })

    result = Number(tempResult)

    return result
}

export { romanToInt };
