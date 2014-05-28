PatternLibrary::Pattern.where(custom: false).delete_all

order = -1
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: '<h1>Header One</h1>'
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: '<h2>Header Two</h2>'
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: '<h3>Header Three</h3>'
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: '<h4>Header Four</h4>'
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: '<h5>Header Five</h5>'
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: '<h6>Header Six</h6>'
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: '<p>Paragraph Text</p>'
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: '<p><a href="#">Link text</a></p>'
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: '<p><q>Inline Quotation</q></p>'
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: '<p><em>Emphasized Paragraph Text</em></p>'
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: '<p><strong>Strong Paragraph Text</strong></p>'
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: <<TABLE.strip_heredoc
  <table>
    <thead>
      <tr>
        <th>Header</th>
        <th>Columns</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Body</td>
        <td>Column</td>
      </tr>
      <tr>
        <td>Body</td>
        <td>Column</td>
      </tr>
    </tbody>
  </table>
TABLE
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: <<UL.strip_heredoc
  <ul>
    <li>Unordered</li>
    <li>List</li>
  </ul>
UL
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: <<OL.strip_heredoc
  <ol>
    <li>Ordered</li>
    <li>List</li>
  </ol>
OL
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: <<DL.strip_heredoc
  <dl>
    <dt>Definition Term 1</dt>
    <dd>Definition Description 1</dd>
    <dt>Definition Term 2</dt>
    <dd>Definition Description 2</dd>
  </dl>
DL
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: <<BQ.strip_heredoc
  <blockquote>
    Better to remain silent and be thought a fool than to speak out and remove all doubt.
  </blockquote>
BQ
PatternLibrary::Pattern.create order: order += 1, custom: false, snippet: <<FIG.strip_heredoc
  <figure>
    <img src="http://f.cl.ly/items/1x3y251R0W0m1u02421z/Image%202014-02-21%20at%204.50.36%20PM.png" alt="high usage">
    <figcaption>Figure wrapping an image with caption</figcaption>
  </figure>
FIG
