function outputList(type, ...rest) {
    document.write("<" + type + "l>");
    for (let i = 0; i < rest.length; i+=2) {
        document.write(`<li><a href="${rest[i]}">
            ${rest[i+1]}</a></li>`);
    }
    document.write("</" + type + "l>")
}