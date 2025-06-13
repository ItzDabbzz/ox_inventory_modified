import InventoryComponent from './components/inventory';
import useNuiEvent from './hooks/useNuiEvent';
import { Items } from './store/items';
import { Locale } from './store/locale';
import { Categories } from './store/categories';
import { setImagePath } from './store/imagepath';
import { setupInventory } from './store/inventory';
import { Inventory } from './typings';
import { useAppDispatch } from './store';
import { debugData } from './utils/debugData';
import DragPreview from './components/utils/DragPreview';
import { fetchNui } from './utils/fetchNui';
import { useDragDropManager } from 'react-dnd';
import KeyPress from './components/utils/KeyPress';

debugData([
  {
    action: 'init',
    data: {
      locale: {
        // Add your locale strings here if needed
        ui_close: 'Close',
        ui_search: 'Search',
        ui_category_all: 'All',
        ui_category_alcohol: 'Alcohol',
        ui_category_drink: 'Drinks',
        ui_category_food: 'Food',
        ui_category_ingredients: 'Ingredients',
        ui_category_crafting: 'Crafting',
        ui_category_documents: 'Documents',
        ui_category_vehicle: 'Vehicle',
        ui_category_drugs: 'Drugs',
        ui_category_money: 'Money',
        ui_category_electronics: 'Electronics',
        ui_category_tools: 'Tools',
        ui_category_misc: 'Miscellaneous',
        ui_category_medical: 'Medical',
        ui_category_police: 'Police',
        ui_category_accessories: 'Accessories',
        ui_category_collectibles: 'Collectibles',
        ui_category_pets: 'Pets',
        ui_category_clothing: 'Clothing'
      },
      items: {
        iron: {
          label: 'Iron',
          stack: true,
          close: false,
          count: 5,
          description: 'A piece of iron',
          category: 'crafting',
          image: 'iron.png'
        },
        powersaw: {
          label: 'Power Saw',
          stack: false,
          close: false,
          count: 1,
          description: 'A powerful saw for cutting',
          category: 'tools',
          image: 'powersaw.png'
        },
        copper: {
          label: 'Copper',
          stack: true,
          close: false,
          count: 12,
          description: 'A piece of copper',
          category: 'crafting',
          image: 'copper.png'
        },
        water: {
          label: 'Water',
          stack: true,
          close: false,
          count: 2,
          description: 'Fresh water',
          category: 'drink',
          image: 'water.png'
        },
        backwoods: {
          label: 'Backwoods',
          stack: true,
          close: false,
          count: 1,
          description: 'Backwoods cigar',
          category: 'misc',
          image: 'backwoods.png'
        },
        lockpick: {
          label: 'Lockpick',
          stack: true,
          close: false,
          count: 0,
          description: 'Simple lockpick that breaks easily',
          category: 'tools',
          image: 'lockpick.png'
        }
      },
      categories: {
        alcohol: {
          label: 'Alcohol',
          icon: 'wine-bottle',
          color: '#8B4513'
        },
        drink: {
          label: 'Drinks',
          icon: 'glass-water',
          color: '#4FC3F7'
        },
        food: {
          label: 'Food',
          icon: 'utensils',
          color: '#4CAF50'
        },
        ingredients: {
          label: 'Ingredients',
          icon: 'seedling',
          color: '#FF9800'
        },
        crafting: {
          label: 'Crafting',
          icon: 'hammer',
          color: '#2196F3'
        },
        documents: {
          label: 'Documents',
          icon: 'file-text',
          color: '#607D8B'
        },
        vehicle: {
          label: 'Vehicle',
          icon: 'car',
          color: '#795548'
        },
        drugs: {
          label: 'Drugs',
          icon: 'pills',
          color: '#E91E63'
        },
        money: {
          label: 'Money',
          icon: 'dollar-sign',
          color: '#4CAF50'
        },
        electronics: {
          label: 'Electronics',
          icon: 'microchip',
          color: '#9C27B0'
        },
        tools: {
          label: 'Tools',
          icon: 'wrench',
          color: '#FF5722'
        },
        misc: {
          label: 'Miscellaneous',
          icon: 'box',
          color: '#9E9E9E'
        },
        medical: {
          label: 'Medical',
          icon: 'heart-pulse',
          color: '#F44336'
        },
        police: {
          label: 'Police',
          icon: 'shield',
          color: '#3F51B5'
        },
        accessories: {
          label: 'Accessories',
          icon: 'gem',
          color: '#E91E63'
        },
        collectibles: {
          label: 'Collectibles',
          icon: 'star',
          color: '#FFD700'
        },
        pets: {
          label: 'Pets',
          icon: 'paw',
          color: '#8BC34A'
        },
        clothing: {
          label: 'Clothing',
          icon: 'shirt',
          color: '#673AB7'
        }
      },
      leftInventory: {
        id: 'test',
        type: 'player',
        slots: 50,
        label: 'Bob Smith',
        weight: 3000,
        maxWeight: 5000,
        items: [
          {
            slot: 1,
            name: 'iron',
            weight: 3000,
            metadata: {
              description: `name: Svetozar Miletic  \n Gender: Male`,
              ammo: 3,
              mustard: '60%',
              ketchup: '30%',
              mayo: '10%',
            },
            count: 5,
            category: 'crafting',
          },
          { slot: 2, name: 'powersaw', weight: 0, count: 1, metadata: { durability: 75 }, category: 'tools' },
          { slot: 3, name: 'copper', weight: 100, count: 12, metadata: { type: 'Special' }, category: 'crafting' },
          {
            slot: 4,
            name: 'water',
            weight: 100,
            count: 1,
            metadata: { description: 'Generic item description' },
            category: 'drink',
          },
          { slot: 5, name: 'water', weight: 100, count: 1, category: 'drink' },
          {
            slot: 6,
            name: 'backwoods',
            weight: 100,
            count: 1,
            metadata: {
              label: 'Russian Cream',
              imageurl: 'https://i.imgur.com/2xHhTTz.png',
            },
            category: 'misc',
          },
        ],
      },
      rightInventory: {
        id: 'shop',
        type: 'crafting',
        slots: 5000,
        label: 'Bob Smith',
        weight: 3000,
        maxWeight: 5000,
        items: [
          {
            slot: 1,
            name: 'lockpick',
            weight: 500,
            price: 300,
            ingredients: {
              iron: 5,
              copper: 12,
              powersaw: 0.1,
            },
            metadata: {
              description: 'Simple lockpick that breaks easily and can pick basic door locks',
            },
          },
        ],
      },
      imagepath: 'nui://ox_inventory/web/images/'
    },
  },
  {
    action: 'setupInventory',
    data: {
      leftInventory: {
        id: 'test',
        type: 'player',
        slots: 50,
        label: 'Bob Smith',
        weight: 3000,
        maxWeight: 5000,
        items: [
          {
            slot: 1,
            name: 'iron',
            weight: 3000,
            metadata: {
              description: `name: Svetozar Miletic  \n Gender: Male`,
              ammo: 3,
              mustard: '60%',
              ketchup: '30%',
              mayo: '10%',
            },
            count: 5,
          },
          { slot: 2, name: 'powersaw', weight: 0, count: 1, metadata: { durability: 75 } },
          { slot: 3, name: 'copper', weight: 100, count: 12, metadata: { type: 'Special' } },
          {
            slot: 4,
            name: 'water',
            weight: 100,
            count: 1,
            metadata: { description: 'Generic item description' },
          },
          { slot: 5, name: 'water', weight: 100, count: 1 },
          {
            slot: 6,
            name: 'backwoods',
            weight: 100,
            count: 1,
            metadata: {
              label: 'Russian Cream',
              imageurl: 'https://i.imgur.com/2xHhTTz.png',
            },
          },
        ],
      },
      rightInventory: {
        id: 'shop',
        type: 'crafting',
        slots: 5000,
        label: 'Bob Smith',
        weight: 3000,
        maxWeight: 5000,
        items: [
          {
            slot: 1,
            name: 'lockpick',
            weight: 500,
            price: 300,
            ingredients: {
              iron: 5,
              copper: 12,
              powersaw: 0.1,
            },
            metadata: {
              description: 'Simple lockpick that breaks easily and can pick basic door locks',
            },
          },
        ],
      },
    },
  },
]);

const App: React.FC = () => {
  const dispatch = useAppDispatch();
  const manager = useDragDropManager();

  useNuiEvent<{
    locale: { [key: string]: string };
    items: typeof Items;
    categories: typeof Categories;
    leftInventory: Inventory;
    imagepath: string;
  }>('init', ({ locale, items, categories, leftInventory, imagepath }) => {
    for (const name in locale) Locale[name] = locale[name];
    
    for (const name in items) {
      Items[name] = items[name];
      console.log(`Setting Items[${name}]:`, items[name]);
    }
    
    for (const name in categories) Categories[name] = categories[name];

    setImagePath(imagepath);
    dispatch(setupInventory({ leftInventory }));
  });

  fetchNui('uiLoaded', {});

  useNuiEvent('closeInventory', () => {
    manager.dispatch({ type: 'dnd-core/END_DRAG' });
  });

  return (
    <div className="app-wrapper">
      <InventoryComponent />
      <DragPreview />
      <KeyPress />
    </div>
  );
};

addEventListener("dragstart", function(event) {
  event.preventDefault()
})

export default App;
