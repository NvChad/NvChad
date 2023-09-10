const { default: axios } = require("axios");

const fs = require("node:fs");
const path = require("node:path");

(async () => {
	// clean up
	const folderNames = ["CFX-NATIVE", "GTAV", "RDR3"];
	for (const folderName of folderNames) {
		for (const file of fs.readdirSync(`./Lua/natives/${folderName}`)) {
			if (file.endsWith(".lua")) {
				fs.unlinkSync(path.join(`./Lua/natives/${folderName}`, file));
			}
		}
	}

	// build
	await buildCFX();
	await buildFiveM();
	await buildRedM();
})();

async function buildCFX() {
	const { data } = await axios.get("https://runtime.fivem.net/doc/natives_cfx.json");

	nativesToFile("CFX-NATIVE", "CFX", "https://docs.fivem.net/natives/?_", Object.values(data.CFX));
}

async function buildFiveM() {
	// GTA Specific Natives
	const { data } = await axios.get("https://runtime.fivem.net/doc/natives.json");
	
	for (const [categoryName, categoryNatives] of Object.entries(data)) {
		nativesToFile("GTAV", categoryName, "https://docs.fivem.net/natives/?_", Object.values(categoryNatives));
	}
}

async function buildRedM() {
	// RDR Specific Natives
	const { data } = await axios.get("https://alloc8or.re/rdr3/nativedb/static/natives.json");

	for (const [categoryName, categoryNatives] of Object.entries(data)) {
		nativesToFile("RDR3", categoryName, "https://alloc8or.re/rdr3/nativedb/?n=", Object.values(categoryNatives));
	}
}

function toNative({
	hash,
	name,
	params = [],
	results,
	examples = [],
	description = "This native does not have an official description.",
	repoBaseUrl,
	resultsDescription = ""
}) {
	let native = ``;

	const split = description.split("\n");
	native += `---` + split.join("\n---") + "\n";

	// Native Documentation
	native += `---[Native Documentation](${repoBaseUrl}${hash})\n`;

	for (const example of Object.values(examples.filter((e) => e.lang === "lua"))) {
		native += `---Example: \n---\`\`\`${example.code.split("\n").join("\n---")}\`\`\`\n`;
	}

	const parsedParams = [];
	for (const param of params) {
		parsedParams.push(param.name);

		native += `---@param ${param.name} ${toLuaType(param.type)} ${param.description || ""}\n`;
	}

	if (results && results !== "void") {
		native += `---@return ${toLuaType(results)} retval ${resultsDescription}\n`;
	}

	native += `function ${name && !name.replace("_", "").startsWith("0x") ? transformToCamelCase(name) : `N_${hash}`}(${parsedParams.join(", ")}) end\n\n`;

	return native;
}

function toLuaType(type) {
	// FiveM object handle and object (like tables) has the same type
	// but with different capitalization
	if (type === "Object") {
		return "number";
	}

	type = type.toLowerCase().replaceAll("*", "");

	switch (type) {
		case "hash":
			return "number | string";
		case "float":
			return "number";
		case "long":
			return "number";
		case "int":
			return "number";
		case "bool":
			return "boolean";
		case "char":
			return "string";
		case "func":
			return "function";
		case "ped":
			return "number";
		case "player":
			return "number";
		case "vehicle":
			return "number";
		case "object":
			return "table";
		case "entity":
			return "number";
		case "cam":
			return "number";
		default:
			return type;
	}
}

function nativesToFile(folderName, fileName, repoBaseUrl, natives) {
	appendToFile(folderName, fileName, "---@meta\n\n");

	for (const { name, ...native } of Object.values(natives)) {
		const parsedNative = toNative({ repoBaseUrl, name, ...native });
		appendToFile(folderName, fileName, parsedNative);

		for (const alias of (native.aliases || [])) {
			const parsedNativeAlias = toNative({ repoBaseUrl, name: alias, ...native });
			appendToFile(folderName, fileName, parsedNativeAlias);
		}
	}
}

function appendToFile(folderName, fileName, content) {
	fs.writeFileSync(path.join(__dirname, "Lua", "natives", folderName, `${fileName}.lua`), content, { flag: 'a' });
}

function transformToCamelCase(string) {
	// Split the words by underscores
	const words = string.split('_');
	
	// Convert the first letter of each word to uppercase
	const capitalizedWords = words.map((word) => {
	  return word.charAt(0).toUpperCase() + word.slice(1).toLowerCase();
	});
	
	// Join the capitalized words without spaces
	return capitalizedWords.join('');
}
