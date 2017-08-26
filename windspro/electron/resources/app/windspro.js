(function () {
    document.getElementById("search").focus();

    function RunProgram(path, exe, parameters) {
        var child_process = require('child_process').execFile;

        var remote = require('electron').remote;
        argv = remote.getGlobal('sharedObject').argv;
        path = argv[0].substring(0, argv[0].length - exeName.length) + path;

        var options = { cwd: path };

        if (parameters.length == 0) {
            child_process(path + exe, options, function (err, data) { console.log(err); console.log(data.toString()); });
        } else {
            child_process(path + exe, parameters, options, function (err, data) { console.log(err); console.log(data.toString()); });
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

    String.prototype.replaceAll = function (search, replacement) {
        var target = this;
        return target.replace(new RegExp(search, 'g'), replacement);
    };

    app.controller('EmulatorController', ['$http', function ($http) {
        this.alpha = 0.7;
        this.changeBackground = function (image) {
            document.getElementById("main").style.backgroundImage = "url('file:///" + image.replaceAll('\\\\', '/') + "')";
        }
        this.saveBackground = function (image) {
            localStorage.setItem("background", image);
        }
        this.loadBackground = function () {
            var image = localStorage.getItem("background");
            if (image) {
                var fs = require('fs');
                fs.stat(image, (err) => {
                    if (err) {
                        
                    } else {
                        this.changeBackground(image);
                    }
                });
            }
        }
        this.loadBackground();
        this.changeAlpha = function(alpha){
            document.getElementById("table").style.backgroundColor = "rgba(255,255,255," + alpha + ")";
            document.getElementById("header").style.backgroundColor = "rgba(255,255,255," + (alpha + 0.2) + ")";
        }
        this.saveAlpha = function(alpha) {
            localStorage.setItem("alpha", alpha);
        }
        this.loadAlpha = function() {
            var alpha = localStorage.getItem("alpha");
            if (alpha) {
                this.alpha = parseFloat(alpha);
                this.changeAlpha(alpha);
            }
        }
        this.loadAlpha();
        this.openDialog = function () {
            const { dialog } = require('electron').remote
            dialog.showOpenDialog({ filters: [{ name: 'Images', extensions: ['jpg', 'png', 'gif'] },], properties: ['openFile'] }, (fileNames) => {
                if (fileNames) {
                    console.log(fileNames[0])
                    this.saveBackground(fileNames[0]);
                    this.changeBackground(fileNames[0]);
                } else {
                    console.log('Cancelar')
                }
            });
        }
        this.changeColor = function() {
            this.alpha = this.alpha + 0.05;
            if (this.alpha > 1) {
                this.alpha = 0.7;
            }
            this.saveAlpha(this.alpha);
            this.changeAlpha(this.alpha);
        }
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
            } else {
                var hasExt = this.emulators[index].extensions.indexOf(this.fileExt) != -1;
            }
            return (hasText && hasExt);
        }
        this.emulators = emulators;
        this.categories = categories;
        this.run = function (index) {
            if (this.fileName === '') {
                RunProgram(emuFolder + emulators[index].folder + '\\', emulators[index].executable, []);
            } else {
                if (emulators[index].hasOwnProperty('parameters')) {
                    RunProgram(emuFolder + emulators[index].folder + '\\', emulators[index].executable, emulators[index].parameters(this.fileName));
                } else {
                    RunProgram(emuFolder + emulators[index].folder + '\\', emulators[index].executable, [this.fileName]);
                }
            }
        }

        $http.get(updatesURL).then(response => {
            var updates_JSON = response.data;
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
    }]);

})();