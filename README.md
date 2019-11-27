# conj-graphql

This is the conj-graphql project.

## Development mode

```
make dev
```

Figwheel will automatically push cljs changes to the browser. The server will be available at [http://localhost:3449](http://localhost:3449) once Figwheel starts up.  To view your devcards, type `(switch-to-build devcards)` at the Figwheel REPL and navigate to [http://localhost:3449/cards](http://localhost:3449/cards).

Figwheel also starts `nREPL` using the value of the `:nrepl-port` in the `:figwheel`
config found in `project.clj`. By default the port is set to `7002`.


### Optional development tools

Start the browser REPL:

```
make repl
```
The Jetty server can be started by running:

```clojure
(start-server)
```
and stopped by running:
```clojure
(stop-server)
```

### ~/.clojure/deps.edn

``` edn
{
 :aliases
 {
  :clj-kondo
  {:extra-deps {clj-kondo {:mvn/version "RELEASE"}}
   :main-opts ["-m" "clj-kondo.main"]}
  :graph
  {:deps {org.clojure/tools.deps.graph {:mvn/versionn "0.1.14"}}
   :main-opts ["-m" "clojure.tools.deps.graph"]}
  }
 }

```

## Cider

``` elisp
(cider)
```

## GraphQL

``` shell
graphql get-schema -p pokemon -e default
```

## Running the tests

```
make test
```


## Building for release

```
make release
```
