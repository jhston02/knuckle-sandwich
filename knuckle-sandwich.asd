(defsystem "knuckle-sandwich"
  :version "0.1.0"
  :author "jhston02"
  :license "MIT"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "Hopefully someday a finished E-Reader"
  :in-order-to ((test-op (test-op "knuckle-sandwich/tests"))))

(defsystem "knuckle-sandwich/tests" 
  :depends-on ("knuckle-sandwich"
               "fiveam")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for knuckle-sandwich"
  :perform (test-op (op c) (symbol-call :fiveam '#:run! c)))
