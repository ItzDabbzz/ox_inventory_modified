import React, { useState } from 'react';
import useNuiEvent from '../../hooks/useNuiEvent';
import InventoryControl from './InventoryControl';
import InventoryHotbar from './InventoryHotbar';
import { useAppDispatch } from '../../store';
import { refreshSlots, setAdditionalMetadata, setupInventory } from '../../store/inventory';
import { useExitListener } from '../../hooks/useExitListener';
import type { Inventory as InventoryProps } from '../../typings';
import RightInventory from './RightInventory';
import LeftInventory from './LeftInventory';
import Tooltip from '../utils/Tooltip';
import { closeTooltip } from '../../store/tooltip';
import InventoryContext from './InventoryContext';
import { closeContextMenu } from '../../store/contextMenu';
import Fade from '../utils/transitions/Fade';
import { Categories } from '../../store/categories';

const Inventory: React.FC = () => {
  const [inventoryVisible, setInventoryVisible] = useState(false);
  const [selectedLeftCategory, setSelectedLeftCategory] = useState<string | null>(null);
  const [selectedRightCategory, setSelectedRightCategory] = useState<string | null>(null);
  const dispatch = useAppDispatch();

  useNuiEvent<boolean>('setInventoryVisible', setInventoryVisible);
  useNuiEvent<false>('closeInventory', () => {
    setInventoryVisible(false);
    dispatch(closeContextMenu());
    dispatch(closeTooltip());
    // Reset categories when closing
    setSelectedLeftCategory(null);
    setSelectedRightCategory(null);
  });
  useExitListener(setInventoryVisible);

  useNuiEvent<{
    leftInventory?: InventoryProps;
    rightInventory?: InventoryProps;
  }>('setupInventory', (data) => {
    dispatch(setupInventory(data));
    !inventoryVisible && setInventoryVisible(true);
  });

  useNuiEvent('refreshSlots', (data) => dispatch(refreshSlots(data)));

  useNuiEvent('displayMetadata', (data: Array<{ metadata: string; value: string }>) => {
    dispatch(setAdditionalMetadata(data));
  });

  // Handle categories initialization
  useNuiEvent<{
    categories: { [key: string]: { label: string; icon: string; color: string } };
  }>('initCategories', ({ categories }) => {
    for (const name in categories) Categories[name] = categories[name];
  });

  return (
    <>
      <Fade in={inventoryVisible}>
        <div className="inventory-wrapper">
          <LeftInventory selectedCategory={selectedLeftCategory} />
          <InventoryControl 
            selectedLeftCategory={selectedLeftCategory}
            selectedRightCategory={selectedRightCategory}
            onLeftCategoryChange={setSelectedLeftCategory}
            onRightCategoryChange={setSelectedRightCategory}
          />
          <RightInventory selectedCategory={selectedRightCategory} />
          <Tooltip />
          <InventoryContext />
        </div>
      </Fade>
      <InventoryHotbar />
    </>
  );
};

export default Inventory;
