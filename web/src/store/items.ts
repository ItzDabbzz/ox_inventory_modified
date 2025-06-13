import { ItemData } from '../typings/item';

export const Items: {
  [key: string]: ItemData | undefined;
} = {
  water: {
    name: 'water',
    close: false,
    label: 'VODA',
    stack: true,
    usable: true,
    count: 0,
    category: 'drink',
  },
  burger: {
    name: 'burger',
    close: false,
    label: 'BURGR',
    stack: false,
    usable: false,
    count: 0,
    category: 'food',
  },
  iron: {
    name: 'iron',
    close: false,
    label: 'Iron',
    stack: true,
    usable: false,
    count: 0,
    category: 'crafting',
  },
  copper: {
    name: 'copper',
    close: false,
    label: 'Copper',
    stack: true,
    usable: false,
    count: 0,
    category: 'crafting',
  },
  powersaw: {
    name: 'powersaw',
    close: false,
    label: 'Power Saw',
    stack: false,
    usable: true,
    count: 0,
    category: 'tools',
  },
  lockpick: {
    name: 'lockpick',
    close: false,
    label: 'Lockpick',
    stack: true,
    usable: true,
    count: 0,
    category: 'tools',
  },
  backwoods: {
    name: 'backwoods',
    close: false,
    label: 'Backwoods',
    stack: true,
    usable: true,
    count: 0,
    category: 'misc',
  },
};
