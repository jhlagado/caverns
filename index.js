const fs = require('fs');

const tokens = {
    129: 'LET',
    130: 'LPRINT',
    131: 'PRINT',
    132: 'IF',
    133: 'NEW',
    134: 'LLIST',
    135: 'LIST',
    136: 'ELSE',
    137: 'THEN',
    138: 'FOR',
    139: 'NEXT',
    140: 'DIM',
    141: 'GOTO',
    142: 'OFF',
    143: 'ON',
    144: 'STOP',
    145: 'END',
    146: 'GOSUB',
    147: 'READ',
    148: 'DATA',
    149: 'RETURN',
    150: 'INPUT',
    151: 'RUN',
    152: 'RESTORE',
    153: 'TO',
    154: 'STEP',
    155: 'TAB',
    156: 'SPC',
    157: 'FN',
    158: 'VAR',
    159: 'POKE',
    160: 'OUT',
    161: 'REM',
    162: 'PRMT',
    163: 'ZONE',
    164: 'SD',
    165: 'CLEAR',
    166: 'EDIT',
    167: 'SET',
    168: 'RESET',
    169: 'SPEED',
    170: 'NORMAL',
    171: 'UNDERLINE',
    172: 'SAVE',
    173: 'LOAD',
    174: 'STRS',
    175: 'INVERSE',
    176: 'PCG',
    177: 'CURS',
    178: 'NOT',
    179: 'AND',
    180: 'OR',
    181: 'TRACE',
    182: 'CONT',
    183: 'CLS',
    184: 'HIRES',
    185: 'AUTO',
    186: 'INVERT',
    187: 'LORES',
    188: 'INT',
    189: 'IN',
    190: 'PEEK',
    191: 'USR',
    192: 'LEN',
    193: 'SEARCH',
    194: 'POINT',
    195: 'ERROR',
    196: 'POS',
    197: 'ASC',
    198: 'USED',
    199: 'NET',
    200: 'MEM',
    201: 'EDASM',
    202: 'GX',
    203: 'ABS',
    204: 'RND',
    205: 'FLT',
    206: 'FRE',
    207: 'VAL',
    208: 'FRACT',
    209: 'SGN',
    210: 'SQR',
    211: 'SIN',
    212: 'COS',
    213: 'ATAN',
    214: 'LOG',
    215: 'EXP',
    216: 'PLOT',
    217: 'DELETE',
    218: 'RENUM',
    219: 'PLAY',
    220: 'EXEC',
    221: 'STR',
    222: 'KEY',
    223: 'CHR',
};


const buffer = fs.readFileSync('hyperd.tap', null);

// let s = [...buffer].slice(158).map(i =>
//     i == 0x0D ? '\n' :
//     i < 32 ? '' :
//     i in tokens ? ` ${tokens[i]} ` :
//     String.fromCharCode(i)
// ).join('');

const lines = [];
let current = [];
for (i of buffer) {
    if (i === 0x0D){
        lines.push(current);
        current = [];
    } else{
        current.push(i);
    }
}

const list = lines.map(line => {
    const num0 = line[0];
    const num1 = line[1];
    const num2 = line[2];
    s = line.slice(3).map(i =>
        i < 32 ? '.' :
        i <= 128 ? String.fromCharCode(i) :
        i <= 223 ? ` ${tokens[i]} ` : '?'
    ).join('');
    return `${num0 * 256 + num1} ${s}`
});
console.log(list.join('\n'));
