import React, { useState } from 'react';
import { useDrop } from 'react-dnd';
import { useAppDispatch, useAppSelector } from '../../store';
import { selectItemAmount, setItemAmount, selectLeftInventory, selectRightInventory } from '../../store/inventory';
import { DragSource } from '../../typings';
import { onUse } from '../../dnd/onUse';
import { onGive } from '../../dnd/onGive';
import { fetchNui } from '../../utils/fetchNui';
import { Locale } from '../../store/locale';
import { Categories } from '../../store/categories';
import { Items } from '../../store/items';
import UsefulControls from './UsefulControls';
import { Plus, RotateCcw, Minus, Handshake, Info, Filter, ChevronDown, ChevronUp } from 'lucide-react';
import Tippy from '@tippyjs/react';
import 'tippy.js/dist/tippy.css';

interface CategoryControlsProps {
  selectedLeftCategory: string | null;
  selectedRightCategory: string | null;
  onLeftCategoryChange: (category: string | null) => void;
  onRightCategoryChange: (category: string | null) => void;
}

const InventoryControl: React.FC<CategoryControlsProps> = ({
  selectedLeftCategory,
  selectedRightCategory,
  onLeftCategoryChange,
  onRightCategoryChange
}) => {
  const itemAmount = useAppSelector(selectItemAmount);
  const leftInventory = useAppSelector(selectLeftInventory);
  const rightInventory = useAppSelector(selectRightInventory);
  const dispatch = useAppDispatch();

  const [infoVisible, setInfoVisible] = useState(false);
  const [categoryDropdownOpen, setCategoryDropdownOpen] = useState<'left' | 'right' | null>(null);

  const [, use] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    drop: (source) => {
      source.inventory === 'player' && onUse(source.item);
    },
  }));

  const [, give] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    drop: (source) => {
      source.inventory === 'player' && onGive(source.item);
    },
  }));

  const inputHandler = (event: React.ChangeEvent<HTMLInputElement>) => {
    const value = Math.max(0, Math.floor(event.target.valueAsNumber) || 0);
    dispatch(setItemAmount(value));
  };

  // Get available categories for each inventory
  const getAvailableCategories = (inventory: any) => {
    const categories = new Set<string>();
    inventory.items?.forEach((item: any) => {
      if (item?.name) {
        const itemData = Items[item.name];
        if (itemData?.category) {
          categories.add(itemData.category);
        }
      }
    });
    return Array.from(categories).sort();
  };

  const leftCategories = getAvailableCategories(leftInventory);
  const rightCategories = getAvailableCategories(rightInventory);

  const CategoryDropdown: React.FC<{
    categories: string[];
    selectedCategory: string | null;
    onCategoryChange: (category: string | null) => void;
    side: 'left' | 'right';
  }> = ({ categories, selectedCategory, onCategoryChange, side }) => {
    if (categories.length <= 1) return <div className="category-dropdown-placeholder" />;

    const isOpen = categoryDropdownOpen === side;
    const selectedCategoryData = selectedCategory ? Categories[selectedCategory] : null;

    return (
      <div className="category-dropdown">
        <button
          className={`category-dropdown-button ${selectedCategory ? 'active' : ''}`}
          onClick={() => setCategoryDropdownOpen(isOpen ? null : side)}
        >
          <div className="category-button-content">
            {selectedCategoryData ? (
              <>
                <i className={`fas fa-${selectedCategoryData.icon}`} style={{ color: selectedCategoryData.color }} />
                <span>{selectedCategoryData.label}</span>
              </>
            ) : (
              <>
                <Filter size={16} />
                <span>All Items</span>
              </>
            )}
          </div>
          <ChevronUp size={14} className={`chevron ${isOpen ? 'open' : ''}`} />
        </button>
        
        {isOpen && (
          <>
            <div className="category-dropdown-overlay" onClick={() => setCategoryDropdownOpen(null)} />
            <div className="category-dropdown-menu">
              <button
                className={`category-dropdown-item ${selectedCategory === null ? 'active' : ''}`}
                onClick={() => {
                  onCategoryChange(null);
                  setCategoryDropdownOpen(null);
                }}
              >
                <Filter size={16} />
                <span>All Items</span>
              </button>
              <div className="category-dropdown-divider" />
              {categories.map(categoryKey => {
                const category = Categories[categoryKey];
                if (!category) return null;
                
                return (
                  <button
                    key={categoryKey}
                    className={`category-dropdown-item ${selectedCategory === categoryKey ? 'active' : ''}`}
                    onClick={() => {
                      onCategoryChange(categoryKey);
                      setCategoryDropdownOpen(null);
                    }}
                  >
                    <i className={`fas fa-${category.icon}`} style={{ color: category.color }} />
                    <span>{category.label}</span>
                  </button>
                );
              })}
            </div>
          </>
        )}
      </div>
    );
  };

  return (
    <>
      <UsefulControls infoVisible={infoVisible} setInfoVisible={setInfoVisible} />
      
      {/* Category Filters */}
      <div className="inventory-category-controls">
        <CategoryDropdown
          categories={leftCategories}
          selectedCategory={selectedLeftCategory}
          onCategoryChange={onLeftCategoryChange}
          side="left"
        />
        <CategoryDropdown
          categories={rightCategories}
          selectedCategory={selectedRightCategory}
          onCategoryChange={onRightCategoryChange}
          side="right"
        />
      </div>

      <button className="inventory-control-button-use" ref={use}>
        {Locale.ui_use || 'Use'}
      </button>
      
      <div className="inventory-control">
        <div className="inventory-control-wrapper vertical">
          <div className="inventory-control-row">
            <Tippy content={Locale.ui_give || 'Give'} theme='loop-theme'>
              <button
                className="inventory-control-button-icon"
                ref={give}
              >
                <Handshake />
              </button>
            </Tippy>

            <button
              className="inventory-control-button-icon"
              onClick={() => dispatch(setItemAmount(Math.max(0, itemAmount - 1)))}
            >
              <Minus />
            </button>

            <input
              className="inventory-control-input"
              type="number"
              value={itemAmount}
              onChange={inputHandler}
              min={0}
            />

            <button className="inventory-control-button-icon" onClick={() => dispatch(setItemAmount(itemAmount + 1))}>
              <Plus />
            </button>

            <button className="inventory-control-button-icon" onClick={() => dispatch(setItemAmount(0))}>
              <RotateCcw />
            </button>
          </div>
        </div>
      </div>

      <button className="useful-controls-button" onClick={() => setInfoVisible(true)}>
        <Info />
      </button>
    </>
  );
};
export default InventoryControl;
