import React, { useRef } from 'react';
import { Inventory, SlotWithItem } from '../../typings';
import WeightBar from '../utils/WeightBar';
import InventorySlot from './InventorySlot';
import { getTotalWeight } from '../../helpers';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';
import { useIntersection } from '../../hooks/useIntersection';
import { selectCategoryFilter } from '../../store/inventory'; // Import the selector
import { Items } from '../../store/items';

const InventoryGrid: React.FC<{ inventory: Inventory, direction: 'left' | 'right' }> = ({ inventory, direction }) => {
  const weight = React.useMemo(
    () => (inventory.maxWeight !== undefined ? Math.floor(getTotalWeight(inventory.items) * 1000) / 1000 : 0),
    [inventory.maxWeight, inventory.items]
  );
  const isPlayerInventory = inventory.type === 'player';
  const [page, setPage] = React.useState(0);
  const containerRef = useRef(null);
  const { ref, entry } = useIntersection({ threshold: 0.5 });
  const isBusy = useAppSelector((state) => state.inventory.isBusy);
  const categoryFilter = useAppSelector(selectCategoryFilter); // Get the selected category

  React.useEffect(() => {
    if (entry && entry.isIntersecting) {
      setPage((prev) => ++prev);
    }
  }, [entry]);
  return (
    <>
      <div className="inventory-grid-wrapper" style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
        <div>
          <div className="inventory-grid-header-wrapper">
            <p>{inventory.label}</p>
            <p>${inventory.cash || 0}</p>
            {inventory.maxWeight && (
              <p>
                {weight / 1000}/{inventory.maxWeight / 1000}kg
              </p>
            )}
          </div>
          <WeightBar percent={inventory.maxWeight ? (weight / inventory.maxWeight) * 100 : 0} />
        </div>
        <div className={direction === 'left' ? 'inventory-grid-container-left' : 'inventory-grid-container-right'} ref={containerRef}>
          <>
            {inventory.items.map((item, index) => {
              if(index < 5 && inventory.type==='player') {
                return ''
              }
              const itemData = item.name ? Items[item.name] : undefined; // Get item data from Items store
              const matchesCategory = !categoryFilter || (itemData && itemData.category === categoryFilter); // Check if item matches the filter

              return (
                <InventorySlot
                  key={`${inventory.type}-${inventory.id}-${item.slot}`}
                  item={item as SlotWithItem}
                  inventoryType={inventory.type}
                  inventoryGroups={inventory.groups}
                  inventoryId={inventory.id}
                  style={{ opacity: matchesCategory ? 1 : 0.3 }} // Apply opacity based on category match
                />
              );
            })}
          </>
        </div>
      </div>
    </>
  );
};

export default InventoryGrid;
