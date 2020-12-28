;; ---------------------------
;; Hoare: A blue dark color theme
;; Author: Andres Urbano Guillermo Gerardo
;; https://github.com/GuillermoGAndres/
;; ----------------------------

(unless (>= emacs-major-version 24)
  (error "requires Emacs 24 or later."))

(deftheme hoare
  "A blue dark color theme :p")
  

(let ((hoare-background        "#252727")
      (hoare-darker-background "#13182D")
      (hoare-rich-black        "#161A1F")
      (hoare-mid-gray          "#666666")
      (hoare-light-gray        "#999999")
      (hoare-foreground        "#E8E8E8")
      (hoare-warning           "#EE799F")
      (hoare-light-blue        "#9FB3C2")
      (hoare-bluegray          "#4F5A63")
      (hoare-blue-green        "#8AB8A2")
      (hoare-yellow            "#C7AF3F")
      (hoare-light-yellow      "#FFE792")
      (hoare-yellow-white      "#FAFFDB")
      (*mode-line-bg*           "#CCCCCC")
      (*mode-inactive-bg*       "#222")
      (*mode-line-fg*           "#333333")
      (*mode-inactive-fg*       "#FFF"))
  (custom-theme-set-faces
   'hoare

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,hoare-darker-background :foreground ,hoare-foreground))))
   `(cursor  ((t (:background ,hoare-foreground))))
   `(hl-line ((t (:background ,hoare-darker-background))))
   `(mode-line ((t (:background, *mode-line-bg* :foreground, *mode-line-fg*))))
   `(mode-line-inactive ((t (:background, *mode-inactive-bg* :foreground, *mode-inactive-fg*))))
   `(mode-line ((t (:box nil :foreground ,hoare-mid-gray :background ,hoare-foreground))))
   `(fringe ((t (:background ,hoare-darker-background))))
   ;; Dir-ed search prompt
   `(minibuffer-prompt ((default (:foreground ,hoare-foreground))))
   ;; Highlight region color
   ;`(region ((t (:foreground ,hoare-light-yellow :background ,hoare-rich-black))))

   ;; ---------------- Code Highlighting ---------------
   ;; Color verde muy agradable : hoare-blue-green        "#8AB8A2" o #B4EEB4
   ;; Agradable color metal: hoare-light-blue
   ;; Builtin
   '(font-lock-builtin-face ((t (:foreground "#8AB8A2"))))
   ;; Constants
   '(font-lock-constant-face ((t (:foreground "#F0DFAF")))) ;Contastantes amarillas
   ;; Comments
   '(font-lock-comment-face ((t (:foreground "#4F5A63")))) ; Comentarios de en linea verde
   '(font-lock-doc-face ((t (:foreground "#86B187")))) ;Docsting gris chido #9FB3C2 or verde chido #86B187 o verde con un tono poco nitido #8AB8A2.
   ;; Function names
   '(font-lock-function-name-face ((t (:foreground "#F28B86")))) ;metodos color salmon para las funcines
   ;;'(font-lock-function-name-face ((t (:foreground "#FAFFDB")))) ;metodos for python color amarillo para las funcines
   ;; Keywords
   '(font-lock-keyword-face ((t (:foreground "#8AC6F2" :weight normal)))) ;Color azul muy chido.       
   ;; Strings
   '(font-lock-string-face ((t (:foreground "#D1907F")))) ;Cadenas naranjas
   ;; Variables
   '(font-lock-variable-name-face ((t (:foreground "#9FB3C2")))) ;Color verde chido #8AB8A2 or gris #9FB3C2, para los nombre de los tipos.
   '(font-lock-type-face ((t (:foreground "#F0DFAF")))) ; Clases y types amarillas
   `(font-lock-warning-face ((t (:foreground ,hoare-warning :bold t))))

   ;; ---------------- Package Specific Stuff -----------
   ;; Powerline
   `(powerline-active1 ((t (:background "gray30" :foreground ,hoare-rich-black))))
   `(powerline-active2 ((t (:background "gray35" :foreground ,hoare-rich-black))))
   `(powerline-inactive1 ((t (:background "gray10" :foreground ,hoare-mid-gray))))
   `(powerline-inactive2 ((t (:background "gray15" :foreground ,hoare-mid-gray))))

   ;; ---------------------------Company ---------------------------------------------------------
   '(company-preview ((t (:background "#373B41" :foreground "wheat"))))
   '(company-preview-common ((t (:inherit company-preview :foreground "wheat"))))
   '(company-tooltip-common ((t (:foreground "#F0DFAF")))) ;Color de las letras en coincidencia en pop
   '(company-tooltip-selection ((t (:background "#7B7B7B")))) ;Color de seleccion resaltado.
   '(company-tooltip ((t (:background "#13182D" :foreground "#C5C8C6")))) ;Color fondo y letra
   '(company-scrollbar-bg ((t (:background "#282A2E")))) ;Color de scrollbar
   '(company-scrollbar-fg ((t (:background "#373B41"))))
   '(company-tooltip-annotation ((t (:foreground "#F0DFAF"))))

   ;; ----------------------------Helm-----------------------------------------
   '(helm-source-header ((t (:extend t :foreground "#F0DFAF" :weight bold))))
   '(helm-match ((t (:extend t :foreground "#F0DFAF"))))
   '(helm-selection ((t (:extend t :background "gray37" :distant-foreground "black"))))

   ;; --------------------------Tabs-------------------------------------
   '(tab-bar ((t (:inherit variable-pitch :background "#0C1A29" :foreground "#e9967a")))) 
   '(tab-bar-tab-inactive ((t (:inherit tab-bar-tab :background "#0C1A29" :foreground "#d6d6d6"))))

   ;; -------------------------Highlight region color-----------------------------------   
   '(linum ((t (:inherit (shadow default) :background "#13182D" :foreground "#F0DFAF"))))
   '(treemacs-fringe-indicator-face ((t (:foreground "#86B187"))))
   ;;'(region ((t (:foreground ,hoare-light-yellow :background "gray37"))))
   '(region ((t (:background "gray37"))))
   
   )
)



;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background nil)))))))

(provide-theme 'hoare)

;; Local Variables:
;; no-byte-compile: t
;; End:
