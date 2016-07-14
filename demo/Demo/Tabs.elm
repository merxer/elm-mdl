module Demo.Tabs exposing (..)

import Platform.Cmd exposing (Cmd, none)
import Html exposing (..)
import Html.Attributes as Html exposing (..)

import Material.Tabs as Tabs
import Material

import Demo.Page as Page
import Demo.Code as Code


-- MODEL


type alias Mdl =
  Material.Model


type alias Model =
  { mdl : Material.Model
  , tab : Int
  }


model : Model
model =
  { mdl = Material.model
  , tab = 0
  }


-- ACTION, UPDATE

type Msg
  = SelectTab Int
  | Mdl Material.Msg


update : Msg -> Model -> (Model, Cmd Msg)
update action model =
  case action of
    SelectTab idx ->
      ({ model | tab = idx }, Cmd.none)

    Mdl action' ->
      Material.update Mdl action' model


-- VIEW

aboutTab : Html Msg
aboutTab =
  Html.div
    [ Html.style [ ("height", "380px")
                 , ("overflow-y", "scroll")
                 ]
    ]
    [ p []
        [ text """The Material Design Lite (MDL) tab component is a user interface element that allows different content blocks to share the same screen space in a mutually exclusive manner. Tabs are always presented in sets of two or more, and they make it easy to explore and switch among different views or functional aspects of an app, or to browse categorized data sets individually. Tabs serve as "headings" for their respective content; the active tab — the one whose content is currently displayed — is always visually distinguished from the others so the user knows which heading the current content belongs to."""
        ]
    , p []
      [text """Tabs are an established but non-standardized feature in user interfaces, and allow users to view different, but often related, blocks of content (often called panels). Tabs save screen real estate and provide intuitive and logical access to data while reducing navigation and associated user confusion. Their design and use is an important factor in the overall user experience. See the tab component's Material Design specifications page for details."""]

    , p []
      [ text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in arcu at erat porttitor ornare. Nam varius imperdiet dui, et auctor turpis aliquet non. Ut egestas vitae metus non placerat. Quisque mollis quam vitae turpis porttitor congue. In semper metus et erat tristique rutrum. Phasellus porttitor, ex eget elementum malesuada, felis erat rhoncus purus, eu dignissim metus tellus id nisi. Suspendisse id est sed urna vehicula imperdiet in vitae odio. Maecenas bibendum tellus nec diam feugiat, ut bibendum augue accumsan. Vivamus pharetra dolor sit amet ligula rhoncus pretium. Ut dictum euismod dolor, et placerat nisi placerat sed. Ut et magna finibus, pharetra dolor tempus, accumsan erat. Ut in efficitur arcu, in malesuada orci. Quisque sem nisl, malesuada vel commodo ac, viverra eget odio.

Vestibulum nibh velit, vestibulum auctor odio eget, bibendum pretium nisi. Vivamus accumsan feugiat luctus. Curabitur risus nulla, condimentum ac dapibus vel, vehicula a risus. Nunc vulputate neque eget urna ornare pellentesque. Morbi iaculis porta velit, at pretium augue vehicula id. Etiam iaculis libero sit amet imperdiet efficitur. Sed ornare elit et est rutrum posuere. Aliquam vehicula scelerisque risus vitae facilisis. Proin pulvinar urna sit amet justo imperdiet, at pretium nunc maximus. Pellentesque facilisis justo arcu, nec venenatis diam dignissim ut. Mauris sed sapien ac risus ullamcorper tincidunt et ac elit. Nam vestibulum massa urna, quis luctus velit eleifend id. Suspendisse potenti. Aliquam ut porttitor nibh, non aliquam urna. Sed interdum fermentum ante, eu fermentum sapien maximus vel. Suspendisse laoreet nisi eget mi fringilla, sed porttitor ex hendrerit."
      ]
    ]


extraTab : Html Msg
extraTab =
  Html.div
    [ Html.style [ ("height", "380px")
                 , ("overflow-y", "scroll")
                 ]
    ]
    [ p []
        [ text "Tabs enable content organization at a high level, such as switching between views, data sets, or functional aspects of an app."
        ]
    , p []
      [text "Use tabs to organize content at a high level, for example, to present different sections of a newspaper. Don’t use tabs for carousels or pagination of content. Those use cases involve viewing content, not navigating between groups of content."]
    , p []
      [ text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in arcu at erat porttitor ornare. Nam varius imperdiet dui, et auctor turpis aliquet non. Ut egestas vitae metus non placerat. Quisque mollis quam vitae turpis porttitor congue. In semper metus et erat tristique rutrum. Phasellus porttitor, ex eget elementum malesuada, felis erat rhoncus purus, eu dignissim metus tellus id nisi. Suspendisse id est sed urna vehicula imperdiet in vitae odio. Maecenas bibendum tellus nec diam feugiat, ut bibendum augue accumsan. Vivamus pharetra dolor sit amet ligula rhoncus pretium. Ut dictum euismod dolor, et placerat nisi placerat sed. Ut et magna finibus, pharetra dolor tempus, accumsan erat. Ut in efficitur arcu, in malesuada orci. Quisque sem nisl, malesuada vel commodo ac, viverra eget odio.

Vestibulum nibh velit, vestibulum auctor odio eget, bibendum pretium nisi. Vivamus accumsan feugiat luctus. Curabitur risus nulla, condimentum ac dapibus vel, vehicula a risus. Nunc vulputate neque eget urna ornare pellentesque. Morbi iaculis porta velit, at pretium augue vehicula id. Etiam iaculis libero sit amet imperdiet efficitur. Sed ornare elit et est rutrum posuere. Aliquam vehicula scelerisque risus vitae facilisis. Proin pulvinar urna sit amet justo imperdiet, at pretium nunc maximus. Pellentesque facilisis justo arcu, nec venenatis diam dignissim ut. Mauris sed sapien ac risus ullamcorper tincidunt et ac elit. Nam vestibulum massa urna, quis luctus velit eleifend id. Suspendisse potenti. Aliquam ut porttitor nibh, non aliquam urna. Sed interdum fermentum ante, eu fermentum sapien maximus vel. Suspendisse laoreet nisi eget mi fringilla, sed porttitor ex hendrerit. Aliquam eget tincidunt turpis. Ut euismod sem et nisl aliquam dapibus. Nunc ultrices ligula a pharetra consequat. Sed bibendum id diam vel interdum. Mauris luctus finibus turpis. Proin suscipit orci nec massa ornare, nec tempus orci cursus. Pellentesque semper rutrum sapien, vitae posuere sapien aliquam sodales. Vivamus eu euismod elit, id ultrices eros. Nam quam massa, blandit vel neque ut, luctus accumsan augue. Pellentesque ullamcorper est a dolor placerat, in condimentum urna sollicitudin. Mauris ut diam finibus mi accumsan porttitor quis non lectus. Mauris luctus lacinia lectus ut hendrerit. Donec orci ligula, iaculis vel sollicitudin sit amet, rhoncus sed leo.

Morbi purus ante, dignissim ac volutpat quis, venenatis ut libero. Nunc quam massa, dignissim sit amet elementum in, aliquet in justo. Cras eleifend sed nisi sit amet finibus. Nulla at congue nunc, ac ullamcorper justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis semper massa, non tincidunt nibh. Maecenas suscipit augue at arcu dictum, a ultrices justo egestas. Integer sit amet nisl sed augue eleifend sollicitudin vitae ut neque."

      ]
    ]


exampleTab : Html Msg
exampleTab =
  Code.code
    """
     import Material.Tabs as Tabs

     tabs : Model -> Html Msg
     tabs model =
       Tabs.render Mdl [0] model.mdl
           [ Tabs.ripple
           , Tabs.onSelectTab SelectTab
           , Tabs.activeTab model.tab
           ]
           [ Tabs.label [] [text "Tab One"]
           , Tabs.textLabel [] "Tab Two"
           ]
           [ case model.tab of
               0 -> div [] [text "Content of tab one"]
               1 -> div [] [text "Content of tab two"]
               _ -> div [] []
           ]

     """


view : Model -> Html Msg
view model  =
  let
    activeContent =
      case model.tab of
        0 -> exampleTab
        1 -> aboutTab
        _ -> extraTab

  in
    [ Tabs.render Mdl [0] model.mdl
        [ Tabs.ripple
        , Tabs.onSelectTab SelectTab
        , Tabs.activeTab model.tab
        ]
        [ Tabs.label [] [text "Example"]
        , Tabs.label [] [text "About ", strong [] [text "Tabs"]]
        , Tabs.textLabel [] "Extra"
        ]
        [ activeContent
        ]

    ] |> Page.body2 "Tabs" srcUrl intro references


intro : Html m
intro =
  Page.fromMDL "https://getmdl.io/components/index.html#layout-section/tabs" """
> The Material Design Lite (MDL) tab component is a user interface element that
> allows different content blocks to share the same screen space in a mutually
> exclusive manner. Tabs are always presented in sets of two or more, and they
> make it easy to explore and switch among different views or functional aspects
> of an app, or to browse categorized data sets individually. Tabs serve as
> "headings" for their respective content; the active tab — the one whose content
> is currently displayed — is always visually distinguished from the others so the
> user knows which heading the current content belongs to.
>
> Tabs are an established but non-standardized feature in user interfaces, and
> allow users to view different, but often related, blocks of content (often
> called panels). Tabs save screen real estate and provide intuitive and logical
> access to data while reducing navigation and associated user confusion. Their
> design and use is an important factor in the overall user experience. See the
> tab component's Material Design specifications page for details.
"""


srcUrl : String
srcUrl =
  "https://github.com/debois/elm-mdl/blob/master/demo/Demo/Tabs.elm"


references : List (String, String)
references =
  [ Page.package "http://package.elm-lang.org/packages/debois/elm-mdl/latest/Material-Tabs"
  , Page.mds "https://material.google.com/components/tabs.html"
  , Page.mdl "https://getmdl.io/components/index.html#layout-section/tabs"
  ]
