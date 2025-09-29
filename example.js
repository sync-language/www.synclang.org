const thing = require("./goon.js");
thing().then((instance) => {
    instance.ccall("testExportedFunction");
});