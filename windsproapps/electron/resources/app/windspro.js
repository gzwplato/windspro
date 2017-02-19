(function () {
    document.getElementById("search").focus();

    function loadJSON(file, callback) {
        var xobj = new XMLHttpRequest();
        xobj.overrideMimeType("application/json");
        xobj.open('GET', file, true);
        xobj.onreadystatechange = function () {
            if (xobj.readyState == 4 && xobj.status == "200") {
                callback(xobj.responseText);
            }
        };
        xobj.send(null);
    }

    function RunProgram(path, exe, file) {
        var child_process = require('child_process').execFile;

        var remote = require('electron').remote;
        argv = remote.getGlobal('sharedObject').argv;
        path = argv[0].substring(0, argv[0].length - exeName.length) + path;

        var options = { cwd: path };

        if (file === '') {
            child_process(path + exe, options, function (err, data) { console.log(err); console.log(data.toString()); });
        } else {
            child_process(path + exe, [file], options, function (err, data) { console.log(err); console.log(data.toString()); });
        }
    }

    function OpenFolder(path) {
        const shell = require('electron').shell;
        shell.showItemInFolder(path);
    }

    function OpenSubFolder(path) {
        var remote = require('electron').remote;
        argv = remote.getGlobal('sharedObject').argv;

        OpenFolder(argv[0].substring(0, argv[0].length - exeName.length) + path);
    }

    function OpenURL(url) {
        const shell = require('electron').shell;
        shell.openExternal(url);
    }

    var app = angular.module('windspro', []);

    function Search(s, index) {
        hasAll = true;
        for (var i = 0; i < s.length; i++) {
            hasAll = (emulators[index].name.toLowerCase().indexOf(s[i]) != -1) || (emulators[index].category.toLowerCase().indexOf(s[i]) != -1);
            if (!hasAll) {
                return false;
            }
        }
        return hasAll;
    }

    var remote = require('electron').remote,
        argv = remote.getGlobal('sharedObject').argv;
    fileName = '',
        fileExt = '';

    if (argv.length > 1) {
        fileName = argv[1];
        fileExt = '(' + fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length) + ')';
    }

    app.controller('EmulatorController', function () {
        this.fileName = fileName;
        this.fileExt = fileExt;
        this.closeFileName = function () {
            this.fileName = '';
            this.fileExt = '';
        }
        this.searchText = '';
        this.search = function (text) {
            this.searchText = text;
        }
        this.searchFocusedDirty = function () {
            return this.searchText != '';
        }
        this.isVisible = function (index) {
            if (this.searchText == '') {
                var hasText = true;
            } else {
                var hasText = Search(this.searchText.toLowerCase().split(" "), index);
            }
            if (this.fileExt == '') {
                var hasExt = true;
            } {
                var hasExt = this.emulators[index].extensions.indexOf(this.fileExt) != -1;
            }
            return (hasText && hasExt);
        }
        this.emulators = emulators;
        this.categories = categories;
        this.run = function (index) {
            RunProgram(emuFolder + emulators[index].folder + '\\', emulators[index].executable, this.fileName);
        }

        loadJSON(updatesURL, function (response) {
            var updates_JSON = JSON.parse(response);
            if (updates_JSON.version != version) {
                var dialog = document.querySelector('#dialog');
                if (!dialog.showModal) {
                    dialogPolyfill.registerDialog(dialog);
                }
                dialog.querySelector('button')
                    .addEventListener('click', function () {
                        OpenURL(updates_JSON.url);
                        dialog.close();
                    });
                dialog.showModal();
            }
        });

    });
})();