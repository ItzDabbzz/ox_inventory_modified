import React from 'react';
import { Categories } from '../../store/categories';
import { Items } from '../../store/items';

interface CategoryFilterProps {
  selectedCategory: string | null;
  onCategoryChange: (category: string | null) => void;
  inventoryItems: any[];
}

const CategoryFilter: React.FC<CategoryFilterProps> = ({
  selectedCategory,
  onCategoryChange,
  inventoryItems
}) => {
  // Get unique categories from current inventory items
  const availableCategories = React.useMemo(() => {
    const categories = new Set<string>();
    
    inventoryItems.forEach(item => {
      if (item?.name) {
        const itemData = Items[item.name];
        if (itemData?.category) {
          categories.add(itemData.category);
        }
      }
    });
    
    return Array.from(categories).sort();
  }, [inventoryItems]);

  if (availableCategories.length <= 1) return null;

  return (
    <div className="category-filter">
      <button
        className={`category-button ${selectedCategory === null ? 'active' : ''}`}
        onClick={() => onCategoryChange(null)}
      >
        All
      </button>
      {availableCategories.map(categoryKey => {
        const category = Categories[categoryKey];
        if (!category) return null;
        
        return (
          <button
            key={categoryKey}
            className={`category-button ${selectedCategory === categoryKey ? 'active' : ''}`}
            onClick={() => onCategoryChange(categoryKey)}
            style={{ '--category-color': category.color } as React.CSSProperties}
          >
            <i className={`fas fa-${category.icon}`} />
            {category.label}
          </button>
        );
      })}
    </div>
  );
};

export default CategoryFilter;