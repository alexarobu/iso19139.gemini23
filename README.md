# Gemini 2.3 Metadata Profile schema plugin

Gemini 2.3 Metadata Profile

## GeoNetwork versions to use with this plugin

**Use the correct branch for your version of GeoNetwork. The default branch is for GeoNetwork 3.10 and this is the recommended version.**

## Installing the plugin in GeoNetwork 3.10.x (recommended version)

### Adding to an existing installation

 * Download or clone this repository, ensuring you choose the correct branch. 
 * Copy `src/main/plugin/iso19139.gemini23` to `INSTALL_DIR/geonetwork/WEB_INF/data/config/schema_plugins/iso19139.gemini23` in your installation.
 * Copy `target/schema-iso19139.gemini23-3.7.jar` to `INSTALL_DIR/geonetwork/WEB_INF/lib`
 * Restart GeoNetwork
 * Check that the schema is registered by visiting Admin Console -> Metadata and Templates -> Standards in GeoNetwork. If you do not see iso19139.gemini23 then it is not correctly deployed. Check your GeoNetwork log files for errors.

### Adding the plugin to the source code prior to compiling GeoNetwork

The best approach is to add the plugin as a submodule. Use https://github.com/geonetwork/core-geonetwork/blob/3.10.x/add-schema.sh for automatic deployment:

```
.\add-schema.sh iso19139.gemini23 http://github.com/metadata101/iso19139.gemini23 3.10.x
```

#### Building the application 

See https://geonetwork-opensource.org/manuals/trunk/en/maintainer-guide/installing/installing-from-source-code.html. 

Once the application is built `web/target/geonetwork.war` will contain GeoNetwork with the Gemini 2.3 schema plugin included.