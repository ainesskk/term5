function outputList(type) {
    document.write("<" + type + "l>");
    for (let i = 1; i < outputList.arguments.length; i+=2) {
        document.write(`<li><a href="${outputList.arguments[i]}">
            ${outputList.arguments[i+1]}</a></li>`);
    }
    document.write("</" + type + "l>")
}