#!/usr/bin/env ruby

require 'yaml'

$data = YAML.load(ARGF, symbolize_names: true)

$information = $data[:information]
$palette = $data[:palette]
$highlights = $data[:highlights]
$terminal = $data[:terminal]

def error(message)
  $stderr.puts message
  exit 1
end

def hex_to_rgb(hex)
  r = hex.match(/^#(\h{2})(\h{2})(\h{2})$/)
  return r.captures.map { |e| e.to_i(16) } if r
  r = hex.match(/^#(\h)(\h)(\h)$/)
  return r.captures.map { |e| 0x11 * e.to_i(16) } if r
  return nil
end

def rgb_to_hex(red, green, blue)
  rgb = (red << 16) | (green << 8) | (blue << 0)
  return '#' + (0x1000000 + rgb).to_s(16)[1..-1]
end

# From tmux
def rgb_to_x256(*orig)
  values = [0x00, 0x5f, 0x87, 0xaf, 0xd7, 0xff]

  ir, ig, ib = orig.map do |e|
    e < 48 ? 0 : e < 115 ? 1 : (e - 35) / 40
  end

  average = orig.sum / 3
  gray_index = average > 238 ? 23 : (average - 3) / 10
  color_index = 36 * ir + 6 * ig + ib

  r, g, b = orig
  cr, cg, cb = values[ir], values[ig], values[ib]
  gv = 8 + 10 * gray_index
  color_err = (cr - r) ** 2 + (cg - g) ** 2 + (cb - b) ** 2
  gray_err = (gv - r) ** 2 + (gv - g) ** 2 + (gv - b) ** 2

  color_err <= gray_err ? 16 + color_index : 232 + gray_index
end

def hsl_to_rgb(h, s, l)
  s = s / 100.0
  l = l / 100.0

  r, g, b = 0.0, 0.0, 0.0

  if (s == 0.0)
    # achromatic
    r, g, b = l, l, l
  else
    c = (1 - (2 * l - 1).abs) * s
    h /= 60.0
    x = c * (1 - (h % 2 - 1).abs)
    m = l - (c / 2)

    if h <= 1
      r, g, b = c, x, 0
    elsif h <= 2
      r, g, b = x, c, 0
    elsif h <= 3
      r, g, b = 0, c, x
    elsif h <= 4
      r, g, b = 0, x, c
    elsif h <= 5
      r, g, b = x, 0, c
    elsif h <= 6
      r, g, b = c, 0, x
    end

    r, g, b = r + m, g + m, b + m
  end

  return [r, g, b].map { |e| e * 255 }
end

def get_color(color)
  if color.start_with?('#')
    return hex_to_rgb(color)
  end
  r = $palette[color.to_sym]
  error("Color not found '#{color}'") if !r
  if r.kind_of?(Array)
    return hsl_to_rgb(*r)
  elsif r.start_with?('#')
    return hex_to_rgb(r)
  elsif r =~ /^hsl\((\d+), (\d+), (\d+)\)$/
    return hsl_to_rgb($1.to_i, $2.to_i, $3.to_i)
  end
  return nil
end

class Highlight
  def initialize(name, conf)
    @name = name.to_s
    return if !conf
    fg, bg, style, sp = conf.split(' ')
    @params = {}
    @params.merge!(hi_color('fg', fg))
    @params.merge!(hi_color('bg', bg))
    @params.merge!(hi_style(style))
    @params.merge!(hi_color('sp', sp))
  end

  def to_s
    "hi #{@name} " + @params.map { |e| '%s=%s' % e }.join(' ')
  end

  private

  def hi_color(kind, color)
    return {} if color == '.'
    return {} if kind == 'sp' and !color
    if color and color != '-'
      rgb = get_color(color)
      rgb.map!(&:round)
      color = rgb_to_hex(*rgb)
      c_color = rgb_to_x256(*rgb)
    else
      color = 'NONE'
      c_color = 'NONE'
    end
    params = { 'gui' + kind => color }
    params['cterm' + kind] = c_color unless kind == 'sp'
    return params
  end

  def hi_style(style)
    return {} if style == '.'
    if style and style != '-'
      attributes = {
        b: 'bold',
        u: 'underline',
        r: 'reverse',
        i: 'italic',
        c: 'undercurl',
        s: 'standout',
      }
      style = style.chars.map { |e| attributes[e.to_sym] }.join(',')
    else
      style = 'NONE'
    end
    return { 'gui' => style, 'cterm' => style }
  end

end

$highlights = $highlights.map { |e| Highlight.new(*e) }

puts <<EOL
" Maintainer: #{$information[:author]}

set background=#{$information[:background]}
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name='#{$information[:name]}'

EOL

puts $highlights

colors = $terminal&.split(' ') || []

exit unless colors.size == 16

colors.map! do |e|
  rgb = get_color(e).map(&:round)
  "'%s'" % rgb_to_hex(*rgb)
end

puts "\nlet g:terminal_ansi_colors = [ %s ]" % colors.join(', ')
