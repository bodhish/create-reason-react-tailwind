let str = React.string
let logo: string = %bs.raw(`require("./assets/rescript-logo.png")`)

@react.component
let make = () =>
  <div className="h-screen flex justify-center items-center">
    <div className="max-w-sm rounded overflow-hidden shadow-lg glow p-4">
      <img className="w-full px-2" src=logo alt="Sunset in the mountains" />
      <div className="p-4">
        <div className="font-bold text-xl mb-2"> {str("Rescipt Tailwind")} </div>
        <p className="text-gray-700 text-base"> {str("A Rescript starter with tailwind")} </p>
      </div>
      <div className="px-4 py-2 -mx-1">
        {Js.Array.map(
          tag =>
            <span
              key=tag
              className="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2">
              {str("#" ++ tag)}
            </span>,
          ["Rescript", "TailwindCSS"],
        )->React.array}
      </div>
    </div>
  </div>
