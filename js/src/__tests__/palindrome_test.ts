import {describe, expect, test} from "@jest/globals";
import {isPalindrome} from "../palindrome";

describe("isPalindrome", () => {
    test("121 is true", () => {
        expect(isPalindrome(121)).toBeTruthy();
    })
    test("-121 is false", () => {
        expect(isPalindrome(-121)).toBeFalsy();
    })
    test("10 is false", () => {
        expect(isPalindrome(10)).toBeFalsy();
    })
    test("11 is true", () => {
        expect(isPalindrome(11)).toBeTruthy();
    })
})
