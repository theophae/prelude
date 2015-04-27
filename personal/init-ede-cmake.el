;; (setq debug-on-error t)
;; (require 'ede-cmake)

;; ;; Example only
;; (defvar my-project-root-build-directories
;;   '(("None" . "/cygdrive/c/wrokspace/build/tm_HCSDM00316665")
;;     ("Debug" . "/cygdrive/c/wrokspace/build/tm_HCSDM00316665")
;;     ("Release" . "/cygdrive/c/wrokspace/build/tm_HCSDM00316665"))
;;   "Alist of build directories in the project root"
;;   )

;; (defun my-project-root-build-locator (config root-dir)
;;   "Locates a build directory in the project root, uses
;; project-root-build-directories to look up the name."
;;   (cdr (assoc config my-project-root-build-directories)))

;; (defun my-load-project (dir)
;;   "Load a project of type `ede-cmake-cpp-project' for the directory DIR.
;; Return nil if there isn't one."
;;   (ede-cmake-cpp-project
;;    (file-name-nondirectory (directory-file-name dir))
;;    :directory dir
;;    :locate-build-directory 'my-project-root-build-locator
;;    :build-tool (cmake-make-build-tool "Make" :additional-parameters "-j5 -kr")
;;    :include-path '( "/cygdrive/c/wrokspace/build/tm_HCSDM00316665" )
;;    :system-include-path (list (expand-file-name "" dir) )
;;    ))

;; (ede-add-project-autoload
;;  (ede-project-autoload "CMake"
;;                        :file 'ede-cmake
;;                        :proj-file "CMakeLists.txt"
;;                        :proj-root 'ede-cmake-cpp-project-root
;;                        :proj-root-dirmatch ""
;;                        :load-type 'my-load-project
;;                        :class-sym 'ede-cmake-cpp-project)
;;  'unique)
