(setext_heading
  (paragraph) @markup.heading
  (setext_h1_underline) @markup.heading)

(setext_heading
  (paragraph) @markup.heading
  (setext_h2_underline) @markup.heading)

(atx_heading
  (atx_h1_marker)) @markup.heading

(atx_heading
  (atx_h2_marker)) @markup.heading

(atx_heading
  (atx_h3_marker)) @markup.heading

(atx_heading
  (atx_h4_marker)) @markup.heading

(atx_heading
  (atx_h5_marker)) @markup.heading

(atx_heading
  (atx_h6_marker)) @markup.heading

(info_string) @label

; (pipe_table_header
;   (pipe_table_cell) @markup.heading)

; (pipe_table_header
;   "|" @punctuation.special)
;
; (pipe_table_row
;   "|" @punctuation.special)
;
; (pipe_table_delimiter_row
;   "|" @punctuation.special)
;
; (pipe_table_delimiter_cell) @punctuation.special

(indented_code_block) @markup.raw.block

((fenced_code_block) @markup.raw.block
  (#set! priority 90))

(fenced_code_block
  (fenced_code_block_delimiter) @markup.raw.block
  (#set! conceal "")
  (#set! conceal_lines ""))

(fenced_code_block
  (info_string
    (language) @label
    (#set! conceal "")
    (#set! conceal_lines "")))

(link_destination) @markup.link.url

[
  (link_title)
  (link_label)
] @markup.link.label

((link_label)
  .
  ":" @punctuation.delimiter)

[
  (list_marker_plus)
  (list_marker_minus)
  (list_marker_star)
  (list_marker_dot)
  (list_marker_parenthesis)
] @markup.list

(thematic_break) @punctuation.special

(task_list_marker_unchecked) @markup.list.unchecked

(task_list_marker_checked) @markup.list.checked

((block_quote) @markup.quote
  (#set! priority 90))

([
  (plus_metadata)
  (minus_metadata)
] @keyword.directive
  (#set! priority 90))

[
  (block_continuation)
  (block_quote_marker)
] @punctuation.special

(backslash_escape) @string.escape

(inline) @spell
