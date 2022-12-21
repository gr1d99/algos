const isPalindrome = (x: number | string): boolean => {
    const xToString = x?.toString();
    const xToArray = xToString.split('')
    const xArrayReversed = xToArray.reverse()
    const xReversedStr = xArrayReversed.join('')

    return xReversedStr === xToString
}

export { isPalindrome }
