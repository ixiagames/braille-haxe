package;

class Braille {

    final _map = [
        ' ' => '⠀', // space bar to dot-0
        '0' => '⠴',
        '1' => '⠂',
        '2' => '⠆',
        '3' => '⠒',
        '4' => '⠲',
        '5' => '⠢',
        '6' => '⠖',
        '7' => '⠶',
        '8' => '⠦',
        '9' => '⠔',
        'a' => '⠁',
        'b' => '⠃',
        'c' => '⠉',
        'd' => '⠙',
        'e' => '⠑',
        'f' => '⠋',
        'g' => '⠛',
        'h' => '⠓',
        'i' => '⠊',
        'j' => '⠚',
        'k' => '⠅',
        'l' => '⠇',
        'm' => '⠍',
        'n' => '⠝',
        'o' => '⠕',
        'p' => '⠏',
        'q' => '⠟',
        'r' => '⠗',
        's' => '⠎',
        't' => '⠞',
        'u' => '⠥',
        'v' => '⠧',
        'w' => '⠺',
        'x' => '⠭',
        'y' => '⠽',
        'z' => '⠵',
        '_' => '⠸',
        '-' => '⠤',
        ',' => '⠠',
        ';' => '⠰',
        ':' => '⠱',
        '!' => '⠮',
        '?' => '⠹',
        '.' => '⠨',
        '(' => '⠷',
        '[' => '⠪',
        '@' => '⠈',
        '*' => '⠡',
        '/' => '⠌',
        '&' => '⠯',
        '%' => '⠩',
        '^' => '⠘',
        '+' => '⠬',
        '<' => '⠣',
        '>' => '⠜',
        '$' => '⠫',
        ']' => '⠻',
        '#' => '⠼',
        ')' => '⠾',
        '=' => '⠿',
        '\'' => '⠄',
        '\"' => '⠐',
        '\\' => '⠳'
    ];

    public function new() {
        for (char => braille in _map)
            _map[braille] = char;
    }

    public function convert(input:String):String {
        input = input.toLowerCase();
        var output = '';
        var char:String;
        for (i in 0...input.length) {
            char = input.charAt(i);
            output += _map.exists(char) ? _map[char] : char;
        }
        return output;
    }
    
}