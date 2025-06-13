import InventoryGrid from './InventoryGrid';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';

interface LeftInventoryProps {
  selectedCategory?: string | null;
}

const LeftInventory: React.FC<LeftInventoryProps> = ({ selectedCategory }) => {
  const leftInventory = useAppSelector(selectLeftInventory);

  return <InventoryGrid inventory={leftInventory} selectedCategory={selectedCategory} />;
};

export default LeftInventory;
