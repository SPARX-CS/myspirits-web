import express from "express";
import compression from "compression";
import serveStatic from "serve-static";

const app = express();
app.disable("x-powered-by");
app.use(compression());
app.use(serveStatic("public", { index: ["index.html"] }));

app.get("/healthz", (_req, res) => res.status(200).send("ok"));

const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`MySpirits web listening on ${PORT}`);
});
