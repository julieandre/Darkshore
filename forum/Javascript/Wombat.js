// PLACEMENT : Sur toutes les pages

// Multiple types de fenêtres, by Glycorne

var Wombat = (function() {
    "use strict";

    // Fonction pour vérifier l'identifiant utilisateur
    function getUserId() {
        const cookieData = my_getcookie("fa_" + location.host.replace(/\./g, "_") + "_data") || "";
        const match = cookieData.match(/"userid";(?:s:[0-9]+:"|i:)([0-9]+)/) || [0, -1];
        return parseInt(match[1]) === -1;
    }

    const defaultOptions = {
        excludes: [],
        allowGuests: false,
        selector: "#wombat",
        displayOnLoad: "",
        overlay: true,
        overlayClass: "wombat-overlay",
        drawerClass: "wombat-aside",
        afterLoad: function() {}
    };

    function Wombat(options) {
        if (!new.target) {
            throw "Wombat() doit être utilisé comme constructeur et déclaré avec le mot-clef new.";
        }

        // Dépendances
        this.dependencies = {
            switcheroo: typeof Switcheroo !== "undefined"
        };

        // Options du composant
        this.options = Object.assign({}, defaultOptions, options);

        // Vérification si les invités sont autorisés ou non
        if (!this.options.allowGuests && getUserId()) {
            return;
        }

        // Gestion de la fin de la transition CSS
        const transitionDiv = document.createElement("div");
        this.transitionEnd = transitionDiv.style.WebkitTransition ? "webkitTransitionEnd" :
                            transitionDiv.style.OTransition ? "oTransitionEnd" : "transitionend";

        // Ajout des événements de clic
        this.onClick();
    }

    // Méthode pour construire le DOM du composant
    Wombat.prototype.build = function(type) {
        const fragment = document.createDocumentFragment();

        this.aside = document.createElement("aside");
        this.aside.className = this.options.drawerClass;
        this.aside.appendChild(this.content);

        fragment.appendChild(this.aside);

        if (this.options.overlay) {
            this.overlay = document.createElement("div");
            this.overlay.className = this.options.overlayClass;
            fragment.appendChild(this.overlay);
        }

        document.body.appendChild(fragment);

        if (typeof this.options.afterLoad === "function") {
            this.options.afterLoad(this.aside, this.overlay);
        }

        window.getComputedStyle(this.aside).height; // Force le recalcul du style
        
        document.dispatchEvent(new Event("wombat_load"));
        
        this.aside.classList.add("open");
        this.aside.classList.add(type);
        this.overlay.classList.add("open");
    };

    // Méthode pour lier les événements
    Wombat.prototype.binds = function() {
        if (this.overlay) {
            this.overlay.addEventListener("click", this.close.bind(this));
        }
    };

    // Méthode de gestion des clics sur les liens
    Wombat.prototype.onClick = function() {
        const excludeSelectors = this.options.excludes.join(",");
        const profileSelector = excludeSelectors ? `a[href^="/u"]:not(${excludeSelectors})` : 'a[href^="/u"]';

        document.querySelectorAll(profileSelector).forEach(link => {
            link.addEventListener("click", event => {
                event.stopPropagation();
                event.preventDefault();
                const userId = new URL(link.href).pathname.replace(/\D/g, "");
                this.load(`/u${userId}`).then(() => this.open("profile"));
            });
        });

        const groupsSelector = '.qeel a[href^="/g"]';

        document.querySelectorAll(groupsSelector).forEach(link => {
            link.addEventListener("click", event => {
                event.stopPropagation();
                event.preventDefault();
                const groupId = new URL(link.href).pathname.replace(/\D/g, "").concat("-");
                this.load(`/g${groupId}`).then(() => this.open("group"));
            });
        });

        document.querySelector('#map').addEventListener("click", event => {
            event.stopPropagation();
            event.preventDefault();
            this.load('https://glytest.forumactif.com/h1-map').then(() => this.open("map"));
        });

        document.querySelectorAll('.wombat-mp a').forEach(link => {
            link.addEventListener("click", event => {
                event.stopPropagation();
                event.preventDefault();
                this.load(link.href).then(() => this.open("contact"));
            });
        });
    };

    // Méthode pour charger les données asynchrones
    Wombat.prototype.load = function(url) {
        const selector = this.options.selector;

        return fetch(url)
            .then(response => response.text())
            .then(html => {
                const parser = new DOMParser();
                const doc = parser.parseFromString(html, "text/html");
                const content = doc.querySelector(selector);
                
                if (!content) {
                    throw new Error("Contenu introuvable");
                }

                return content;
            })
            .catch(error => {
                console.error(error);
            })
            .then(content => {
                if (this.options.displayOnLoad) {
                    const isVisible = content.offsetWidth > 0 && content.offsetHeight > 0;
                    if (!isVisible) {
                        content.style.display = this.options.displayOnLoad;
                    }
                }

                const fragment = document.createDocumentFragment();
                fragment.appendChild(content);
                this.content = fragment;
            });
    };

    // Méthode pour fermer le composant
    Wombat.prototype.close = function() {
        this.aside.classList.remove("open");
        this.overlay.classList.remove("open");
        this.clear(this.aside, this.overlay);
    };

    // Méthode pour nettoyer les éléments du DOM
    Wombat.prototype.clear = function(...elements) {
        elements.forEach(element => {
            element.addEventListener(this.transitionEnd, function() {
                if (element.parentNode) {
                    element.parentNode.removeChild(element);
                }
            });
        });
    };

    // Méthode pour ouvrir le composant
    Wombat.prototype.open = function(type) {
        this.build(type);
        this.binds();
    };

    return Wombat;
})();