const { glob } = require("glob")
const { readFile, writeFile } = require("fs/promises")

const main = async () => {
  const dartFilePaths = await glob("lib/**/*.dart", {
    ignore: "**/__generated__/**",
  })

  const promises = dartFilePaths.map((filePath) => {
    return readFile(filePath, "utf-8")
  })

  const dartFiles = await Promise.all(promises)

  const textsArrays = dartFiles.map((file) => {
    const regExp = /'([^']+)'\.i18/g
    const matches = file.matchAll(regExp)
    const texts = Array.from(matches).map(([, text]) => {
      return text
    })
    return texts
  })

  const duplicatedTexts = textsArrays
    .flatMap((t) => t)
    .filter((t) => !t.includes("$"))

  const texts = [...new Set(duplicatedTexts)]

  const i18nText = await readFile("assets/i18n.json", "utf-8")

  const i18nObjects = JSON.parse(i18nText)

  const i18nTexts = i18nObjects.map((record) => {
    return record.ja
  })

  const extendedTexts = texts.filter((text) => {
    return !i18nTexts.includes(text)
  })

  const extendedI18nObjects = extendedTexts.map((text) => {
    return {
      ja: text,
      en: "",
      fr: "",
      it: "",
      vi: "",
      zh_cn: "",
      zh_tw: "",
    }
  })

  const updatedI18nObject = i18nObjects.map((record) => {
    return {
      ...record,
      ja: record.ja.trim(),
      en: record.en?.trim() ?? "",
      fr: record.fr?.trim() ?? "",
      it: record.it?.trim() ?? "",
      vi: record.vi?.trim() ?? "",
      zh_cn: record.zh_cn?.trim() ?? "",
      zh_tw: record.zh_tw?.trim() ?? "",
    }
  })

  const draftI18nObjects = [...updatedI18nObject, ...extendedI18nObjects]

  draftI18nObjects.sort((a, b) => {
    return a.ja.localeCompare(b.ja, "ja")
  })

  const draftI18nText = JSON.stringify(draftI18nObjects, null, 2)

  await writeFile("assets/i18n.json", draftI18nText)
}

main().catch((error) => {
  throw error
})
