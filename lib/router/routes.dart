enum R {
  container('Container', '/container'),
  text('Text', '/text'),
  icons('Icons', '/icons'),
  buttons('Buttons', '/buttons'),
  images('Images', '/images'),
  rowColumn('Row & Column', '/row-column'),
  layout('Layout', '/layout'),
  listView('ListView', '/list-view'),
  customScrollView('CustomScrollView', '/custom-scroll-view'),
  form('Form', '/form'),
  theme('Theme', '/theme'),
  home('home', '/');

  final String name;
  final String path;

  const R(this.name, this.path);
}
