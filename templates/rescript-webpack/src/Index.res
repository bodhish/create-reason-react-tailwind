%bs.raw(`require("./tailwind.css")`)

switch ReactDOM.querySelector("#root") {
| Some(root) => ReactDOM.render(<Home />, root)
| None => ()
}
