import {describe, expect, test} from "@jest/globals";
import {romanToInt} from "../romanToInt";

describe("romanToInt", () => {
    test("III = 3", () => {
        expect(romanToInt("III")).toEqual(3);
    })
    test("LVIII = false", () => {
        expect(romanToInt("LVIII")).toEqual(58);
    })
    test("MCMXCIV = 1994", () => {
        expect(romanToInt("MCMXCIV")).toEqual(1994);
    })
})
