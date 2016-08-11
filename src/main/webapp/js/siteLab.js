/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var unitTypes = ['Temperature', 'Currency', 'Volume', 'Mass'];
            var typesSpecific = {'Temperature': ['Fahrenheit', 'Celsius'],
                'Currency': ['USD', 'Pounds'],
                'Volume': ['Cup', 'Ounce'],
                'Mass': ['Lb', 'Kg']
            };


            $.each(unitTypes, function (i) {
                $('#dropTypes').append('<li><a style="cursor:pointer" id="' + unitTypes[i] + '">' + unitTypes[i] + '</a></li>');
                $("a").on("click", function () {
                    var unitz = this.id;

                    document.getElementById("unitType").value = unitz;

                });
            });




            $('#dropTypes').on('click', 'li a', function () {
                $('#dropTypesSpecific').html('');
                var showSpecificTypes = typesSpecific[$(this).text()];
                $.each(showSpecificTypes, function (i) {
                    $('#dropTypesSpecific').append('<li><a style="cursor:pointer" id="' + showSpecificTypes[i] + '">' + showSpecificTypes[i] + '</a></li>');
                });
                $("a").on("click", function () {
                    var unit = this.id;

                    document.getElementById("unitShower").innerHTML = "How many " + unit.toString() + "(s) would you like to convert?";
                    document.getElementById("unitShowerz").value = unit;

                });
            });
            $('#dropTypes').on('click', 'li a', function () {
                $('#dropTypesSpecifics').html('');
                var showSpecificTypes = typesSpecific[$(this).text()];
                $.each(showSpecificTypes, function (i) {
                    $('#dropTypesSpecifics').append('<li><a style="cursor:pointer" id="' + showSpecificTypes[i] + '">' + showSpecificTypes[i] + '</a></li>');
                });
                $("a").on("click", function () {
                    var units = this.id;

                    document.getElementById("unitShowers").innerHTML = "You are converting to " + units.toString() + "(s).";
                    document.getElementById("unitShowerzez").value = units;

                });
            });
