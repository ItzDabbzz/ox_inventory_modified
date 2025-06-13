import InventoryGrid from './InventoryGrid';
import { useAppSelector } from '../../store';
import { selectRightInventory } from '../../store/inventory';

interface RightInventoryProps {
  selectedCategory?: string | null;
}

const RightInventory: React.FC<RightInventoryProps> = ({ selectedCategory }) => {
  const rightInventory = useAppSelector(selectRightInventory);

  return <InventoryGrid inventory={rightInventory} selectedCategory={selectedCategory} />;
};

export default RightInventory;
