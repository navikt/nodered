module.exports = {
    uiPort: process.env.PORT || 1880,
    mqttReconnectTime: 15000,
    serialReconnectTime: 15000,
    debugMaxLength: 1000,
    functionGlobalContext: {
    },
    exportGlobalContextKeys: false,
    userDir: '/data/',
    flowFile: 'flows.json',
    flowFilePretty: true,
    httpNodeRoot: '/api/',
    httpAdminRoot: '/',
    httpStatic: '/data/static/',
    ui: { path: "ui" },
    logging: {
        console: {
            level: "info",
            metrics: false,
            audit: false
        }
    },
    editorTheme: {
        projects: {
            enabled: false
        }
    }
}
